#reloadable

import mods.botania.RuneAltar;

//black quartz
RuneAltar.addRecipe(<botania:quartz>,[<minecraft:quartz>, <minecraft:coal>], 100);
RuneAltar.addRecipe(<botania:quartz>,[<minecraft:quartz>, <minecraft:coal:1>], 100);

//silentgems fertilizer
for meta in 0 .. 16 {
	val rose=<silentgems:glowrose>.definition.makeStack(meta);
	RuneAltar.addRecipe(<silentgems:glowrosefertilizer>,[<minecraft:dye:15>, rose, rose], 1000);
}

//deep dark
RuneAltar.addRecipe(<extrautils2:teleporter:1>, [<overloaded:compressed_dirt:3>, <overloaded:compressed_gravel:3>, <overloaded:compressed_sand:3>, <overloaded:compressed_cobblestone:3>, 
	<overloaded:nether_star_block>, <overloaded:compressed_stone:3>, <overloaded:compressed_netherrack:3>, <tp:quadruple_compressed_sugar_cane>, <overloaded:compressed_obsidian:3>, <contenttweaker:neptune_dimensional_stone>], 1000000);

//runes
for meta in 0 .. 16 {
  RuneAltar.removeRecipe(<botania:rune>.definition.makeStack(meta));
}
//water
RuneAltar.addRecipe(<botania:rune>, [<botania:manaresource>, <botania:manaresource:23>, <minecraft:water_bucket>, <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), <immersiveengineering:material:10>], 10000);
//fire
RuneAltar.addRecipe(<botania:rune:1>, [<botania:manaresource>, <botania:manaresource:23>, <minecraft:lava_bucket>, <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <tconstruct:edible:4>], 10000);
//earth
RuneAltar.addRecipe(<botania:rune:2>, [<botania:manaresource>, <botania:manaresource:23>, <forestry:peat>, <overloaded:compressed_cobblestone>, <minecraft:dirt:1>], 10000);
//air
RuneAltar.addRecipe(<botania:rune:3>, [<botania:manaresource>, <botania:manaresource:23>, <minecraft:feather>, <minecraft:potion>.withTag({Potion: "minecraft:long_leaping"}), <aether:aercloud>], 10000);
//spring
RuneAltar.addRecipe(<botania:rune:4>, [<botania:rune>, <botania:rune:1>, <integrateddynamics:menril_sapling>, <atum:palm_sapling>, <actuallyadditions:item_misc:12>], 25000);
//summer
RuneAltar.addRecipe(<botania:rune:5>, [<botania:rune:2>, <botania:rune:3>, <minecraft:speckled_melon>, <overloaded:compressed_sand>, <silentgems:gem:34>], 25000);
//autumn
RuneAltar.addRecipe(<botania:rune:6>, [<botania:rune:1>, <botania:rune:3>, <integrateddynamics:menril_leaves>, <goodnightsleep:dream_leaves>, <minecraft:fermented_spider_eye>], 25000);
//winter
RuneAltar.addRecipe(<botania:rune:7>, [<botania:rune>, <botania:rune:2>, <randomthings:superlubricentice>, <minecraft:packed_ice>, <enderio:item_cold_fire_igniter>], 25000);
//mana
RuneAltar.addRecipe(<botania:rune:8>, [<botania:manaresource>, <botania:manaresource:1>, <botania:manaresource:2>, <psi:material:2>, <extrautils2:suncrystal>], 200000);
//lust
RuneAltar.addRecipe(<botania:rune:9>, [<botania:rune:5>, <botania:rune:3>, <botania:storage:3>, <ceramics:rainbow_clay>, <chisel:futura:3>], 100000);
//gluttony
RuneAltar.addRecipe(<botania:rune:10>, [<botania:rune:7>, <botania:rune:1>, <botania:storage:3>, <darkutils:charm_gluttony>, <xlfoodmod:cheeseburger>], 10000);
//greed
RuneAltar.addRecipe(<botania:rune:11>, [<botania:rune:4>, <botania:rune>, <botania:storage:3>, <minecraft:golden_apple:1>, <chisel:lapis:5>], 100000);
//sloth
RuneAltar.addRecipe(<botania:rune:12>, [<botania:rune:6>, <botania:rune:3>, <botania:storage:3>, <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}), <tp:stone_chestplate>], 100000);
//wrath
RuneAltar.addRecipe(<botania:rune:13>, [<botania:rune:7>, <botania:rune:2>, <botania:storage:3>, <naturesaura:token_rage>, <gaiadimension:mega_storage_crate>], 100000);
//envy
RuneAltar.addRecipe(<botania:rune:14>, [<botania:rune:7>, <botania:rune>, <botania:storage:3>, <tombstone:fishing_rod_of_misadventure>, <extrautils2:decorativesolidwood:1>], 100000);
//pride
RuneAltar.addRecipe(<botania:rune:15>, [<botania:rune:5>, <botania:rune:1>, <botania:storage:3>, <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <overloaded:compressed_obsidian>], 100000);