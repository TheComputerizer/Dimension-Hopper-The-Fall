
import net.minecraft.block.state.IBlockState
import net.minecraft.entity.EnumCreatureType
import net.minecraft.util.math.BlockPos
import net.minecraft.world.World
import net.minecraft.world.biome.Biome
import net.minecraft.world.biome.Biome.SpawnListEntry
import net.minecraft.world.chunk.Chunk
import net.minecraft.world.chunk.ChunkPrimer
import net.minecraft.world.gen.IChunkGenerator

import java.util.List
import java.util.Random

import static net.minecraft.init.Blocks.BEDROCK
import static net.minecraft.init.Blocks.STONE

class PlaygroundGenerator implements IChunkGenerator {
    
    static final int HEIGHT = 64
    static final IBlockState FILLER_STATE = STONE.getDefaultState()
    static final IBlockState BOTTOM_STATE = BEDROCK.getDefaultState()
    final World world
    final Random r

    PlaygroundGenerator(World world) {
        this.world = world
        this.r = new Random()
    }

    @Override
    Chunk generateChunk(int x, int z) {
        //this.r.setSeed(this.world.getSeed()+(long)x*341873128712L+(long)z*132897987541L)
        //ChunkPrimer primer = new ChunkPrimer()
        //(0..<16).each { cx ->
        //    (0..<HEIGHT).each { cy ->
        //        (0..<16).each { cz ->
        //            IBlockState state = cy==0 ? BOTTOM_STATE : FILLER_STATE
        //            primer.setBlockState(cx,cy,cz,state)
        //        }
        //    }
        //}
        return new Chunk(this.world,new ChunkPrimer(),x,z)
    }

    @Override
    void populate(int x, int z) {}

    @Override
    boolean generateStructures(Chunk chunk, int x, int z) {
        return false
    }

    @Override
    List<SpawnListEntry> getPossibleCreatures(EnumCreatureType type, BlockPos pos) {
        Biome biome = this.world.getBiome(pos)
        return biome.getSpawnableList(type)
    }

    @Override
    BlockPos getNearestStructurePos(World world, String structureName, BlockPos pos, boolean findUnexplored) {
        return null
    }

    @Override
    void recreateStructures(Chunk chunk, int x, int z) {}

    @Override
    boolean isInsideStructure(World world, String structureName, BlockPos pos) {
        return false
    }
}