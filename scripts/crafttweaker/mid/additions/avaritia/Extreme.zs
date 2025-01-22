#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.avaritia.ExtremeCrafting;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;

static shapes as int[][][string] = {
	"break": [
		[ 1, 9, 9, 9, 9, 9, 9, 9, 1 ],
		[ 9, 1, 2, 2, 3, 2, 2, 1, 9 ],
		[ 9, 2, 1, 4, 3, 4, 1, 2, 9 ],
		[ 9, 2, 4, 1, 5, 1, 4, 2, 9 ],
		[ 9, 3, 3, 6, 0, 7, 3, 3, 9 ],
		[ 9, 2, 4, 1, 8, 1, 4, 2, 9 ],
		[ 9, 2, 1, 4, 3, 4, 1, 2, 9 ],
		[ 9, 1, 2, 2, 3, 2, 2, 1, 9 ],
		[ 1, 9, 9, 9, 9, 9, 9, 9, 1 ]
	],
	"boots": [
		[-1, 1, 1, 1,-1, 1, 1, 1,-1 ],
		[-1, 1, 3, 1,-1, 1, 3, 1,-1 ],
		[-1, 1, 3, 1,-1, 1, 3, 1,-1 ],
		[ 1, 2, 4, 2, 0, 2, 4, 2, 1 ],
		[ 1, 3, 4, 1,-1, 1, 4, 3, 1 ],
		[ 1, 1, 1, 1,-1, 1, 1, 1, 1 ]
	],
	"chest": [
		[-1, 1, 1,-1,-1,-1, 1, 1,-1 ],
		[ 1, 2, 1,-1,-1,-1, 1, 2, 1 ],
		[ 1, 2, 1, 1, 1, 1, 1, 2, 1 ],
		[-1, 1, 3, 3, 3, 3, 3, 1,-1 ],
		[-1, 1, 3, 4, 5, 4, 3, 1,-1 ],
		[-1, 1, 3, 5, 0, 5, 3, 1,-1 ],
		[-1, 1, 3, 4, 5, 4, 3, 1,-1 ],
		[-1, 1, 3, 3, 3, 3, 3, 1,-1 ],
		[-1,-1, 1, 1, 1, 1, 1,-1,-1 ]
	], 
	"helm": [
		[-1,-1, 1, 1, 1, 1, 1,-1,-1 ],
		[-1, 1, 3, 3, 3, 3, 3, 1,-1 ],
		[-1, 1, 2, 3, 0, 3, 2, 1,-1 ],
		[-1, 1, 3, 4, 4, 4, 3, 1,-1 ],
		[-1, 1, 3, 3, 4, 3, 3, 1,-1 ]
	],
	"pants": [
		[ 1, 1, 1, 2, 4, 2, 1, 1, 1 ],
		[ 1, 3, 3, 4, 0, 4, 3, 3, 1 ],
		[ 1, 3, 1, 2, 4, 2, 1, 3, 1 ],
		[ 1, 3, 1,-1,-1,-1, 1, 3, 1 ],
		[ 1, 5, 1,-1,-1,-1, 1, 5, 1 ],
		[ 1, 3, 1,-1,-1,-1, 1, 3, 1 ],
		[ 1, 3, 1,-1,-1,-1, 1, 3, 1 ],
		[ 1, 3, 1,-1,-1,-1, 1, 3, 1 ],
		[ 1, 1, 1,-1,-1,-1, 1, 1, 1 ]
	], 
	"ingot": [
		[12,13,14,15,16,17,18,19,20 ], 
		[21, 2, 1, 3, 1, 4, 1, 5,22 ], 
		[23, 1, 6, 1, 0, 1, 7, 1,24 ], 
		[25, 8, 1, 9, 1,10, 1,11,26 ], 
		[27,28,29,30,31,32,33,34,35 ]
	],
	"mana": [ 
		[13,12,12,12,14,12,12,12,-1 ],
		[12,11,11, 6, 5, 7,11,11,12 ],
		[12,11, 3, 3, 4, 3, 3,11,12 ],
		[12, 8, 3, 2, 1, 2, 3, 9,12 ],
		[15, 3, 3, 1, 0, 1, 3, 3,16 ],
		[12,10, 3, 2, 1, 2, 3,10,12 ],
		[12,11, 3, 3, 3, 3, 3,11,12 ],
		[12,11,11,10, 3,10,11,11,12 ],
		[17,12,12,12,18,12,12,12,19 ]
	],
	"solar": [
		[ 8, 7, 6, 6, 7, 6, 6, 7, 8 ],
		[ 7, 6, 4, 5, 3, 5, 4, 6, 7 ],
		[ 6, 4, 4, 3, 2, 3, 4, 4, 6 ],
		[ 6, 5, 3, 1, 1, 1, 3, 5, 6 ],
		[ 7, 3, 2, 1, 0, 1, 2, 3, 7 ],
		[ 6, 5, 3, 1, 1, 1, 3, 5, 6 ],
		[ 6, 4, 4, 3, 2, 3, 4, 4, 6 ],
		[ 7, 6, 4, 5, 3, 5, 4, 6, 7 ],
		[ 8, 7, 6, 6, 7, 6, 6, 7, 8 ]
	],
	"tank": [
		[23,21,18, 3,2, 3,18,21,23 ],
		[24,21,19, 4,1,11,19,21,24 ],
		[24,22,20, 5,1,12,20,22,24 ],
		[24,21,19, 6,0,13,19,21,24 ],
		[24,22,20, 7,0,14,20,22,24 ],
		[24,21,19, 8,0,15,19,21,24 ],
		[24,22,20, 9,1,16,20,22,24 ],
		[24,21,19,10,1,17,19,21,24 ],
		[23,21,18, 3,2, 3,18,21,23 ]
	]
};

static recipeHolders as Holder[] = [
	//avaritia
	Util.customShaped(<avaritia:resource:6>, [
		<projectex:matter:11>, <avaritia:resource:5>, <gaiadimension:benitoite>, 
		<gaiadimension:ixiolite>, <gaiadimension:diopside>, <gaiadimension:chalcedony>, 
		<blue_skies:ventium_ingot>, <blue_skies:falsite_ingot>, <gaiadimension:proustite>, 
		<gaiadimension:carnelian>, <gaiadimension:leucite>, <gaiadimension:euclase>, 
		<psi:material:3>,  <ore:gaiaIngot>,  <ore:ingotStellarAlloy>, 
		<naturesaura:sky_ingot>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>, 
		<aoa3:shyrestone_ingot>, <ore:ingotEvilMetal>, <ore:ingotOsgloglas>, 
		<blue_skies:pyrope_block>, <blue_skies:moonstone_block>, <ore:blockPositite>, 
		<ore:blockNegatite>, <blue_skies:turquoise_block>, <ore:blockNecrum>, 
		<ore:ingotOctine>, <ore:ingotZollernium>, <ore:ingotReinforcedObsidian>, 
		<ore:ingotDarkIron>, <extendedcrafting:material:48>, <ore:ingotDraconiumAwakened>, 
		<ore:ingotInsanium>, <ore:ingotMystic>, <psi:material:4>], shapes["ingot"]), //infinity ingot

	Util.customShaped(<avaritia:infinity_helmet>, [
		<contenttweaker:armor_core_8>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>,
		<moreplates:infinity_plate>, <moreplates:infinity_gear>], shapes["helm"]), //infinity helmet

	Util.customShaped(<avaritia:infinity_chestplate>, [
		<contenttweaker:armor_core_8>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>,
		<moreplates:infinity_plate>, <moreplates:infinity_gear>, <avaritia:block_resource:2>], shapes["chest"]), //infinity chestplate

	Util.customShaped(<avaritia:infinity_pants>, [
		<contenttweaker:armor_core_8>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>,
		<moreplates:infinity_plate>, <moreplates:infinity_gear>, <avaritia:block_resource:2>], shapes["pants"]), //infinity leggings
		
	Util.customShaped(<avaritia:infinity_boots>, [
		<contenttweaker:armor_core_8>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>,
		<moreplates:infinity_plate>, <moreplates:infinity_gear>], shapes["boots"]), //infinity boots
	
	//bedrockcraft
	Util.customShaped(<bedrockcraft:bedrock_breaker>, [
		<contenttweaker:dimensional_singularity>, <projectex:matter:11>, <overloaded:compressed_obsidian:15>, 
		<avaritia:endest_pearl>, <actuallyadditions:block_crystal_empowered:4>, <avaritia:infinity_shovel>, 
		<avaritia:infinity_hoe>, <avaritia:infinity_pickaxe>, <avaritia:infinity_axe>,
		<silentgems:miscblock:4>], shapes["break"]), //bedrock breaker
	
	//botania
	Util.customShaped(<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [
		<botania:manatablet>, <botania:manamirror>, <botania:spawnermover>,
		<botania:storage:1>, <botania:flugeleye>, <avaritiatweaks:gaia_block>,
		<botania:infinitefruit>, <botania:kingkey>, <botania:odinring>,
		<botania:thorring>, <botania:dice>, <botania:pool:3>,
		<ore:ingotInfinity>, <ore:runeEnvyB>, <ore:runeGluttonyB>,
		<ore:runeLustB>, <ore:runePrideB>, <ore:runeWrathB>,
		<ore:runeGreedB>, <ore:runeSlothB>], shapes["mana"]), //creative mana tablet

	//mekanism
	Util.customShaped(<mekanism:machineblock2:11>.withTag({tier: 4}), [
		<aeadditions:storage.component:3>, <ore:circuitUltimate>, <ore:blockInfinity>,
		<mekanism:machineblock2:11>.withTag({tier: 3}), <moreplanets:red_tinted_glass>, <moreplanets:orange_tinted_glass>,
		<moreplanets:magenta_tinted_glass>, <moreplanets:light_blue_tinted_glass>, <moreplanets:yellow_tinted_glass>,
		<moreplanets:lime_tinted_glass>, <moreplanets:pink_tinted_glass>, <moreplanets:gray_tinted_glass>,
		<moreplanets:silver_tinted_glass>, <moreplanets:cyan_tinted_glass>, <moreplanets:purple_tinted_glass>,
		<moreplanets:blue_tinted_glass>, <moreplanets:brown_tinted_glass>, <moreplanets:green_tinted_glass>,
		<mekanism:gaugedropper>, <mekanismgenerators:reactorglass>, <extendedcrafting:singularity_ultimate>,
		<silentgems:miscblock:2>, <contenttweaker:rocket_block_10>, <contenttweaker:heart_of_the_machine_god>,
		<mekanism:basicblock:8>], shapes["tank"]), //creative fluid tank

	//solarflux
	Util.customShaped(<solarflux:solar_panel_neutronium>, [
		<avaritia:resource:5>, <avaritia:resource:2>, <ore:nuggetCosmicNeutronium>,
		<solarflux:solar_panel_chaotic>, <ore:ingotCrystalMatrix>, <ore:ingotUltimate>,
		<ore:ingotCosmicNeutronium>, <ore:circuitUltimate>, <ore:circuitUltimate>], shapes["solar"]), //neutronium solar panel

	Util.customShaped(<solarflux:solar_panel_infinity>, [
		<ore:blockInfinity>, <ore:nuggetUltimate>, <avaritiatweaks:enhancement_crystal>,
		<solarflux:solar_panel_neutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotUltimate>,
		<ore:plateInfinity>, <ore:blockUltimate>, <ore:gearInfinity>], shapes["solar"]), //infinity solar panel
] as Holder[];

function run() {
	for holder in recipeHolders {
		ExtremeCrafting.addShaped(holder.getName("extreme."),holder.getOutput(),holder.getShaped());
	}
}