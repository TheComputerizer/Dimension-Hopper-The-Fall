import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.aoa3.InfusionTable;
import mods.forestry.Carpenter;

//seeds
val seeds = [
	<mysticalagriculture:iron_seeds>,
	<mysticalagriculture:nether_quartz_seeds>,
	<mysticalagriculture:glowstone_seeds>,
	<mysticalagriculture:saltpeter_seeds>,
	<mysticalagriculture:tin_seeds>,
	<mysticalagriculture:bronze_seeds>,
	<mysticalagriculture:zinc_seeds>,
	<mysticalagriculture:silver_seeds>,
	<mysticalagriculture:lead_seeds>,
	<mysticalagriculture:graphite_seeds>,
	<mysticalagriculture:electrical_steel_seeds>,
	<mysticalagriculture:conductive_iron_seeds>,
	<mysticalagriculture:manasteel_seeds>,
	<mysticalagriculture:syrmorite_seeds>,
	<mysticalagriculture:octine_seeds>,
	<mysticalagriculture:black_quartz_seeds>,
	<mysticalagriculture:ender_biotite_seeds>,
	<mysticalagriculture:sky_stone_seeds>,
	<mysticalagriculture:certus_quartz_seeds>
] as IItemStack[];

//materials
val materials = [
	<minecraft:iron_block>,
	<minecraft:quartz_block:1>,
	<minecraft:glowstone>,
	<mist:saltpeter_block>,
	<thermalfoundation:storage:1>,
	<thermalfoundation:storage_alloy:3>,
	<extraplanets:neptune:7>,
	<thermalfoundation:storage:2>,
	<thermalfoundation:storage:3>,
	<bigreactors:blockgraphite>,
	<enderio:block_alloy>,
	<enderio:block_alloy:4>,
	<botania:storage>,
	<thebetweenlands:syrmorite_block>,
	<thebetweenlands:octine_block>,
	<actuallyadditions:block_misc:1>,
	<jaopca:block.ender_biotite>,
	<appliedenergistics2:sky_stone_block>,
	<appliedenergistics2:chiseled_quartz_block>
] as IItemStack[];	

for i, seed in seeds {
	Carpenter.addRecipe(seed,
	[[<aoa3:divine_enhancer>, materials[i]*3, <aoa3:divine_enhancer>],
	[materials[i]*3, <mysticalagriculture:crafting:19>, materials[i]*3],
	[<aoa3:divine_enhancer>, materials[i]*3, <aoa3:divine_enhancer>]],
	60, <liquid:mana> * 10000);
}

//essences basic recipes
val essences = [
	<mysticalagriculture:iron_essence>,
	<mysticalagriculture:tin_essence>,
	<mysticalagriculture:silver_essence>,
	<mysticalagriculture:lead_essence>,
	<mysticalagriculture:zinc_essence>,
	<mysticalagriculture:syrmorite_essence>,
	<mysticalagriculture:octine_essence>,
	<mysticalagriculture:manasteel_essence>,
	<mysticalagriculture:graphite_essence>,
	<mysticalagriculture:bronze_essence>,
	<mysticalagriculture:electrical_steel_essence>,
	<mysticalagriculture:conductive_iron_essence>,
	<mysticalagriculture:saltpeter_essence>,
	<mysticalagriculture:ender_biotite_essence>,
	<mysticalagriculture:nether_quartz_essence>,
	<mysticalagriculture:black_quartz_essence>,
	<mysticalagriculture:certus_quartz_essence>
] as IItemStack[];

//essence crafts basic recipes
val crafts = [
	<minecraft:iron_ingot>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<extraplanets:tier8_items:5>,
	<thebetweenlands:items_misc:11>,
	<thebetweenlands:octine_ingot>,
	<botania:manaresource>,
	<bigreactors:ingotgraphite>,
	<thermalfoundation:material:163>,
	<enderio:item_alloy_ingot>,
	<enderio:item_alloy_ingot:4>,
	<thermalfoundation:material:772>,
	<quark:biotite>,
	<minecraft:quartz>,
	<actuallyadditions:item_misc:5>,
	<appliedenergistics2:material>
] as IItemStack[];

for i, essence in essences {
	recipes.addShaped(essence.name, crafts[i]*3, [
	[essence, essence, essence],
	[essence, null, essence],
	[essence, essence, essence]
	] as IIngredient[][]);
}

//glowstone
recipes.addShaped("glowessence", <minecraft:glowstone_dust>*2, [
	[<mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>],
	[<mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>]
	]);

recipes.addShaped("glowblockessence", <minecraft:glowstone>, [
	[<mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>],
	[<mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>],
	[<mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>, <mysticalagriculture:glowstone_essence>]
	]);

//skystone
recipes.addShaped("skyessence", <appliedenergistics2:sky_stone_block>*4, [
	[<mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>],
	[<mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>],
	[<mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>, <mysticalagriculture:sky_stone_essence>]
	]);