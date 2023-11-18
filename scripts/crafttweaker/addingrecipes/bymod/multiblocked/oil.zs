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

val oilRPF = RecipeMap("oil_cracker_mk_1_recipes") as RecipeMap;
RecipeMap.register(oilRPF);

val oilRPS = RecipeMap("oil_cracker_mk_2_recipes") as RecipeMap;
RecipeMap.register(oilRPS);

val oilRPT = RecipeMap("oil_cracker_mk_3_recipes") as RecipeMap;
RecipeMap.register(oilRPT);


oilRPF.start()
	.duration(200)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<minecraft:coal>)
	.outputFluids(<liquid:oil>*100)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPF.start()
	.duration(2000)
	.perTick(true)
	.inputFE(2000)
	.perTick(false)
	.inputItems(<minecraft:coal_block>)
	.outputFluids(<liquid:oil>*1000)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPF.start()
	.duration(100)
	.perTick(true)
	.inputFE(500)
	.perTick(false)
	.inputItems(<thermalfoundation:material:833>)
	.outputFluids(<liquid:oil>*50)
	.buildAndRegister();

oilRPS.start()
	.duration(100)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<minecraft:coal>)
	.outputFluids(<liquid:oil>*100)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPS.start()
	.duration(1000)
	.perTick(true)
	.inputFE(40000)
	.perTick(false)
	.inputItems(<minecraft:coal_block>)
	.outputFluids(<liquid:oil>*1000)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPS.start()
	.duration(50)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
	.inputItems(<thermalfoundation:material:833>)
	.outputFluids(<liquid:oil>*50)
	.buildAndRegister();

oilRPT.start()
	.duration(20)
	.perTick(true)
	.inputFE(1000000)
	.perTick(false)
	.inputItems(<minecraft:coal>)
	.outputFluids(<liquid:oil>*100)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPT.start()
	.duration(200)
	.perTick(true)
	.inputFE(2000000)
	.perTick(false)
	.inputItems(<minecraft:coal_block>)
	.outputFluids(<liquid:oil>*1000)
	.outputItems(<thermalfoundation:material:833>)
	.buildAndRegister();

oilRPT.start()
	.duration(10)
	.perTick(true)
	.inputFE(500000)
	.perTick(false)
	.inputItems(<thermalfoundation:material:833>)
	.outputFluids(<liquid:oil>*50)
	.buildAndRegister();


var definitionF as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:oil_cracker_mk_1");
var oil_one = definitionF as ControllerDefinition;
oil_one.recipeMap = oilRPF;

var definitionS as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:oil_cracker_mk_2");
var oil_two = definitionS as ControllerDefinition;
oil_two.recipeMap = oilRPS;

var definitionT as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:oil_cracker_mk_3");
var oil_three = definitionT as ControllerDefinition;
oil_three.recipeMap = oilRPT;