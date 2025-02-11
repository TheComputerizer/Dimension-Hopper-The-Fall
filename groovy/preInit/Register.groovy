import net.minecraft.world.biome.Biome
import net.minecraftforge.event.RegistryEvent

import biomes.BiomeRegistry
import dimensions.DimensionRegistry

event_manager.listen { RegistryEvent event ->
    def registry = event.getRegistry()
    if(registry.getRegistrySuperType()==Biome) {
        registry.registerAll(BiomeRegistry.getBiomes())
        BiomeRegistry.initBiomeInfo()
    }
}

DimensionRegistry.register()