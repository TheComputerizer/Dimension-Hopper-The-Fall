#loader multiblocked

import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDClasses.LimbonicGenerator as Recipe;
import scripts.multiblocked.MBDHelper as MBD;

static map as RecipeMap = MBD.initRecipeMap("limbonic_generator");

static recipes as Recipe[] = [
	Recipe(2147483647, <extrautils2:teleporter:1>, [
		<liquid:liquidfusionfuel>*100,			<liquid:binnie.dna.raw>*1000,
		<liquid:vapor_of_levity>*1000,			<liquid:liquid_sunshine>*1000,
		<liquid:cloud_seed_concentrated>*1000,	<liquid:pigiron>*1000,
		<liquid:mirion>*1000,					<liquid:molten_reinforced_pink_slime>*1000
	], <liquid:nuclear_waste_fluid>*1000)
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(map);
	}
	MBD.setRecipeMap(map,"limbonic_generator");
}