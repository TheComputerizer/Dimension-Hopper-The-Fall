#priority -1000
#reloadable

import crafttweaker.entity.IEntityDropFunction;
import crafttweaker.item.IItemStack;
import mods.GalacticraftTweaker;

import loottweaker.LootTweaker;

//botania
LootTweaker.getTable("botania:fel_blaze").getPool("main").addItemEntry(<xlfoodmod:cheese>, 1);

//cavern
LootTweaker.getTable("cavern:chests/tower_dungeon").getPool("tower_dungeon_3").addItemEntry(<randomthings:spectrecoil_number>, 1);

//customizeddungeonloot
LootTweaker.getTable("customizeddungeonloot:loot_table_basic").getPool("main").addItemEntry(<enderio:item_material:10>, 1);
LootTweaker.getTable("customizeddungeonloot:loot_table_basic").getPool("main").addItemEntry(<enderio:item_material:20>, 1);
LootTweaker.getTable("customizeddungeonloot:loot_table_advanced").getPool("main").addItemEntry(<enderio:item_material:11>, 1);

//dimdoors

//galacticraft
GalacticraftTweaker.addDungeonLoot(1, <contenttweaker:crazy_zombie_essence>);

//minecraft
<entity:minecraft:wither>.addPlayerOnlyDrop(<psicosts:psi_cell> %100, 1, 1);
LootTweaker.getTable("minecraft:chests/end_city_treasure").addPool("custom", 0, 1, 0, 0).addItemEntry(<portalgun:item_miniature_black_hole>, 1);

//thebetweenlands
LootTweaker.getTable("thebetweenlands:entities/sludge_menace").addPool("key", 1, 1, 0, 0).addItemEntry(<contenttweaker:swamp_key>, 1);

//twilight
LootTweaker.getTable("twilightforest:entities/snow_queen").addPool("key", 1, 1, 0, 0).addItemEntry(<contenttweaker:twilight_key_winter>, 1);
LootTweaker.getTable("twilightforest:entities/hydra").addPool("key", 1, 1, 0, 0).addItemEntry(<contenttweaker:twilight_key_swamp>, 1);
var fire_resistance_stroganoff = <twilightforest:meef_stroganoff>.withTag({Spikes: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1 as byte, Damage: 0 as short}], Potion: "minecraft:fire_resistance", ShowParticles: 1 as byte, Duration: 3600, Id: 12, Amplifier: 0 as byte}]});
LootTweaker.getTable("twilightforest:entities/minoshroom").getPool("meat").addItemEntry(fire_resistance_stroganoff, 3);
LootTweaker.getTable("twilightforest:structures/darktower_boss/rare").addPool("key", 1, 1, 0, 0).addItemEntry(<contenttweaker:twilight_key_forest>, 1);
LootTweaker.getTable("twilightforest:structures/hill_1/ultrarare").getPool("main").addItemEntry(<psicosts:psi_cell>.withTag({PsioCharge: 60000}), 1);
LootTweaker.getTable("twilightforest:structures/hill_2/rare").getPool("main").addItemEntry(<psicosts:psi_cell>.withTag({PsioCharge: 40000}), 1);
LootTweaker.getTable("twilightforest:structures/hill_2/ultrarare").getPool("main").addItemEntry(<psicosts:psi_cell>.withTag({PsioCharge: 60000}), 1);
LootTweaker.getTable("twilightforest:structures/hill_3/rare").getPool("main").addItemEntry(<psicosts:psi_cell>.withTag({PsioCharge: 60000}), 1);
LootTweaker.getTable("twilightforest:structures/hill_3/ultrarare").getPool("main").addItemEntry(<psicosts:psi_cell>.withTag({PsioCharge: 80000}), 1);