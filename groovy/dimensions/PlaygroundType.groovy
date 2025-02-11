
import net.minecraft.world.World
import net.minecraft.world.WorldType
import net.minecraft.world.biome.BiomeProvider
import net.minecraft.world.biome.BiomeProviderSingle
import net.minecraft.world.gen.IChunkGenerator

import world.PlaygroundGenerator

import static biomes.BiomeRegistry.PLAYGROUND

class PlaygroundType extends WorldType {

    final BiomeProvider biomes

    PlaygroundType(String name) {
        super(name)
        this.biomes = new BiomeProviderSingle(PLAYGROUND)
    }

    @Override
    BiomeProvider getBiomeProvider(World world) {
        return this.biomes
    }

    @Override
    boolean canBeCreated() {
        return false
    }

    @Override
    IChunkGenerator getChunkGenerator(World world, String generatorOptions) {
        return new PlaygroundGenerator(world)
    }

    @Override
    float getCloudHeight() {
        return 1f
    }
}