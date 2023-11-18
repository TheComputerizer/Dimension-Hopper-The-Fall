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

val psionicRPF = RecipeMap("psionic_generator_mk_1_recipes") as RecipeMap;
RecipeMap.register(psionicRPF);

val psionicRPS = RecipeMap("psionic_generator_mk_2_recipes") as RecipeMap;
RecipeMap.register(psionicRPS);

val psionicRPT = RecipeMap("psionic_generator_mk_3_recipes") as RecipeMap;
RecipeMap.register(psionicRPT);


psionicRPF.start()
	.duration(10)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<minecraft:redstone>)
	.inputFluids(<liquid:mana>*250)
	.outputItems(<psi:material>)
	.buildAndRegister();

psionicRPF.start()
	.duration(10)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<calculator:enrichedgoldingot>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:1>)
	.buildAndRegister();

psionicRPF.start()
	.duration(10)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<actuallyadditions:item_crystal_empowered:2>)
	.inputFluids(<liquid:mana>*1000)
	.outputItems(<psi:material:2>)
	.buildAndRegister();

psionicRPF.start()
	.duration(10)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<thermalfoundation:material:768>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:5>)
	.buildAndRegister();

psionicRPF.start()
	.duration(10)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
	.inputItems(<appliedenergistics2:material:3>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:6>)
	.buildAndRegister();

psionicRPS.start()
	.duration(5)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<minecraft:redstone>)
	.inputFluids(<liquid:mana>*250)
	.outputItems(<psi:material>)
	.buildAndRegister();

psionicRPS.start()
	.duration(5)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<calculator:enrichedgoldingot>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:1>)
	.buildAndRegister();

psionicRPS.start()
	.duration(5)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<actuallyadditions:item_crystal_empowered:2>)
	.inputFluids(<liquid:mana>*1000)
	.outputItems(<psi:material:2>)
	.buildAndRegister();

psionicRPS.start()
	.duration(5)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<thermalfoundation:material:768>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:5>)
	.buildAndRegister();

psionicRPS.start()
	.duration(5)
	.perTick(true)
	.inputFE(20000)
	.perTick(false)
	.inputItems(<appliedenergistics2:material:3>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:6>)
	.buildAndRegister();

psionicRPT.start()
	.duration(1)
	.inputFE(1000000)
	.inputItems(<minecraft:redstone>)
	.inputFluids(<liquid:mana>*250)
	.outputItems(<psi:material>)
	.buildAndRegister();

psionicRPT.start()
	.duration(1)
	.inputFE(1000000)
	.inputItems(<calculator:enrichedgoldingot>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:1>)
	.buildAndRegister();

psionicRPT.start()
	.duration(1)
	.inputFE(1000000)
	.inputItems(<actuallyadditions:item_crystal_empowered:2>)
	.inputFluids(<liquid:mana>*1000)
	.outputItems(<psi:material:2>)
	.buildAndRegister();

psionicRPT.start()
	.duration(1)
	.inputFE(1000000)
	.inputItems(<thermalfoundation:material:768>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:5>)
	.buildAndRegister();

psionicRPT.start()
	.duration(1)
	.inputFE(1000000)
	.inputItems(<appliedenergistics2:material:3>)
	.inputFluids(<liquid:mana>*500)
	.outputItems(<psi:material:6>)
	.buildAndRegister();


var definitionF as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:psionic_generator_mk_1");
var psionic_one = definitionF as ControllerDefinition;
psionic_one.recipeMap = psionicRPF;

var definitionS as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:psionic_generator_mk_2");
var psionic_two = definitionS as ControllerDefinition;
psionic_two.recipeMap = psionicRPS;

var definitionT as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:psionic_generator_mk_3");
var psionic_three = definitionT as ControllerDefinition;
psionic_three.recipeMap = psionicRPT;