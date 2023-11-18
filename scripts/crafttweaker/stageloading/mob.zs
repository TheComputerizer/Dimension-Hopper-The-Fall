import mods.zenstages.Stage;
import mods.zenstages.ZenStager;
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
import scripts.crafttweaker.gamestagesinit.netherStage;
import scripts.crafttweaker.gamestagesinit.emcStage;
import scripts.crafttweaker.gamestagesinit.purchaseDimensions;
import scripts.crafttweaker.gamestagesinit.disabled;
import scripts.crafttweaker.gamestagesinit.hardcore;

static mob as string[][string] = {
	overworldStage.stage: [
		"enderzoo:concussioncreeper",
		"enderzoo:direslime",
		"enderzoo:direwolf",
		"enderzoo:enderminy",
		"enderzoo:entityowlegg",
		"enderzoo:entityprimedcharge",
		"enderzoo:fallenknight",
		"enderzoo:fallenmount",
		"enderzoo:withercat",
		"enderzoo:witherwitch"
	],
	netherStage.stage: [
		"minecraft:blaze"
	],
	deepdownStage.stage: [
		"lightningcraft:demon_soldier",
		"erebus:erebus.black_widow"
	],
	disabled.stage: [
		"twilightforest:armored_giant",
		"erebus:erebus.animated_bamboo_crate",
		"erebus:erebus.animated_block",
		"erebus:erebus.animated_chest",
		"lockyzextradimensionsmod:fredrick404",
		"lockyzextradimensionsmod:spike",
		"lockyzextradimensionsmod:traylon",
		"lockyzextradimensionsmod:alter",
		"lockyzextradimensionsmod:neb2566",
		"lockyzextradimensionsmod:wrathverse",
		"lockyzextradimensionsmod:alexa2112",
		"lockyzextradimensionsmod:deathdodoo",
		"lockyzextradimensionsmod:me",
		"lockyzextradimensionsmod:xalabar",
		"lockyzextradimensionsmod:codemarshadow",
		"lockyzextradimensionsmod:freakdre93"
	],
	hardcore.stage: [
		"lockyzextradimensionsmod:tannerjimmyfan"
	]
};

function load() {
	for stageName, mobs in mob {
		ZenStager.getStage(stageName).addMobs(mobs);
	}
}