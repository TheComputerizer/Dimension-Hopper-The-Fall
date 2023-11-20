import crafttweaker.item.IIngredient;
import mods.orestages.OreStages;

static oreStages as IIngredient[][string] = {
	"overworld": [
		<minecraft:brewing_stand>,
		<minecraft:iron_ore>,
		<minecraft:lapis_block>
	],
	"nether": [
		<minecraft:gold_ore>,
	    <thermalfoundation:ore>
	],
	"labyrinth": [
		<minecraft:lapis_ore>
	],
	"cavern": [
	    <minecraft:diamond_block>,
		<minecraft:emerald_block>,
		<minecraft:diamond_ore>,
		<minecraft:emerald_ore>,
		<thermalfoundation:ore:1>,
		<thermalfoundation:ore:2>,
		<thermalfoundation:ore:5>
	],
	"swamp": [
		<thermalfoundation:ore:3>,
		<thermalfoundation:ore:4>,
		<mekanism:oreblock>
	],
	"planets": [
		<thermalfoundation:ore:6>,
		<thermalfoundation:ore:7>,
		<thermalfoundation:ore:8>
	],
	"advent": [
		<immersiveengineering:ore:5>
	],
	"deepdown": [
		<draconicevolution:draconium_ore:*>
	],
	"bedrockfinal": [
		<bedrockcraft:voidbeacon>,
		<bedrockcraft:ender_rift>,
		<bedrockcraft:empty_ender_rift>,
		<bedrockcraft:bedrockcraft_pedestal>,
		<bedrockcraft:bedrock_rose>,
		<bedrockcraft:voidore>
	],
	"disabled": [
		<thebetweenlands:druid_altar>,
		<minecraft:furnace:*>,
		<minecraft:anvil:*>,
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

function load() {
	for name, blocks in oreStages {
		for block in blocks {
			OreStages.addReplacement(name,block);
		}
	}
}