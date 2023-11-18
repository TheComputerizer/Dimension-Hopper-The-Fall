#reloadable

import mods.thermalexpansion.Factorizer;

Factorizer.removeRecipeCombine(<actuallyadditions:block_compost>*9);
//neutronium
Factorizer.removeRecipeCombine(<avaritia:resource:2>*9);
Factorizer.removeRecipeCombine(<avaritia:resource:3>*9);
Factorizer.removeRecipeCombine(<avaritia:resource:4>*9);
Factorizer.removeRecipeSplit(<avaritia:resource:3>);
Factorizer.removeRecipeSplit(<avaritia:resource:4>);
Factorizer.removeRecipeSplit(<avaritia:block_resource>);
//charcoal
Factorizer.removeRecipeCombine(<minecraft:coal:1>*9);
//infinity
Factorizer.removeRecipeCombine(<avaritia:resource:6>*9);
Factorizer.removeRecipeSplit(<avaritia:block_resource:1>);

//dry rubber
Factorizer.addRecipeCombine(<industrialforegoing:tinydryrubber>*9, <industrialforegoing:dryrubber>);

//compressed obsidian
Factorizer.removeRecipeCombine(<minecraft:obsidian>*9);
Factorizer.addRecipeCombine(<minecraft:obsidian>*9, <overloaded:compressed_obsidian>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_obsidian>.definition.makeStack(meta);
	val output = <overloaded:compressed_obsidian>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed cobble
Factorizer.addRecipeCombine(<minecraft:cobblestone>*9, <overloaded:compressed_cobblestone>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_cobblestone>.definition.makeStack(meta);
	val output = <overloaded:compressed_cobblestone>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed stone
Factorizer.addRecipeCombine(<minecraft:stone>*9, <overloaded:compressed_stone>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_stone>.definition.makeStack(meta);
	val output = <overloaded:compressed_stone>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed netherrack
Factorizer.addRecipeCombine(<minecraft:netherrack>*9, <overloaded:compressed_netherrack>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_netherrack>.definition.makeStack(meta);
	val output = <overloaded:compressed_netherrack>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed gravel
Factorizer.addRecipeCombine(<minecraft:gravel>*9, <overloaded:compressed_gravel>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_gravel>.definition.makeStack(meta);
	val output = <overloaded:compressed_gravel>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed sand
Factorizer.addRecipeCombine(<minecraft:sand>*9, <overloaded:compressed_sand>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_sand>.definition.makeStack(meta);
	val output = <overloaded:compressed_sand>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}
//compressed dirt
Factorizer.addRecipeCombine(<minecraft:dirt>*9, <overloaded:compressed_dirt>);
for meta in 0 .. 15 {
	val input = <overloaded:compressed_dirt>.definition.makeStack(meta);
	val output = <overloaded:compressed_dirt>.definition.makeStack(meta+1);
	Factorizer.addRecipeBoth(output, input*9);
}

//lapis
Factorizer.addRecipeBoth(<tp:lapis_ingot>, <minecraft:dye:4>*4);

//zitrite
Factorizer.addRecipeBoth(<goodnightsleep:zitrite_block>, <goodnightsleep:zitrite_ingot>*9);

//hexcite
Factorizer.addRecipeBoth(<cavern:cave_block:6>, <cavern:cave_item:2>*9);

//aquamarine
Factorizer.addRecipeBoth(<silentgems:gemblock:8>, <silentgems:gem:8>*9);

//green sapphire
Factorizer.addRecipeBoth(<silentgems:gemblock:6>, <silentgems:gem:6>*9);

//chaos iron
Factorizer.addRecipeBoth(<silentgems:miscblock:4>, <silentgems:craftingmaterial:30>*9);

//chaos essence
Factorizer.addRecipeBoth(<silentgems:craftingmaterial>, <silentgems:craftingmaterial:3>*9);

//terrasteel
Factorizer.addRecipeBoth(<botania:storage:1>, <moreplates:terrasteel_plate>*9);

//calculator redstone
Factorizer.addRecipeBoth(<calculator:material:9>, <calculator:redstoneingot>*9);

//titanium
Factorizer.addRecipeBoth(<galacticraftplanets:asteroids_block:7>, <galacticraftplanets:item_basic_asteroids>*9);

//infused iron
Factorizer.addRecipeBoth(<naturesaura:infused_iron_block>, <naturesaura:infused_iron>*9);

//enhanced ender
Factorizer.addRecipeBoth(<extendedcrafting:storage:7>, <extendedcrafting:material:48>*9);

//charcoal
Factorizer.addRecipeBoth(<thermalfoundation:storage_resource>, <minecraft:coal:1>*9);

//gaia
Factorizer.addRecipeBoth(<avaritiatweaks:gaia_block>, <botania:manaresource:14>*9);

//crystallized chaos essence
Factorizer.addRecipeBoth(<silentgems:miscblock:2>, <silentgems:craftingmaterial:2>*9);

//enriched chaos essence
Factorizer.addRecipeBoth(<silentgems:miscblock:1>, <silentgems:craftingmaterial:1>*9);

//chaos essence
Factorizer.addRecipeBoth(<silentgems:miscblock>, <silentgems:craftingmaterial>*9);

//rftools frame slab
Factorizer.addRecipeSplit(<rftools:machine_frame>, <rftools:machine_base>*2);

//zinc
Factorizer.removeRecipeCombine(<zollerngalaxy:zincingot>*9);
Factorizer.removeRecipeSplit(<zollerngalaxy:zincblock>);
Factorizer.addRecipeBoth(<extraplanets:neptune:7>, <extraplanets:tier8_items:5>*9);

//aquamarine
Factorizer.removeRecipeSplit(<silentgems:gemshard:8>*9);
Factorizer.addRecipeBoth(<silentgems:gem:8> ,<silentgems:gemshard:8>*9);
Factorizer.addRecipeBoth(<cavern:cave_block:1>, <cavern:cave_item>*9);
Factorizer.addRecipeBoth(<zollerngalaxy:aquamarineblock>, <zollerngalaxy:aquamarine>*9);

//flint
Factorizer.addRecipeBoth(<tp:flint_ingot>, <minecraft:flint>*4);

//alternate
Factorizer.addRecipeBoth(<lockyzextradimensionsmod:alternateblock>, <lockyzextradimensionsmod:alternategem>*9);

//certus quartz
Factorizer.addRecipeBoth(<jaopca:block.certus_quartz>, <appliedenergistics2:material>*9);

//charged certus quartz
Factorizer.addRecipeBoth(<jaopca:block.charged_certus_quartz>, <appliedenergistics2:material:1>*9);

//crystal matrix
Factorizer.removeRecipeCombine(<avaritia:resource:1>*9);
Factorizer.removeRecipeSplit(<avaritia:block_resource:2>);