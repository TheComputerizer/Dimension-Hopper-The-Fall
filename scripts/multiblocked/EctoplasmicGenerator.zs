#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.EctoplasmicGenerator as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static map as RecipeMap = MBD.initRecipeMap("ectoplasmic_generator");

static recipes as Recipe[] = [
	Recipe(10000, <randomthings:ingredient:2>, <randomthings:runedust>),                                                      // 10000 FE/t power gen
	Recipe(50000000, [ <draconicevolution:chaos_shard> ], <liquid:liquiddna>*1000,                                               //Chaos shard duping
		[ <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard:3> ] ),                                                
	Recipe(50000000, [ <mysticalagradditions:stuff:69>, <extrautils2:simpledecorative:2>*4 ], <liquid:genetic_chaos_fluid>*500,     //Insanium duping
		[ <mysticalagradditions:storage:1>*4 ] ),                                                                                   
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(map);
	}
	MBD.setRecipeMap(map,"ectoplasmic_generator");
}