#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.LightningReactor as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static map as RecipeMap = MBD.initRecipeMap("lightning_reactor_mk_1"); //TODO Higher tiers?

static recipes as Recipe[] = [
	Recipe("dimensionInterDimensional", 10, 150, 10000, <calculator:electricdiamond>, <liquid:electricium>*16, 100, 1000) //Probably needs testing
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make([map]);
	}
	MBD.setRecipeMap(map,"lightning_reactor_mk_1");
}