#loader multiblocked

#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.RecipeMap;

function buildName(prefix as string, stack as IItemStack, suffix as string) {
    return prefix+stack.definition.id+suffix;
}

function initRecipeMap(name as string) as RecipeMap {
    val actualName as string = name+"_recipes";
    print("Initializing recipe map '"+actualName+"'");
    val map = RecipeMap(actualName) as RecipeMap;
    RecipeMap.register(map);
    return map;
}

function lightningInfusion(map as RecipeMap, duration as int, power as int, inputs as IIngredient[], output as IItemStack) {
    wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
        return builder.duration(duration).inputLE(power).inputItems(inputs).outputItems(output);
    });
}

function perTickFE(builder as RecipeBuilder, power as int) as RecipeBuilder {
    return builder.perTick(true).inputFE(power).perTick(false);
}

function setRecipeMap(map as RecipeMap, name as string, namespace as string = "dimensionhopper") {
    val mapID as string = namespace+":"+name;
    print("Finalizing recipe map '"+mapID+"'");
    val mapExists as bool = !isNull(map);
    print("Map exisits? "+mapExists);
    if(mapExists) {
        val def = MBDRegistry.getDefinition(mapID) as ControllerDefinition;
        val defExists as bool = !isNull(def);
        print("Controller definition exisits? "+defExists);
        if(defExists) {
            def.recipeMap = map;
        } else {
            print("Cannot set recipe map of controller that does not exist!");
        }
    } else {
        print("Cannot set recipe map to null value!");
    }
}

function singularity(map as RecipeMap, suffix as string, duration as int, power as int, inputs as IIngredient[], fluid as ILiquidStack, output as IItemStack) {
    wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
        val name = buildName("singularity",output,suffix);
        return perTickFE(builder.name(name).duration(duration),power).inputItems(inputs).inputFluids(fluid).outputItems(output);
    });
}

function wrap(map as RecipeMap, consumer as function(RecipeBuilder)RecipeBuilder) {
    consumer(map.start()).buildAndRegister();
}