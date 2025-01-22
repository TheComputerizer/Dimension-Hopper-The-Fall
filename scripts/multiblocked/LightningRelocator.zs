#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.LightningRelocator as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static maps as RecipeMap[] = MBD.initRecipeMaps("lightning_relocator",4);

static recipes as Recipe[] = [
	Recipe(20,0.55)
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(maps);
	}
	MBD.setRecipeMaps(maps,"lightning_relocator");
}