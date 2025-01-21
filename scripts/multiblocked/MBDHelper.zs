#loader multiblocked

#priority 1000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.RecipeMap;

function buildName(prefix as string, stack as IItemStack, suffix as string = "") {
    var name = prefix+"."+stack.definition.id;
    if(suffix=="") {
        return name+"."+(stack.metadata);
    }
    return name+"."+suffix;
}
function initRecipeMap(name as string) as RecipeMap {
    val actualName as string = name+"_recipes";
    print("Initializing recipe map '"+actualName+"'");
    val map = RecipeMap(actualName) as RecipeMap;
    RecipeMap.register(map);
    return map;
}

function initRecipeMaps(name as string, count as int) as RecipeMap[] {
    var maps as RecipeMap[] = [] as RecipeMap[];
    for i in 1 .. (count+1) {
        maps+=initRecipeMap(name+"_mk_"+i);
    }
    return maps;
}

function lightningInfusion(map as RecipeMap, duration as int, power as int, inputs as IIngredient[], output as IItemStack) {
    wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
        return builder.duration(duration).inputLE(power).inputItems(inputs).outputItems(output);
    });
}

function perTickFE(builder as RecipeBuilder, power as int, input as bool = true) as RecipeBuilder {
    return (input ? builder.perTick(true).inputFE(power) : builder.perTick(true).outputFE(power)).perTick(false);
}

function perTickLE(builder as RecipeBuilder, power as int, input as bool = true) as RecipeBuilder {
    return (input ? builder.perTick(true).inputLE(power) : builder.perTick(true).outputLE(power)).perTick(false);
}

function setRecipeMap(map as RecipeMap, name as string) {
    val mapID as string = "dimensionhopper:"+name;
    print("Finalizing recipe map '"+mapID+"'");
    (MBDRegistry.getDefinition(mapID) as ControllerDefinition).recipeMap = map;
}

function setRecipeMaps(maps as RecipeMap[], name as string) {
    for i, map in maps {
        setRecipeMap(map,name+"_mk_"+(i+1));
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