import mods.zenstages.ZenStager;
import mods.orestages.OreStages;
import crafttweaker.item.IIngredient;
import scripts.crafttweaker.gamestagesinit.twilightStage;
import scripts.crafttweaker.gamestagesinit.overworldStage;
import scripts.crafttweaker.gamestagesinit.netherStage;
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
import scripts.crafttweaker.gamestagesinit.mystic;
import scripts.crafttweaker.gamestagesinit.disabled;

static ores as IIngredient[][string] = 
{
	overworldStage.stage : 
	[
		<minecraft:brewing_stand>,
		<minecraft:iron_ore>,
		<minecraft:lapis_block>
	],
	netherStage.stage : 
	[
		<minecraft:gold_ore>,
	    <thermalfoundation:ore>
	],
	labyrinthStage.stage : 
	[
		<minecraft:lapis_ore>
	],
	cavernStage.stage : 
	[
	    <minecraft:diamond_block>,
		<minecraft:emerald_block>,
		<minecraft:diamond_ore>,
		<minecraft:emerald_ore>,
		<thermalfoundation:ore:1>,
		<thermalfoundation:ore:2>,
		<thermalfoundation:ore:5>
	],
	swampStage.stage : 
	[
		<thermalfoundation:ore:3>,
		<thermalfoundation:ore:4>,
		<mekanism:oreblock>
	],
	planetsStage.stage : 
	[
		<thermalfoundation:ore:6>,
		<thermalfoundation:ore:7>,
		<thermalfoundation:ore:8>
	],
	adventStage.stage : 
	[
		<immersiveengineering:ore:5>
	],
	deepdownStage.stage : 
	[
		<draconicevolution:draconium_ore:*>
	],
	bedrockStage.stage : 
	[
		<bedrockcraft:voidbeacon>,
		<bedrockcraft:ender_rift>,
		<bedrockcraft:empty_ender_rift>,
		<bedrockcraft:bedrockcraft_pedestal>,
		<bedrockcraft:bedrock_rose>,
		<bedrockcraft:voidore>
	],
	disabled.stage : 
	[
		<thebetweenlands:druid_altar>,
		<minecraft:furnace>,
		<minecraft:furnace:1>,
		<minecraft:furnace:2>,
		<minecraft:furnace:3>,
		<minecraft:furnace:4>,
		<minecraft:furnace:5>,
		<minecraft:anvil>,
		<minecraft:anvil:1>,
		<minecraft:anvil:2>,
		<minecraft:anvil:3>,
		<minecraft:anvil:4>,
		<minecraft:anvil:5>,
		<minecraft:enchanting_table>,
		<twilightforest:uncrafting_table>,
		<lockyzextradimensionsmod:interdimensionalore>,
        <lockyzextradimensionsmod:cloudore>,
        <lockyzextradimensionsmod:alternateore>,
        <lockyzextradimensionsmod:flintore>,
        <goodnightsleep:rainbow_ore>,
        <blue_skies:everdawn_emerald_ore>,
		<blue_skies:everbright_emerald_ore>
	]
};

function load()
{
	for stageName, ore in ores
	{
		for i,item in ore
		{
			mods.orestages.OreStages.addReplacement(stageName, ore[i]);
		}
	}
}