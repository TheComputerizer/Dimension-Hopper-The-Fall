#priority -500

import mods.ltt.LootTable;

//global
LootTable.removeGlobalItem("actuallyadditions:item_crystal:*");
LootTable.removeGlobalItem("actuallyadditions:item_crystal_empowered:*");
LootTable.removeGlobalItem("actuallyadditions:item_misc");
LootTable.removeGlobalItem("aoa3:carved_rune_direction");
LootTable.removeGlobalItem("aoa3:carved_rune_empowering");
LootTable.removeGlobalItem("aoa3:carved_rune_focus");
LootTable.removeGlobalItem("aoa3:carved_rune_power");
LootTable.removeGlobalItem("aoa3:carved_rune_reality");
LootTable.removeGlobalItem("aoa3:carved_rune_space");
LootTable.removeGlobalItem("aoa3:carved_rune_travel");
LootTable.removeGlobalItem("aoa3:copper_coin");
LootTable.removeGlobalItem("aoa3:jade");
LootTable.removeGlobalItem("aoa3:limonite_ingot");
LootTable.removeGlobalItem("aoa3:rosite_ingot");
LootTable.removeGlobalItem("aoa3:scrap_metal");
LootTable.removeGlobalItem("aoa3:tea_seeds");
LootTable.removeGlobalItem("enderio:item_dark_steel_bow");
LootTable.removeGlobalItem("enderio:item_dark_steel_sword");
LootTable.removeGlobalItem("enderio:item_dark_steel_upgrade");
LootTable.removeGlobalItem("enderio:item_material:*");
LootTable.removeGlobalItem("enderio:item_soul_vial");
LootTable.removeGlobalItem("forestry:scoop");
LootTable.removeGlobalItem("minecraft:anvil:*");
LootTable.removeGlobalItem("minecraft:blaze_powder");
LootTable.removeGlobalItem("minecraft:book");
LootTable.removeGlobalItem("minecraft:bucket");
LootTable.removeGlobalItem("minecraft:diamond");
LootTable.removeGlobalItem("minecraft:diamond_block");
LootTable.removeGlobalItem("minecraft:diamond_boots");
LootTable.removeGlobalItem("minecraft:diamond_chestplate");
LootTable.removeGlobalItem("minecraft:diamond_helmet");
LootTable.removeGlobalItem("minecraft:diamond_leggings");
LootTable.removeGlobalItem("minecraft:emerald");
LootTable.removeGlobalItem("minecraft:emerald_block");
LootTable.removeGlobalItem("minecraft:enchanting_table");
LootTable.removeGlobalItem("minecraft:furnace:*");
LootTable.removeGlobalItem("minecraft:gold_ingot");
LootTable.removeGlobalItem("minecraft:gold_nugget");
LootTable.removeGlobalItem("minecraft:lapis");
LootTable.removeGlobalItem("minecraft:mob_spawner");
LootTable.removeGlobalItem("minecraft:obsidian");
LootTable.removeGlobalItem("minecraft:spawn_egg");
LootTable.removeGlobalItem("minecraft:spawn_egg:1");
LootTable.removeGlobalItem("mysticalagriculture:crafting");
LootTable.removeGlobalItem("rftoolsdim:parcel");
LootTable.removeGlobalItem("silentgems:gem");
LootTable.removeGlobalItem("thermalfoundation:material:*");
LootTable.removeModItem("randomthings");

//actuallyadditions
LootTable.removeEntry("actuallyadditions:engineer_house", "main", "actuallyadditions:crystalBlocks");
LootTable.removeEntry("actuallyadditions:engineer_house", "main", "actuallyadditions:quartz");

//customizeddungeonloot
LootTable.removeEntry("customizeddungeonloot:loot_table_advanced", "main", "minecraft:diamond_sword");
LootTable.removeEntry("customizeddungeonloot:loot_table_nether", "main", "minecraft:diamond_sword");
LootTable.removeEntry("customizeddungeonloot:loot_table_basic", "main", "minecraft:diamond_pickaxe");
LootTable.removeEntry("customizeddungeonloot:loot_table_nether", "main", "minecraft:diamond_pickaxe");


//minecraft
LootTable.removeEntry("minecraft:chests/abandoned_mineshaft", "main", "loot_travelers_backpack_bat");
LootTable.removeEntry("minecraft:chests/woodland_mansion", "main", "minecraft:diamond_hoe");

//twilight
LootTable.removeEntry("twilightforest:entities/minoshroom", "main", "twilightforest:meef_stroganoff");
LootTable.removeEntry("twilightforest:structures/labyrinth_dead_end/rare", "main", "minecraft:blaze_rod");
LootTable.removeEntry("twilightforest:structures/labyrinth_vault/rare", "main", "minecraft:ender_chest");
LootTable.removeEntry("twilightforest:structures/stronghold_boss/common", "main", "twilightforest:knightmetal_pickaxe");
LootTable.removeEntry("twilightforest:structures/hill_2/rare", "main", "twilightforest:uncrafting_table");
LootTable.removeEntry("twilightforest:structures/stronghold_room/rare", "main", "minecraft:bow");
LootTable.removeEntry("twilightforest:structures/stronghold_cache/rare", "main", "minecraft:bow");
LootTable.removePool("twilightforest:entities/questing_ram_rewards", "diamond");
LootTable.removePool("twilightforest:entities/questing_ram_rewards", "emerald");
LootTable.removePool("twilightforest:entities/questing_ram_rewards", "lapis");
LootTable.removePool("twilightforest:entities/questing_ram_rewards", "main");