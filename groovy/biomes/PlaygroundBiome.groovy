
import net.minecraft.block.state.IBlockState
import net.minecraft.entity.EnumCreatureType
import net.minecraft.util.math.BlockPos
import net.minecraft.world.World
import net.minecraft.world.biome.Biome
import net.minecraft.world.biome.Biome.TempCategory
import net.minecraft.world.biome.BiomeDecorator
import net.minecraft.world.chunk.ChunkPrimer
import net.minecraft.world.gen.feature.WorldGenAbstractTree
import net.minecraft.world.gen.feature.WorldGenerator

import java.util.ArrayList
import java.util.List
import java.util.Random

import static net.minecraft.world.biome.Biome.TempCategory.COLD

class PlaygroundBiome extends Biome {

    PlaygroundBiome(String name) {
        super(new Biome.BiomeProperties(name).setRainDisabled().setWaterColor(2621537))
    }

    BiomeDecorator createBiomeDecorator() {
        return new BiomeDecorator() {
            void decorate(World world, Random r1, Biome biome, BlockPos pos) {}
            void genDecorations(Biome biome, World world, Random r2) {}
            void generateOres(World world, Random r3) {}
            void genStandardOre1(World world, Random r4, int blockCount, WorldGenerator generator, int minHeight, int maxHeight) {}
            void genStandardOre2(World world, Random r5, int blockCount, WorldGenerator generator, int centerHeight, int spread) {}
        }
    }

    WorldGenAbstractTree getRandomTreeFeature(Random r6) {
        return new WorldGenAbstractTree(false) {
            boolean generate(World world, Random r7, BlockPos pos) {
                return true
            }
            void setDirtAt(World world, BlockPos pos) {}
        }
    }

    WorldGenerator getRandomWorldGenForGrass(Random r8) {
        return new WorldGenerator() {
            boolean generate(World world, Random r9, BlockPos pos) {
                return true
            }
        }
    }

    int getSkyColorByTemp(float currentTemperature) {
        return 0
    }

    List<SpawnListEntry> getSpawnableList(EnumCreatureType creatureType) {
        return new ArrayList<>()
    }

    void decorate(World world, Random r10, BlockPos pos) {}

    void genTerrainBlocks(World world, Random r11, ChunkPrimer primer, int x, int z, double noiseVal) {}

    Class<? extends PlaygroundBiome> getBiomeClass() {
        return this.getClass()
    }

    TempCategory getTempCategory() {
        return COLD
    }

    void addFlower(IBlockState state, int weight) {}

    void plantFlower(World world, Random r12, BlockPos pos) {}

    void addDefaultFlowers() {}
}