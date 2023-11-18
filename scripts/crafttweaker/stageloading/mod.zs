import mods.zenstages.ZenStager;
import crafttweaker.item.IIngredient;
import mods.jmapstages.JMapStages;
import scripts.crafttweaker.gamestagesinit.twilightStage;
import scripts.crafttweaker.gamestagesinit.overworldStage;
import scripts.crafttweaker.gamestagesinit.labyrinthStage;
import scripts.crafttweaker.gamestagesinit.cavernStage;
import scripts.crafttweaker.gamestagesinit.swampStage;
import scripts.crafttweaker.gamestagesinit.planetsStage;
import scripts.crafttweaker.gamestagesinit.adventStage;
import scripts.crafttweaker.gamestagesinit.deepspaceStage;
import scripts.crafttweaker.gamestagesinit.deepdownStage;
import scripts.crafttweaker.gamestagesinit.finalfrontierStage;
import scripts.crafttweaker.gamestagesinit.bedrockStage;
import scripts.crafttweaker.gamestagesinit.emcStage;
import scripts.crafttweaker.gamestagesinit.purchaseDimensions;
import scripts.crafttweaker.gamestagesinit.bridgeTwo;
import scripts.crafttweaker.gamestagesinit.bridgeThree;

static mods as string[][string] = {
	overworldStage.stage: [
		"aether",
		"artisanworktables",
		"huntingdim",
		"midnight",
		"mist"
	],
	labyrinthStage.stage: [
		"atum",
		"blue_skies",
		"glacidus",
		"goodnightsleep",
		"theaurorian"
	],
	cavernStage.stage: [
		"cavern"
	],
	swampStage.stage: [
		"galacticraftcore"
	],
	planetsStage.stage : [
		"aroma1997sdimension",
		"galacticraftplanets",
		"lightningcraft"
	],
	adventStage.stage: [
		"extraplanets"
	],
	deepspaceStage.stage: [
		"moreplanets",
		"zollerngalaxy"
	],
	deepdownStage.stage: [
		"erebus"
	],
	finalfrontierStage.stage: [
		"avaritia",
		"avaritiaio"
	],
	emcStage.stage: [
		"projecte",
		"projectex"
	],
	purchaseDimensions.stage: [
		"lockyzextradimensionsmod"
	],
	bedrockStage.stage: [
		"bedrockcraft"
	]
};

static modBlacklists as IIngredient[][string] = {
	"cavern": [
		<cavern:magnite_pickaxe>
	],
	"galacticraftplanets": [
		<galacticraftplanets:item_basic_asteroids:7>,
		<galacticraftplanets:thermal_padding>,
		<galacticraftplanets:thermal_padding:1>,
		<galacticraftplanets:thermal_padding:2>,
		<galacticraftplanets:thermal_padding:3>
	],
	"extraplanets": [
		<extraplanets:tier1_pressure_layer>,
		<extraplanets:tier1_armor_layer>,
		<extraplanets:tier1_un_prepared_space_suit_helmet>,
		<extraplanets:tier1_un_prepared_space_suit_chest>,
		<extraplanets:tier1_un_prepared_space_suit_legings>,
		<extraplanets:tier1_un_prepared_space_suit_boots>,
		<extraplanets:tier1_space_suit_helmet:*>,
		<extraplanets:tier1_space_suit_chest:*>,
		<extraplanets:tier1_space_suit_jetpack_chest:*>,
		<extraplanets:tier1_space_suit_legings:*>,
		<extraplanets:tier1_space_suit_boots:*>,
		<extraplanets:tier1_space_suit_gravity_boots:*>,
		<extraplanets:thermal_cloth>,
		<extraplanets:tier3_thermal_padding>,
		<extraplanets:tier3_thermal_padding:1>,
		<extraplanets:tier3_thermal_padding:2>,
		<extraplanets:tier3_thermal_padding:3>,
		<extraplanets:cloth>,
		<extraplanets:tier1_radiation_layer>
	],
	"moreplanets": [
		<moreplanets:space_warper_core>
	],
	"zollerngalaxy": [
		<zollerngalaxy:diamonddust>,
		<zollerngalaxy:radium>
	],
	"avaritia": [
		<avaritia:compressed_crafting_table>, 
		<avaritia:double_compressed_crafting_table>
	],
};

function load() {
	for stageName, modIds in mods {
		for modId in modIds {
			if(modBlacklists.keys has modId) {
				ZenStager.getStage(stageName).addModId(modId,true,modBlacklists[modId]);
			} else {
				ZenStager.getStage(stageName).addModId(modId,true,[<minecraft:dirt>]);
			}
		}
	}
}