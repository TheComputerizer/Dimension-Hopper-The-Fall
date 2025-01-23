#reloadable

import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;
import mods.dropt.RuleList;

var rules as RuleList = Dropt.list("basic_replacements");

//replace erebus jade drops with silentgems jade
rules.add(Dropt.rule()
    .matchDrops([
        <erebus:materials:1>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop().items([
        <silentgems:gem:37>
    ])));

//remove diamonds and emeralds from diamond and dream leaves
rules.add(Dropt.rule()
    .matchBlocks([
        "goodnightsleep:diamond_leaves:*", 
        "goodnightsleep:dream_leaves:*"
    ])
    .matchDrops([
        <minecraft:diamond>, 
        <minecraft:emerald>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//blacklist twilight drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("WHITELIST", "ALL", ["twilight"]))
    .matchDrops([
        <mysticalagriculture:crafting>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage overworld drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["overworld"]))
    .matchDrops([
        <minecraft:glass>,
        <minecraft:stained_glass>,
        <xreliquary:mob_ingredient:7>,
        <minecraft:blaze_rod>,
        <minecraft:blaze_powder>,
        <minecraft:brewing_stand>,
        <minecraft:iron_ore>,
        <thermalfoundation:material>,
        <minecraft:lapis_block>,
        <minecraft:dye:4>,
        <minecraft:lapis_ore>,
        <minecraft:gold_ore>,
		<minecraft:gold_block>,
		<minecraft:gold_ingot>,
		<minecraft:gold_nugget>,
		<chisel:blockgold:*>,
		<thermalfoundation:storage>,
		<chisel:blockcopper:*>,
		<thermalfoundation:material:64>,
		<thermalfoundation:material:128>,
		<thermalfoundation:material:192>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage masochist drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["hardcore"]))
    .matchDrops([
        <quark:glass_shards:*>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage bridgetwo drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["bridgetwo"]))
    .matchDrops([
		<minecraft:emerald>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));


//stage cavern drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["cavern"]))
    .matchDrops([
        <avaritia:compressed_crafting_table>,
		<avaritia:double_compressed_crafting_table>,
		<chisel:emerald:*>,
		<minecraft:diamond>,
		<minecraft:diamond_block>,
		<minecraft:diamond_ore>,
		<minecraft:emerald_block>,
		<minecraft:emerald_ore>,
		<zollerngalaxy:diamonddust>,
		<thermalfoundation:ore:1>,
		<thermalfoundation:ore:2>,
		<thermalfoundation:ore:5>,
		<thermalfoundation:material:65>,
		<thermalfoundation:material:66>,
		<thermalfoundation:material:69>,
		<thermalfoundation:material:129>,
		<thermalfoundation:material:130>,
		<thermalfoundation:material:133>,
		<thermalfoundation:material:65>,
		<thermalfoundation:material:66>,
		<thermalfoundation:material:69>,
		<thermalfoundation:material:197>,
		<thermalfoundation:material:193>,
		<thermalfoundation:material:194>,
		<chisel:blocktin:*>,
		<chisel:blocksilver:*>,
		<chisel:blocknickel:*>,
		<thermalfoundation:storage:1>,
		<thermalfoundation:storage:2>,
		<thermalfoundation:storage:5>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage swamp drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["swamp"]))
    .matchDrops([
        <mekanism:oreblock>,
        <mekanism:ingot:1>,
        <mekanism:dust:2>,
		<thermalfoundation:material:131>,
		<thermalfoundation:material:67>,
		<thermalfoundation:storage:3>,
		<thermalfoundation:material:259>,
		<thermalfoundation:material:323>,
		<thermalfoundation:material:195>,
		<chisel:blocklead:*>,
		<thermalfoundation:material:132>,
		<thermalfoundation:material:68>,
		<thermalfoundation:storage:4>,
		<thermalfoundation:material:260>,
		<thermalfoundation:material:324>,
		<thermalfoundation:material:196>,
		<chisel:blockaluminum:*>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage planets drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["planets"]))
    .matchDrops([
        <mysticalagriculture:crafting>,
        <thermalfoundation:ore:6>,
		<thermalfoundation:material:70>,
		<thermalfoundation:material:134>,
		<thermalfoundation:material:198>,
		<thermalfoundation:material:262>,
		<thermalfoundation:material:326>,
		<thermalfoundation:storage:6>,
		<chisel:blockplatinum:*>,
        <minecraft:enchanting_table>,
		<thermalfoundation:ore:8>,
		<thermalfoundation:material:72>,
		<thermalfoundation:material:136>,
		<thermalfoundation:material:200>,
		<thermalfoundation:material:264>,
		<thermalfoundation:material:328>,
		<thermalfoundation:storage:8>,
		<thermalfoundation:ore:7>,
		<thermalfoundation:material:71>,
		<thermalfoundation:material:135>,
		<thermalfoundation:material:199>,
		<thermalfoundation:material:263>,
		<thermalfoundation:material:327>,
		<thermalfoundation:storage:7>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage advent drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["planets"]))
    .matchDrops([
        <immersiveengineering:ore:5>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage deepdown drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["deepdown"]))
    .matchDrops([
        <draconicevolution:draconium_ore:*>,
        <draconicevolution:draconium_dust>,
        <draconicevolution:draconium_ingot>,
        <immersiveengineering:metal:5>,
        <immersiveengineering:metal:14>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//stage disabled drops
rules.add(Dropt.rule()
    .matchHarvester(Dropt.harvester().gameStages("BLACKLIST", "ALL", ["disabled"]))
    .matchDrops([
        <blue_skies:everdawn_emerald_ore>,
		<blue_skies:everbright_emerald_ore>,
        <goodnightsleep:rainbow_ore>,
        <lockyzextradimensionsmod:alternateore>,
        <lockyzextradimensionsmod:cloudore>,
        <lockyzextradimensionsmod:flintore>,
        <lockyzextradimensionsmod:interdimensionalnugget>,
		<lockyzextradimensionsmod:interdimensionalore>,
        <minecraft:anvil:*>, 
        <minecraft:diamond_helmet>,
		<minecraft:diamond_chestplate>,
		<minecraft:diamond_leggings>,
		<minecraft:diamond_boots>,
        <minecraft:furnace:*>,
        <twilightforest:magic_beans>,
		<twilightforest:uncrafting_table>,
        <mekanism:oreblock:1>,
        <mekanism:oreblock:2>
    ])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop()));

//remove drops from randomite and other very bad blocks
rules.add(Dropt.rule()
    .matchBlocks([
        "cavern:cave_block:4"
    ])
    .replaceStrategy("REPLACE_ALL")
    .addDrop(Dropt.drop()));