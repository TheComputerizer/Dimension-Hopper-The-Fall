#reloadable

import mods.botaniatweaks.Agglomeration;

//dungeon locator
Agglomeration.addRecipe(<galacticraftcore:dungeonfinder>,
[<appliedenergistics2:sky_compass>,<theaurorian:locator>,<aoa3:show_staff>,<calculator:calculatorlocator>,<calculator:locatormodule>,<tombstone:tablet_of_recall>.withTag({ancient: 1 as byte}),<apotheosis:lucky_foot>,<thebetweenlands:bone_wayfinder>,<magicbees:resource:9>],
10000000,0xFFFFFF,0x000000,<overloaded:nether_star_block>,<overloaded:compressed_sand:9>,<contenttweaker:rocket_block_4>,<chisel:gold:10>,<overloaded:compressed_sand>,<contenttweaker:rocket_block_1>);

//gauge dropper
Agglomeration.addRecipe(<mekanism:gaugedropper>,
[<moreplates:osmiridium_plate>, <botania:bifrostpermpane>, <quark:framed_glass_pane>, <midnight:archaic_glass_pane>, <aether:scatterglass_pane>, <moreplanets:orange_tinted_glass_pane>],
1000000,0xFFFFFF,0x000000,<overloaded:nether_star_block>,<natura:nether_heat_sand>,<mekanismgenerators:reactorglass>,<chisel:gold:10>,<overloaded:compressed_sand>,<natura:nether_glass:1>);

//timer
Agglomeration.addRecipe(<rftools:timer_block>,
[<rftools:machine_base>,<charset:logic_gate>.withTag({logic: "simplelogic:timer", li: 0 as byte}),<darkutils:timer>,<enderio:item_redstone_timer_filter>],
250000,0xFFFFFF,0x000000,<extrautils2:redstoneclock>,<actuallyadditions:block_crystal_empowered>,<appliedenergistics2:fluix_slab>,<minecraft:stone>,<minecraft:redstone_block>,<appliedenergistics2:quartz_slab>);

//transmitter
Agglomeration.addRecipe(<rftools:redstone_transmitter_block>,
[<rftools:machine_base>,<immersiveengineering:wirecoil:5>,<calculator:transmitter>,<thermaldynamics:relay>],
250000,0xFFFFFF,0x000000,<calculator:material:9>,<actuallyadditions:block_crystal_empowered>,<appliedenergistics2:fluix_slab>,<minecraft:stone>,<minecraft:redstone_block>,<appliedenergistics2:quartz_slab>);

//receiver
Agglomeration.addRecipe(<rftools:redstone_receiver_block>,
[<rftools:machine_base>,<immersiveengineering:wirecoil:5>,<calculator:conductormast>,<thermaldynamics:relay>],
250000,0xFFFFFF,0x000000,<calculator:material:9>,<actuallyadditions:block_crystal_empowered>,<appliedenergistics2:fluix_slab>,<minecraft:stone>,<minecraft:redstone_block>,<appliedenergistics2:quartz_slab>);

//sequencer
Agglomeration.addRecipe(<rftools:sequencer_block>,
[<rftools:machine_base>,<thermalexpansion:augment:432>,<randomthings:advancedredstonerepeater>,<genetics:misc:5>],
250000,0xFFFFFF,0x000000,<extrautils2:redstoneclock>,<actuallyadditions:block_crystal_empowered>,<appliedenergistics2:fluix_slab>,<minecraft:stone>,<minecraft:redstone_block>,<appliedenergistics2:quartz_slab>);

//inventory checker
Agglomeration.addRecipe(<rftools:invchecker_block>,
[<rftools:machine_base>,<integrateddynamics:part_inventory_reader_item>,<opencomputers:upgrade:18>,<randomthings:inventorytester>],
250000,0xFFFFFF,0x000000,<randomthings:inventoryrerouter>,<actuallyadditions:block_crystal_empowered>,<appliedenergistics2:fluix_slab>,<minecraft:stone>,<minecraft:redstone_block>,<appliedenergistics2:quartz_slab>);