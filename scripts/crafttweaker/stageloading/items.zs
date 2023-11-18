import mods.zenstages.ZenStager;
import crafttweaker.item.IIngredient;
import scripts.crafttweaker.gamestagesinit.overworldStage;
import scripts.crafttweaker.gamestagesinit.cavernStage;
import scripts.crafttweaker.gamestagesinit.swampStage;
import scripts.crafttweaker.gamestagesinit.adventStage;
import scripts.crafttweaker.gamestagesinit.finalfrontierStage;	
import scripts.crafttweaker.gamestagesinit.bedrockStage;
import scripts.crafttweaker.gamestagesinit.disabled;
import scripts.crafttweaker.gamestagesinit.oilOne;
import scripts.crafttweaker.gamestagesinit.oilTwo;
import scripts.crafttweaker.gamestagesinit.oilThree;
import scripts.crafttweaker.gamestagesinit.factoryOne;
import scripts.crafttweaker.gamestagesinit.factoryTwo;
import scripts.crafttweaker.gamestagesinit.factoryThree;
import scripts.crafttweaker.gamestagesinit.psionicOne;
import scripts.crafttweaker.gamestagesinit.psionicTwo;
import scripts.crafttweaker.gamestagesinit.psionicThree;
import scripts.crafttweaker.gamestagesinit.lightningTwo;
import scripts.crafttweaker.gamestagesinit.lightningThree;
import scripts.crafttweaker.gamestagesinit.lightningFour;
import scripts.crafttweaker.gamestagesinit.lightningFive;
import scripts.crafttweaker.gamestagesinit.limbonicGenerator;
import scripts.crafttweaker.gamestagesinit.hardcore;

static itemlist as IIngredient[][string] = {
	overworldStage.stage: [
		<minecraft:brewing_stand>,
		<minecraft:gold_ingot>
	],
	cavernStage.stage: [
		<avaritia:compressed_crafting_table>,
		<avaritia:double_compressed_crafting_table>,
		<zollerngalaxy:diamonddust>,
		<minecraft:diamond>,
		<minecraft:emerald>
	],
	swampStage.stage: [
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
	adventStage.stage: [
		<moreplanets:space_warper_core>
	],
	finalfrontierStage.stage: [
		<zollerngalaxy:radium>
	],
	bedrockStage.stage: [
		<minecraft:bedrock>
	],
	disabled.stage: [
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
	hardcore.stage: [
		<lockyzextradimensionsmod:interdimensionalsword>,
		<twilightforest:knightmetal_pickaxe>
	],
	oilOne.stage: [
		<contenttweaker:oil_core_one>
	],
	oilTwo.stage: [
		<contenttweaker:oil_core_two>
	],
	oilThree.stage: [
		<contenttweaker:oil_core_three>
	],
	factoryOne.stage: [
		<contenttweaker:factory_core_one>
	],
	factoryTwo.stage: [
		<contenttweaker:factory_core_two>
	],
	factoryThree.stage: [
		<contenttweaker:factory_core_three>
	],
	psionicOne.stage: [
		<contenttweaker:psionic_core_one>
	],
	psionicTwo.stage: [
		<contenttweaker:psionic_core_two>
	],
	psionicThree.stage: [
		<contenttweaker:psionic_core_three>
	],
	lightningTwo.stage: [
		<dimensionhopper:lightning_infuser_mk_2>
	],
	lightningThree.stage: [
		<dimensionhopper:lightning_infuser_mk_3>
	],
	lightningFour.stage: [
		<dimensionhopper:lightning_infuser_mk_4>
	],
	lightningFive.stage: [
		<dimensionhopper:infinity_infuser>
	],
	limbonicGenerator.stage: [
		<dimensionhopper:limbonic_generator>
	]
};

function load() {
	for stageName, items in itemlist {
		ZenStager.getStage(stageName).addIngredients(items,true);
	}
}