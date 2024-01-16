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

val limbonicRP = RecipeMap("limbonic_generator_recipes") as RecipeMap;
RecipeMap.register(limbonicRP);

limbonicRP.start()
	.duration(1)
	.inputItems(<extrautils2:teleporter:1>)
	.inputFluids(<liquid:liquidfusionfuel>*100,<liquid:binnie.dna.raw>*1000,<liquid:vapor_of_levity>*1000,<liquid:liquid_sunshine>*1000,<liquid:cloud_seed_concentrated>*1000,<liquid:pigiron>*1000,<liquid:mirion>*1000,<liquid:molten_reinforced_pink_slime>*1000)
	.outputFluids(<liquid:nuclear_waste_fluid>*1000)
	.outputFE(2147483647)
	.dimension("limbo")
	.buildAndRegister();

var definition as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:limbonic_generator");
var limbonic_generator = definition as ControllerDefinition;
limbonic_generator.recipeMap = limbonicRP;