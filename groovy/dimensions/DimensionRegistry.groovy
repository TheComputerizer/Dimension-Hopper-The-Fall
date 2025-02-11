
import net.minecraft.world.DimensionType
import net.minecraft.world.WorldProvider
import net.minecraftforge.common.DimensionManager

import world.PlaygroundProvider

import java.util.ArrayList
import java.util.List

class DimensionRegistry {

    static final List<DimensionType> ALL_DIMENSION_TYPES = new ArrayList<>()
    static final DimensionType PLAYGROUND = makeDimensionType("playground",696969,PlaygroundProvider.class)

    @SuppressWarnings("SameParameterValue")
    static DimensionType makeDimensionType(String name, int id, Class<? extends WorldProvider> providerClass) {
        DimensionType type = DimensionType.register(name,"_"+name.toLowerCase(),id,providerClass,false)
        ALL_DIMENSION_TYPES.add(type)
        return type
    }

    static void register() {
        for(DimensionType type : ALL_DIMENSION_TYPES) DimensionManager.registerDimension(type.getId(),type)
    }
}