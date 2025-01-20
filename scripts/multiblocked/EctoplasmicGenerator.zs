#loader multiblocked

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.text.ITextComponent;

val ectoplasmicRP = RecipeMap("ectoplasmic_generator_recipes") as RecipeMap;
RecipeMap.register(ectoplasmicRP);

ectoplasmicRP.start()
	.duration(20)
	.perTick(true)
	.outputFE(10000)
	.perTick(false)
	.inputItems(<randomthings:ingredient:2>)
	.outputItems(<randomthings:runedust>)
	.buildAndRegister();

ectoplasmicRP.start()
	.duration(2)
	.perTick(true)
	.inputFE(50000000)
	.perTick(false)
	.inputItems(<draconicevolution:chaos_shard>)
	.inputFluids(<liquid:liquiddna>*1000)
	.outputItems(<draconicevolution:chaos_shard>, <draconicevolution:chaos_shard:3>)
	.buildAndRegister();

ectoplasmicRP.start()
	.duration(2)
	.perTick(true)
	.inputFE(50000000)
	.perTick(false)
	.inputItems(<mysticalagradditions:stuff:69>, <extrautils2:simpledecorative:2>*4)
	.inputFluids(<liquid:genetic_chaos_fluid>*500)
	.outputItems(<mysticalagradditions:storage:1>*4)
	.buildAndRegister();


var definition as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:ectoplasmic_generator");
var ectoplasmic = definition as ControllerDefinition;
ectoplasmic.recipeMap = ectoplasmicRP;