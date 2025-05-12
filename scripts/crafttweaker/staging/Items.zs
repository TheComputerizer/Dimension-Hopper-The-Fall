import crafttweaker.item.IIngredient;
import scripts.crafttweaker.staging.Init as Stages;

static itemStages as IIngredient[][string] = {
	"overworld": [
		<chisel:blockcopper:*>,
		<chisel:blockgold:*>,
		<chisel:glass:*>,
		<immersiveengineering:stone_decoration:*>,
		<immersiveengineering:tool>,
        <minecraft:blaze_rod>,
        <minecraft:blaze_powder>,
		<minecraft:brewing_stand>,
		<minecraft:dye:4>,
		<minecraft:gold_ore>,
		<minecraft:gold_block>,
		<minecraft:gold_ingot>,
		<minecraft:gold_nugget>,
		<minecraft:gold_ingot>,
		<minecraft:glass>,
		<minecraft:iron_ore>,
		<minecraft:lapis_block>,
		<minecraft:lapis_ore>,
		<minecraft:stained_glass>,
		<tconstruct:casting:*>,
		<tconstruct:faucet>,
		<tconstruct:seared:*>,
		<tconstruct:seared_furnace_controller>,
		<tconstruct:seared_glass>,
		<tconstruct:seared_tank:*>,
		<tconstruct:smeltery_controller>,
		<tconstruct:smeltery_io>,
        <thermalfoundation:material>,
		<thermalfoundation:storage>,
		<thermalfoundation:material:64>,
		<thermalfoundation:material:128>,
		<thermalfoundation:material:192>,
		<thermalfoundation:material:257>,
		<thermalfoundation:material:258>,
		<thermalfoundation:material:261>,
		<thermalfoundation:material:321>,
		<thermalfoundation:material:322>,
		<thermalfoundation:material:325>,
		<xreliquary:mob_ingredient:7>
	],
	"bridgetwo": [
		<minecraft:emerald>
	],
	"cavern": [
		<avaritia:compressed_crafting_table>,
		<avaritia:double_compressed_crafting_table>,
		<chisel:emerald:*>,
		<minecraft:diamond>,
		<minecraft:diamond_block>,
		<minecraft:diamond_ore>,
		<minecraft:emerald_block>,
		<minecraft:emerald_ore>,
		<zollerngalaxy:diamonddust>,
		<thermalfoundation:ore:1>,
		<thermalfoundation:ore:2>,
		<thermalfoundation:ore:5>,
		<thermalfoundation:material:65>,
		<thermalfoundation:material:66>,
		<thermalfoundation:material:69>,
		<thermalfoundation:material:129>,
		<thermalfoundation:material:130>,
		<thermalfoundation:material:133>,
		<thermalfoundation:material:65>,
		<thermalfoundation:material:66>,
		<thermalfoundation:material:69>,
		<thermalfoundation:material:197>,
		<thermalfoundation:material:193>,
		<thermalfoundation:material:194>,
		<chisel:blocktin:*>,
		<chisel:blocksilver:*>,
		<chisel:blocknickel:*>,
		<thermalfoundation:storage:1>,
		<thermalfoundation:storage:2>,
		<thermalfoundation:storage:5>,
		<zollerngalaxy:cobaltdust>,
		<zollerngalaxy:tlaloccertusquartzore>,
		<zollerngalaxy:tlalocfluixore>
	],
	"bees": [
		<forestry:bee_house>,
		<forestry:apiary>,
		<forestry:bee_queen_ge>,
		<forestry:bee_princess_ge>,
		<forestry:bee_drone_ge>,
		<forestry:bee_combs:*>,
		<forestry:scoop>,
		<forestry:carpenter>,
		<forestry:bee_combs_0:*>,
		<forestry:bee_combs_1>
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
		<extraplanets:tier1_radiation_layer>,
		<mekanism:oreblock>,
		<thermalfoundation:material:131>,
		<thermalfoundation:material:67>,
		<thermalfoundation:storage:3>,
		<thermalfoundation:material:259>,
		<thermalfoundation:material:323>,
		<thermalfoundation:material:195>,
		<chisel:blocklead:*>,
		<thermalfoundation:material:132>,
		<thermalfoundation:material:68>,
		<thermalfoundation:storage:4>,
		<thermalfoundation:material:260>,
		<thermalfoundation:material:324>,
		<thermalfoundation:material:196>,
		<chisel:blockaluminum:*>
	],
	"planets": [
		<extraplanets:compressed_mercury>,
		<extraplanets:deimos:*>,
		<extraplanets:deimos_gravel>,
		<extraplanets:geiger_counter>,
		<extraplanets:ingot_mercury>,
		<extraplanets:mercury:*>,
		<extraplanets:mercury_battery>,
		<extraplanets:mercury_stairs_stone>,
		<extraplanets:mercury_stairs_stone_bricks>,
		<extraplanets:mercury_stairs_surface>,
		<extraplanets:mercury_stairs_sub_surface>,
		<extraplanets:phobos:*>,
		<extraplanets:phobos_gravel>,
		<extraplanets:schematic_tier4>,
		<mysticalagriculture:crafting>,
		<thermalfoundation:ore:6>,
		<thermalfoundation:material:70>,
		<thermalfoundation:material:134>,
		<thermalfoundation:material:198>,
		<thermalfoundation:material:262>,
		<thermalfoundation:material:326>,
		<thermalfoundation:storage:6>,
		<chisel:blockplatinum:*>,
		<thermalfoundation:ore:8>,
		<thermalfoundation:material:72>,
		<thermalfoundation:material:136>,
		<thermalfoundation:material:200>,
		<thermalfoundation:material:264>,
		<thermalfoundation:material:328>,
		<thermalfoundation:storage:8>,
		<thermalfoundation:ore:7>,
		<thermalfoundation:material:71>,
		<thermalfoundation:material:135>,
		<thermalfoundation:material:199>,
		<thermalfoundation:material:263>,
		<thermalfoundation:material:327>,
		<thermalfoundation:storage:7>
	],
	"advent": [
		<aoa3:extraction_device>,
		<bedrockcraft:bedrock_shovel>,
		<draconicevolution:draconium_ore:*>,
        <draconicevolution:draconium_dust>,
        <draconicevolution:draconium_ingot>,
        <immersiveengineering:metal:5>,
        <immersiveengineering:metal:14>,
		<minecraft:enchanting_table>,
		<moreplanets:space_warper_core>
	],
	"finalfrontier": [
		<zollerngalaxy:radium>
	],
	"bedrockfinal": [
		<minecraft:bedrock>
	],
	"disabled": [
		<blue_skies:horizonite_pickaxe>,
		<enderio:item_dark_steel_sword>,
		<enderio:item_end_steel_sword>,
		<extrautils2:chickenring:1>,
		<minecraft:anvil:*>,
		<minecraft:diamond_helmet>,
		<minecraft:diamond_chestplate>,
		<minecraft:diamond_leggings>,
		<minecraft:diamond_boots>,
		<minecraft:furnace:*>,
		<twilightforest:uncrafting_table>,
		<xreliquary:twilight_cloak>
	],
	"hardcore": [
		<lockyzextradimensionsmod:interdimensionalsword>,
		<twilightforest:knightmetal_pickaxe>,
		<quark:glass_shards:*>
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
		<dimensionhopper:lightning_infuser_mk_5>
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