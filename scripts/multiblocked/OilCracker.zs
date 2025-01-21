#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.OilCracker as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static maps as RecipeMap[] = MBD.initRecipeMaps("oil_cracker",3);

static recipes as Recipe[] = [
	Recipe(200,  1000, 100,  <thermalfoundation:material:833>, <minecraft:coal>),		//Coal       -> Oil
	Recipe(2000, 2000, 1000, <thermalfoundation:material:833>, <minecraft:coal_block>),	//Coal Block -> Oil
	Recipe(100,  500,  50,   <thermalfoundation:material:833>)							//Tar        -> Oil
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(maps);
	}
	MBD.setRecipeMaps(maps,"oil_cracker");
}