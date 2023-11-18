import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.aoa3.InfusionTable;
import mods.forestry.Carpenter;

//seeds
val seeds = [
	<mysticalagriculture:gold_seeds>,
	<mysticalagriculture:nickel_seeds>,
	<mysticalagriculture:mithril_seeds>,
	<mysticalagriculture:osmium_seeds>,
	<mysticalagriculture:elementium_seeds>,
	<mysticalagriculture:hop_graphite_seeds>,
	<mysticalagriculture:glowstone_ingot_seeds>,
	<mysticalagriculture:meteoric_iron_seeds>,
	<mysticalagriculture:invar_seeds>,
	<mysticalagriculture:electrum_seeds>,
	<mysticalagriculture:constantan_seeds>,
	<mysticalagriculture:signalum_seeds>,
	<mysticalagriculture:lumium_seeds>,
	<mysticalagriculture:pulsating_iron_seeds>,
	<mysticalagriculture:energetic_alloy_seeds>,
	<mysticalagriculture:steel_seeds>,
	<mysticalagriculture:dark_steel_seeds>,
	<mysticalagriculture:lapis_lazuli_seeds>,
	<mysticalagriculture:end_seeds>
] as IItemStack[];

//materials
val materials = [
	<minecraft:gold_block>,
	<thermalfoundation:storage:5>,
	<thermalfoundation:storage:8>,
	<mekanism:basicblock>,
	<botania:storage:2>,
	<immersiveengineering:graphite_electrode>,
	<mekanism:basicblock:4>,
	<galacticraftcore:basic_block_core:12>,
	<thermalfoundation:storage_alloy:2>,
	<thermalfoundation:storage_alloy:1>,
	<thermalfoundation:storage_alloy:4>,
	<thermalfoundation:storage_alloy:5>,
	<thermalfoundation:storage_alloy:6>,
	<enderio:block_alloy:5>,
	<enderio:block_alloy:1>,
	<thermalfoundation:storage_alloy>,
	<enderio:block_alloy:6>,
	<minecraft:lapis_block>,
	<mysticalagriculture:crafting:9>
] as IItemStack[];	

for i, seed in seeds {
	Carpenter.addRecipe(seed,
	[[<zollerngalaxy:edenrock>, materials[i]*4, <zollerngalaxy:edenrock>],
	[materials[i]*4, <mysticalagriculture:crafting:20>, materials[i]*4],
	[<zollerngalaxy:edenrock>, materials[i]*4, <zollerngalaxy:edenrock>]],
	60, <liquid:mana> * 10000);
}

//essences basic recipes
val essences = [
	<mysticalagriculture:gold_essence>,
	<mysticalagriculture:nickel_essence>,
	<mysticalagriculture:mithril_essence>,
	<mysticalagriculture:osmium_essence>,
	<mysticalagriculture:elementium_essence>,
	<mysticalagriculture:hop_graphite_essence>,
	<mysticalagriculture:glowstone_ingot_essence>,
	<mysticalagriculture:meteoric_iron_essence>,
	<mysticalagriculture:invar_essence>,
	<mysticalagriculture:electrum_essence>,
	<mysticalagriculture:constantan_essence>,
	<mysticalagriculture:signalum_essence>,
	<mysticalagriculture:lumium_essence>,
	<mysticalagriculture:pulsating_iron_essence>,
	<mysticalagriculture:energetic_alloy_essence>,
	<mysticalagriculture:steel_essence>,
	<mysticalagriculture:dark_steel_essence>,
	<mysticalagriculture:lapis_lazuli_essence>
] as IItemStack[];

//essence crafts basic recipes
val crafts = [
	<minecraft:gold_ingot>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:136>,
	<mekanism:ingot:1>,
	<botania:manaresource:7>,
	<immersiveengineering:material:19>,
	<mekanism:ingot:3>,
	<galacticraftcore:item_basic_moon>,
	<thermalfoundation:material:162>,
	<thermalfoundation:material:161>,
	<thermalfoundation:material:164>,
	<thermalfoundation:material:165>,
	<thermalfoundation:material:166>,
	<enderio:item_alloy_ingot:5>,
	<enderio:item_alloy_ingot:1>,
	<thermalfoundation:material:160>,
	<enderio:item_alloy_ingot:6>,
	<tp:lapis_ingot>
] as IItemStack[];

for i, essence in essences {
	recipes.addShaped(essence.name, crafts[i]*2, [
	[essence, essence, essence],
	[essence, null, essence],
	[essence, essence, essence]
	] as IIngredient[][]);
}

//end stone
recipes.addShaped("endstoneessence", <minecraft:end_stone>*4, [
	[<mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>],
	[<mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>]
	]);

//purpur
recipes.addShaped("purpuressence", <minecraft:purpur_block>*4, [
	[<mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>],
	[<mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>],
	[<mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>, <mysticalagriculture:end_essence>]
	]);