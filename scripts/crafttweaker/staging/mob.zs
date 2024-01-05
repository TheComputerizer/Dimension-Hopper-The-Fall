import scripts.crafttweaker.staging.init as Stages;

static mobStages as string[][string] = {
	"overworld": [
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
	"nether": [
		"minecraft:blaze"
	],
	"deepdown": [
		"erebus:erebus.black_widow"
	],
	"disabled": [
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
	"hardcore": [
		"lockyzextradimensionsmod:tannerjimmyfan"
	]
};

function load() {
	for name, mobs in mobStages {
		Stages.get(name).addMobs(mobs);
	}
}