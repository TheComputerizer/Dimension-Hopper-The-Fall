#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.Psionic as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static maps as RecipeMap[] = MBD.initRecipeMaps("psionic_generator",3);

static recipes as Recipe[] = [
	Recipe(250,  <psi:material>,   <minecraft:redstone>),                         //Psidust
	Recipe(500,  <psi:material:1>, <calculator:enrichedgoldingot>),               //Psimetal Ingot
	Recipe(500,  <psi:material:5>, <thermalfoundation:material:768>),             //Ebony Substance
	Recipe(500,  <psi:material:6>, <appliedenergistics2:material:3>),             //ivory Substance
	Recipe(1000, <psi:material:2>, <actuallyadditions:item_crystal_empowered:2>)  //Psigem
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(maps);
	}
	MBD.setRecipeMaps(maps,"psionic_generator");
}