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
	], <liquid:nuclear_waste_fluid>*1000, [
		<blue_skies:moonstone_shard>*32,
		<goodnightsleep:necrum_ore>*16,
		<jaopca:dust.dimensional_shard>*8
	]),
	Recipe(2147483647, <extrautils2:teleporter:1>, [
		<liquid:liquidfusionfuel>*100,			<liquid:binnie.dna.raw>*1000,
		<liquid:vapor_of_levity>*1000,			<liquid:liquid_sunshine>*1000,
		<liquid:tamoltenauroriansteel>*1000,	<liquid:pigiron>*1000,
		<liquid:mirion>*1000,					<liquid:molten_reinforced_pink_slime>*1000
	], <liquid:nuclear_waste_fluid>*1000, [
		<blue_skies:everbright_pyrope_ore>*16,
		<blue_skies:everbright_turquoise_ore>*16,
		<blue_skies:everdawn_pyrope_ore>*16,
		<blue_skies:everdawn_turquoise_ore>*16
	]),
	Recipe(2147483647, <extrautils2:teleporter:1>, [
		<liquid:liquidfusionfuel>*100,			<liquid:binnie.dna.raw>*1000,
		<liquid:vapor_of_levity>*1000,			<liquid:liquid_sunshine>*1000,
		<liquid:superhot_magma>*1000,	<liquid:pigiron>*1000,
		<liquid:mirion>*1000,					<liquid:molten_reinforced_pink_slime>*1000
	], <liquid:nuclear_waste_fluid>*1000, [
		<blue_skies:falsite_ore>*8,
		<gaiadimension:precious_rock>*24,
		<gaiadimension:pink_sludge_block>*32
	])
] as Recipe[];

function run() {
	for recipe in recipes {
		recipe.make(map);
	}
	MBD.setRecipeMap(map,"limbonic_generator");
}