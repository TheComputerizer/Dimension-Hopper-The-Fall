import crafttweaker.item.IIngredient;
import scripts.crafttweaker.staging.init as Stages;

static itemStages as IIngredient[][string] = {
	"overworld": [
		<minecraft:brewing_stand>,
		<minecraft:gold_ingot>
	],
	"cavern": [
		<avaritia:compressed_crafting_table>,
		<avaritia:double_compressed_crafting_table>,
		<zollerngalaxy:diamonddust>,
		<minecraft:diamond>,
		<minecraft:emerald>
	],
	"swamp": [
		<galacticraftplanets:item_basic_asteroids:7>,
		<galacticraftplanets:thermal_padding>,
		<galacticraftplanets:thermal_padding:1>,
		<galacticraftplanets:thermal_padding:2>,
		<galacticraftplanets:thermal_padding:3>,
		<extraplanets:tier1_un_prepared_space_suit_helmet>,
		<extraplanets:tier1_un_prepared_space_suit_chest>,
		<extraplanets:tier1_un_prepared_space_suit_legings>,
		<extraplanets:tier1_un_prepared_space_suit_boots>,
		<extraplanets:tier1_space_suit_helmet:100>,
		<extraplanets:tier1_space_suit_chest:100>,
		<extraplanets:tier1_space_suit_jetpack_chest:100>,
		<extraplanets:tier1_space_suit_legings:100>,
		<extraplanets:tier1_space_suit_boots:100>,
		<extraplanets:tier1_space_suit_gravity_boots:100>,
		<extraplanets:tier1_pressure_layer>,
		<extraplanets:tier1_armor_layer>,
		<extraplanets:tier1_space_suit_helmet:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:tier1_space_suit_chest:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:tier1_space_suit_jetpack_chest:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:tier1_space_suit_legings:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:tier1_space_suit_boots:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:tier1_space_suit_gravity_boots:100>.withTag({electricity: 50000.0 as float}),
		<extraplanets:thermal_cloth>,
		<extraplanets:tier3_thermal_padding>,
		<extraplanets:tier3_thermal_padding:1>,
		<extraplanets:tier3_thermal_padding:2>,
		<extraplanets:tier3_thermal_padding:3>,
		<extraplanets:cloth>,
		<extraplanets:tier1_radiation_layer>
	],
	"advent": [
		<moreplanets:space_warper_core>
	],
	"finalfrontier": [
		<zollerngalaxy:radium>
	],
	"bedrockfinal": [
		<minecraft:bedrock>
	],
	"disabled": [
		<minecraft:anvil>,
		<minecraft:anvil:1>,
		<minecraft:anvil:2>,
		<minecraft:furnace>,
		<minecraft:enchanting_table>,
		<twilightforest:uncrafting_table>,
		<extrautils2:chickenring:1>,
		<xreliquary:twilight_cloak>,
		<enderio:item_dark_steel_sword>,
		<enderio:item_end_steel_sword>,
		<minecraft:diamond_chestplate>
	],
	"hardcore": [
		<lockyzextradimensionsmod:interdimensionalsword>,
		<twilightforest:knightmetal_pickaxe>
	],
	"oilone": [
		<contenttweaker:oil_core_one>
	],
	"oiltwo": [
		<contenttweaker:oil_core_two>
	],
	"oilthree": [
		<contenttweaker:oil_core_three>
	],
	"factoryone": [
		<contenttweaker:factory_core_one>
	],
	"factorytwo": [
		<contenttweaker:factory_core_two>
	],
	"factorythree": [
		<contenttweaker:factory_core_three>
	],
	"psionicone": [
		<contenttweaker:psionic_core_one>
	],
	"psionictwo": [
		<contenttweaker:psionic_core_two>
	],
	"psionicthree": [
		<contenttweaker:psionic_core_three>
	],
	"lightningtwo": [
		<dimensionhopper:lightning_infuser_mk_2>
	],
	"lightningthree": [
		<dimensionhopper:lightning_infuser_mk_3>
	],
	"lightningfour": [
		<dimensionhopper:lightning_infuser_mk_4>
	],
	"lightningfive": [
		<dimensionhopper:infinity_infuser>
	],
	"limbonicgenerator": [
		<dimensionhopper:limbonic_generator>
	]
};

function load() {
	for name, items in itemStages {
		Stages.get(name).addIngredients(items,true);
	}
}