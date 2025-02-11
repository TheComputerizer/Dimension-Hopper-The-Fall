import net.minecraft.world.WorldType

import java.util.ArrayList
import java.util.List
import java.util.function.Function

import dimensions.PlaygroundType

class WorldRegistry {

    static final List<WorldType> ALL_WORLD_TYPES = new ArrayList<>()
    static final WorldType PLAYGROUND = makeWorldType("playground_world",name -> new PlaygroundType(name))

    @SuppressWarnings("SameParameterValue")
    static <W extends WorldType> W makeWorldType(String name, Function<String,W> constructor) {
        W type = constructor.apply(name)
        ALL_WORLD_TYPES.add(type)
        return type
    }
}