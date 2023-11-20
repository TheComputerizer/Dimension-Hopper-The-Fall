import crafttweaker.item.IIngredient;
import scripts.crafttweaker.staging.init as Stages;

static modStages as IIngredient[][string][string] = {
	"overworld": {
		"aether": [<minecraft:dirt>] as IIngredient[],
		"artisanworktables": [<minecraft:dirt>] as IIngredient[],
		"huntingdim": [<minecraft:dirt>] as IIngredient[],
		"midnight": [<minecraft:dirt>] as IIngredient[],
		"mist": [<minecraft:dirt>] as IIngredient[]
	},
	"labyrinth": {
		"atum": [<minecraft:dirt>] as IIngredient[],
		"blue_skies": [<minecraft:dirt>] as IIngredient[],
		"glacidus": [<minecraft:dirt>] as IIngredient[],
		"goodnightsleep": [<minecraft:dirt>] as IIngredient[],
		"theaurorian": [<minecraft:dirt>] as IIngredient[]
	},
	"cavern": {
		"cavern": [
			<cavern:magnite_pickaxe>
		] as IIngredient[]
	},
	"swamp": {
		"galacticraftcore": [<minecraft:dirt>] as IIngredient[]
	},
	"planets": {
		"aroma1997sdimension": [<minecraft:dirt>] as IIngredient[],
		"galacticraftplanets": [
			<galacticraftplanets:item_basic_asteroids:7>,
			<galacticraftplanets:thermal_padding>,
			<galacticraftplanets:thermal_padding:1>,
			<galacticraftplanets:thermal_padding:2>,
			<galacticraftplanets:thermal_padding:3>
		] as IIngredient[],
		"lightningcraft": [<minecraft:dirt>] as IIngredient[]
	},
	"advent": {
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
		] as IIngredient[]
	},
	"deepspace": {
		"moreplanets": [
			<moreplanets:space_warper_core>
		] as IIngredient[],
		"zollerngalaxy": [
			<zollerngalaxy:diamonddust>,
			<zollerngalaxy:radium>
		] as IIngredient[]
	},
	"deepdown": {
		"erebus": [<minecraft:dirt>] as IIngredient[]
	},
	"finalfrontier": {
		"avaritia": [
			<avaritia:compressed_crafting_table>, 
			<avaritia:double_compressed_crafting_table>
		] as IIngredient[],
		"avaritiaio": [<minecraft:dirt>] as IIngredient[]
	},
	"emc": {
		"projecte": [<minecraft:dirt>] as IIngredient[],
		"projectex": [<minecraft:dirt>] as IIngredient[]
	},
	"shopper": {
		"lockyzextradimensionsmod": [<minecraft:dirt>] as IIngredient[]
	},
	"bedrockfinal": {
		"bedrockcraft": [<minecraft:dirt>] as IIngredient[]
	}
};

function load() {
	for name, mods in modStages {
		for mod, blacklist in mods {
			Stages.get(name).addModId(mod,true,blacklist);
		}
	}
}