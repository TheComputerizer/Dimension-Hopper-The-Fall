#reloadable

import crafttweaker.item.IItemStack;
import mods.forestry.Carpenter;

//seeds
val seeds = [
	<mysticalagriculture:fire_seeds>,
	<mysticalagriculture:dye_seeds>,
	<mysticalagriculture:nether_seeds>,
	<mysticalagriculture:coal_seeds>,
	<mysticalagriculture:silicon_seeds>,
	<mysticalagriculture:sulfur_seeds>,
	<mysticalagriculture:aluminum_seeds>,
	<mysticalagriculture:copper_seeds>,
	<mysticalagriculture:aluminum_brass_seeds>,
	<mysticalagriculture:grains_of_infinity_seeds>,
	<mysticalagriculture:mystical_flower_seeds>,
	<mysticalagriculture:marble_seeds>,
	<mysticalagriculture:limestone_seeds>,
	<mysticalagriculture:basalt_seeds>,
	<mysticalagriculture:slimy_bone_seeds>,
	<mysticalagriculture:menril_seeds>,
	<mysticalagriculture:slime_seeds>
] as IItemStack[];

//materials
val materials = [
	<chisel:lavastone>,
	<mysticalagriculture:crafting:7>,
	<mysticalagriculture:crafting:8>,
	<minecraft:coal_block>,
	<galacticraftcore:basic_block_core:13>,
	<thebetweenlands:sulfur_block>,
	<thermalfoundation:storage:4>,
	<thermalfoundation:storage>,
	<tconstruct:metal:5>,
	<enderio:block_infinity:1>,
	<mysticalagriculture:crafting:10>,
	<quark:marble:1>,
	<quark:limestone:1>,
	<quark:basalt:1>,
	<thebetweenlands:slimy_bone_block>,
	<integrateddynamics:crystalized_menril_block>,
	<minecraft:slime>
] as IItemStack[];	

for i, seed in seeds {
	Carpenter.addRecipe(seed, [
		[<environmentaltech:lonsdaleite>, materials[i]*2, <environmentaltech:lonsdaleite>],
		[materials[i]*2, <mysticalagriculture:crafting:18>, materials[i]*2],
		[<environmentaltech:lonsdaleite>, materials[i]*2, <environmentaltech:lonsdaleite>]], 60, <liquid:mana> * 10000);
}

//essences basic recipes
val essences = [
	<mysticalagriculture:coal_essence>,
	<mysticalagriculture:slime_essence>,
	<mysticalagriculture:silicon_essence>,
	<mysticalagriculture:sulfur_essence>,
	<mysticalagriculture:copper_essence>,
	<mysticalagriculture:menril_essence>,
	<mysticalagriculture:basalt_essence>,
	<mysticalagriculture:slimy_bone_essence>,
	<mysticalagriculture:limestone_essence>,
	<mysticalagriculture:aluminum_essence>,
	<mysticalagriculture:aluminum_brass_essence>,
	<mysticalagriculture:grains_of_infinity_essence>,
	<mysticalagriculture:marble_essence>
] as IItemStack[];

//essence crafts basic recipes
val crafts = [
	<minecraft:coal>,
	<minecraft:slime_ball>,
	<appliedenergistics2:material:5>,
	<thermalfoundation:material:771>,
	<thermalfoundation:material:128>,
	<integrateddynamics:crystalized_menril_chunk>,
	<quark:basalt:1>,
	<thebetweenlands:items_misc:14>,
	<quark:limestone:1>,
	<thermalfoundation:material:132>,
	<tconstruct:ingots:5>,
	<enderio:item_material:20>,
	<quark:marble:1>
] as IItemStack[];

for i, essence in essences {
	recipes.addShaped(essence.name, crafts[i]*4, [
	[essence, essence, essence],
	[essence, null, essence],
	[essence, essence, essence]
	] as IIngredient[][]);
}

//lava bucket
recipes.addShaped("fireessence1", <minecraft:lava_bucket>, [
[null, null, null],
[<mysticalagriculture:iron_essence>, <mysticalagriculture:fire_essence>, <mysticalagriculture:iron_essence>],
[null, <mysticalagriculture:iron_essence>, null]
]);

//nether essence crafts

//netherrack
recipes.addShaped("netheressence1", <minecraft:netherrack>*4, [
[<mysticalagriculture:nether_essence>]
]);
//1x compressed netherrack
recipes.addShaped("netheressence2", <overloaded:compressed_netherrack>*2, [
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>]
]);
//2x compressed netherrack
recipes.addShaped("netheressence3", <overloaded:compressed_netherrack:1>, [
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>]
]);
//soul sand
recipes.addShaped("netheressence4", <minecraft:soul_sand>*4, [
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, null, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>]
]);

//dye & mystical flower crafts
val dd = [
	<industrialforegoing:artificial_dye>,
	<industrialforegoing:artificial_dye:1>,
	<industrialforegoing:artificial_dye:2>,
	<industrialforegoing:artificial_dye:3>,
	<industrialforegoing:artificial_dye:4>,
	<industrialforegoing:artificial_dye:5>,
	<industrialforegoing:artificial_dye:6>,
	<industrialforegoing:artificial_dye:7>,
	<industrialforegoing:artificial_dye:8>,
	<industrialforegoing:artificial_dye:9>,
	<industrialforegoing:artificial_dye:10>,
	<industrialforegoing:artificial_dye:11>,
	<industrialforegoing:artificial_dye:12>,
	<industrialforegoing:artificial_dye:13>,
	<industrialforegoing:artificial_dye:14>,
	<industrialforegoing:artificial_dye:15>
] as IItemStack[];

val ff = [
	<botania:flower>,
	<botania:flower:1>,
	<botania:flower:2>,
	<botania:flower:3>,
	<botania:flower:4>,
	<botania:flower:5>,
	<botania:flower:6>,
	<botania:flower:7>,
	<botania:flower:8>,
	<botania:flower:9>,
	<botania:flower:10>,
	<botania:flower:11>,
	<botania:flower:12>,
	<botania:flower:13>,
	<botania:flower:14>,
	<botania:flower:15>
] as IItemStack[];

val d = <mysticalagriculture:dye_essence>;
val f = <mysticalagriculture:mystical_flower_essence>;
var x = d;
var xx = dd;
recipes.addShaped("d0", xx[0], 
[[x, null, null],
[x, null, null],
[x, null, null]]);
recipes.addShaped("d1", xx[1], 
[[null, x, null],
[null, x, null],
[null, x, null]]);
recipes.addShaped("d2", xx[2], 
[[null, null, x],
[null, null, x],
[null, null, x]]);
recipes.addShaped("d3", xx[3], 
[[x, x, x],
[null, null, null],
[null, null, null]]);
recipes.addShaped("d4", xx[4], 
[[null, null, null],
[x, x, x],
[null, null, null]]);
recipes.addShaped("d5", xx[5], 
[[null, null, null],
[null, null, null],
[x, x, x]]);
recipes.addShaped("d6", xx[6], 
[[null, null, x],
[null, x, null],
[x, null, null]]);
recipes.addShaped("d7", xx[7], 
[[x, null, null],
[null, x, null],
[null, null, x]]);
recipes.addShaped("d8", xx[8], 
[[x, x, null],
[x, null, null],
[null, null, null]]);
recipes.addShaped("d9", xx[9], 
[[null, x, x],
[null, null, x],
[null, null, null]]);
recipes.addShaped("d10", xx[10], 
[[null, null, null],
[null, null, x],
[null, x, x]]);
recipes.addShaped("d11", xx[11], 
[[null, null, null],
[x, null, null],
[x, x, null]]);
recipes.addShaped("d12", xx[12], 
[[null, x, null],
[x, x, null],
[null, null, null]]);
recipes.addShaped("d13", xx[13], 
[[null, x, null],
[null, x, x],
[null, null, null]]);
recipes.addShaped("d14", xx[14], 
[[null, null, null],
[null, x, x],
[null, x, null]]);
recipes.addShaped("d15", xx[15], 
[[null, null, null],
[x, x, null],
[null, x, null]]);
x = f;
xx = ff;
recipes.addShaped("f0", xx[0], 
[[x, null, null],
[x, null, null],
[x, null, null]]);
recipes.addShaped("f1", xx[1], 
[[null, x, null],
[null, x, null],
[null, x, null]]);
recipes.addShaped("f2", xx[2], 
[[null, null, x],
[null, null, x],
[null, null, x]]);
recipes.addShaped("f3", xx[3], 
[[x, x, x],
[null, null, null],
[null, null, null]]);
recipes.addShaped("f4", xx[4], 
[[null, null, null],
[x, x, x],
[null, null, null]]);
recipes.addShaped("f5", xx[5], 
[[null, null, null],
[null, null, null],
[x, x, x]]);
recipes.addShaped("f6", xx[6], 
[[null, null, x],
[null, x, null],
[x, null, null]]);
recipes.addShaped("f7", xx[7], 
[[x, null, null],
[null, x, null],
[null, null, x]]);
recipes.addShaped("f8", xx[8], 
[[x, x, null],
[x, null, null],
[null, null, null]]);
recipes.addShaped("f9", xx[9], 
[[null, x, x],
[null, null, x],
[null, null, null]]);
recipes.addShaped("f10", xx[10], 
[[null, null, null],
[null, null, x],
[null, x, x]]);
recipes.addShaped("f11", xx[11], 
[[null, null, null],
[x, null, null],
[x, x, null]]);
recipes.addShaped("f12", xx[12], 
[[null, x, null],
[x, x, null],
[null, null, null]]);
recipes.addShaped("f13", xx[13], 
[[null, x, null],
[null, x, x],
[null, null, null]]);
recipes.addShaped("f14", xx[14], 
[[null, null, null],
[null, x, x],
[null, x, null]]);
recipes.addShaped("f15", xx[15], 
[[null, null, null],
[x, x, null],
[null, x, null]]);