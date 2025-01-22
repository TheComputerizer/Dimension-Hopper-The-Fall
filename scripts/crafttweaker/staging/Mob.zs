import scripts.crafttweaker.staging.Init as Stages;

static mobStages as string[][string] = {
	"overworld": [
		"enderio:owl_egg",
		"enderiozoo:concussioncreeper",
		"enderiozoo:direslime",
		"enderiozoo:direwolf",
		"enderiozoo:enderminy",
		"enderiozoo:epicsquid",
		"enderiozoo:fallenknight",
		"enderiozoo:fallenmount",
		"enderiozoo:lovechild",
		"enderiozoo:owl",
		"enderiozoo:voidslime",
		"enderiozoo:withercat",
		"enderiozoo:witherwitch"
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