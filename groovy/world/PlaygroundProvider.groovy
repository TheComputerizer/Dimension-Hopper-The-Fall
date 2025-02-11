import net.minecraft.entity.player.EntityPlayer
import net.minecraft.util.math.BlockPos
import net.minecraft.world.DimensionType
import net.minecraft.world.WorldProvider
import net.minecraft.world.WorldProvider.WorldSleepResult
import net.minecraft.world.biome.Biome
import net.minecraft.world.biome.BiomeProvider
import net.minecraft.world.biome.BiomeProviderSingle
import net.minecraft.world.gen.IChunkGenerator

import render.ShaderManager
import render.SkyShaderRenderer
import biomes.BiomeRegistry
import dimensions.DimensionRegistry

import static net.minecraft.world.WorldProvider.WorldSleepResult.BED_EXPLODES

class PlaygroundProvider extends WorldProvider {

    private BiomeProvider biomes

    @Override
    DimensionType getDimensionType() {
        return DimensionRegistry.PLAYGROUND
    }

    @Override
    void init() {
        this.hasSkyLight = false
        this.biomes = new BiomeProviderSingle(BiomeRegistry.PLAYGROUND)
        initClient()
    }

    void initClient() {
        this.setSkyRenderer(new SkyShaderRenderer(pt -> ShaderManager.getInstance().skyShader.use(pt),
            pt -> ShaderManager.getInstance().skyShader.release()))
    }

    @Override
    float calculateCelestialAngle(long time, float partialTicks) {
        return 0.5f
    }

    @Override
    boolean isSurfaceWorld() {
        return false
    }

    @Override
    boolean isSkyColored() {
        return false
    }

    @Override
    double getVoidFogYFactor() {
        return 0.0001d
    }

    @Override
    BiomeProvider getBiomeProvider() {
        return this.biomes
    }

    @Override
    boolean hasSkyLight() {
        return false
    }

    @Override
    boolean shouldMapSpin(String entity, double x, double z, double rotation) {
        return true
    }

    @Override
    WorldSleepResult canSleepAt(EntityPlayer player, BlockPos pos) {
        return BED_EXPLODES
    }

    @Override
    Biome getBiomeForCoords(BlockPos pos) {
        return this.biomes.getBiome(pos)
    }

    @Override
    boolean isDaytime() {
        return false
    }

    @Override
    float getSunBrightnessFactor(float par1) {
        return 0f
    }

    @Override
    IChunkGenerator createChunkGenerator() {
        return new PlaygroundGenerator(this.world)
    }
}