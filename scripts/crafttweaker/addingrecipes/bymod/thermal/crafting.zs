#reloadable

recipes.addShaped("receptioncoil", <thermalfoundation:material:513>, [
[null, <minecraft:gold_nugget>, <enderio:item_alloy_ingot:3>],
[<minecraft:gold_nugget>, <minecraft:gold_ingot>, <minecraft:gold_nugget>],
[<enderio:item_alloy_ingot:3>, <minecraft:gold_nugget>, null]
]);

recipes.addShaped("transmissioncoil", <thermalfoundation:material:514>, [
[null, <thermalfoundation:material:194>, <enderio:item_alloy_ingot:3>],
[<thermalfoundation:material:194>, <thermalfoundation:material:130>, <thermalfoundation:material:194>],
[<enderio:item_alloy_ingot:3>, <thermalfoundation:material:194>, null]
]);

recipes.addShaped("conductancecoil", <thermalfoundation:material:515>, [
[<enderio:item_alloy_ingot:3>, <thermalfoundation:material:225>, null],
[<thermalfoundation:material:225>, <thermalfoundation:material:161>, <thermalfoundation:material:225>],
[null, <thermalfoundation:material:225>, <enderio:item_alloy_ingot:3>]
]);

recipes.addShaped("sawblade", <thermalfoundation:material:657>, [
[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
[<minecraft:iron_ingot>, <thermalfoundation:storage>, <minecraft:iron_ingot>],
[null, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

recipes.addShaped("hardupgrade", <thermalfoundation:upgrade>, [
[null, <thermalfoundation:material:354>, null],
[<thermalfoundation:material:354>, <thermalfoundation:material:291>, <thermalfoundation:material:354>],
[<enderio:item_basic_capacitor:2>, <thermalfoundation:material:354>, <enderio:item_basic_capacitor:2>]
]);

recipes.addShaped("reinforcedupgrade", <thermalfoundation:upgrade:1>, [
[null, <thermalfoundation:material:353>, null],
[<thermalfoundation:material:353>, <thermalfoundation:material:258>, <thermalfoundation:material:353>],
[<enderio:item_capacitor_crystalline>, <thermalfoundation:material:353>, <enderio:item_capacitor_crystalline>]
]);

recipes.addShaped("signalumupgrade", <thermalfoundation:upgrade:2>, [
[null, <thermalfoundation:material:357>, null],
[<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
[<enderio:item_capacitor_melodic>, <thermalfoundation:material:357>, <enderio:item_capacitor_melodic>]
]);

recipes.addShaped("resonantupgrade", <thermalfoundation:upgrade:3>, [
[null, <thermalfoundation:material:359>, null],
[<thermalfoundation:material:359>, <thermalfoundation:material:294>, <thermalfoundation:material:359>],
[<enderio:item_capacitor_stellar>, <thermalfoundation:material:359>, <enderio:item_capacitor_stellar>]
]);

recipes.addShaped("reinforcedconversion", <thermalfoundation:upgrade:33>, [
[<thermalfoundation:upgrade>, <thermalfoundation:material:353>],
[<thermalfoundation:upgrade:1>, <thermalfoundation:material:353>]
]);

recipes.addShaped("signalumconversion", <thermalfoundation:upgrade:34>, [
[<thermalfoundation:upgrade:1>, <thermalfoundation:material:357>],
[<thermalfoundation:upgrade:2>, <thermalfoundation:material:357>]
]);

recipes.addShaped("resonantconversion", <thermalfoundation:upgrade:35>, [
[<thermalfoundation:upgrade:2>, <thermalfoundation:material:359>],
[<thermalfoundation:upgrade:3>, <thermalfoundation:material:359>]
]);

//fluxducts
recipes.addShaped("leadstone", <thermaldynamics:duct_0>*4, [
[<enderio:item_power_conduit>, <moreplates:redstone_alloy_plate>, <enderio:item_power_conduit>],
[<thermalfoundation:material:323>, <minecraft:glass>, <thermalfoundation:material:323>],
[<enderio:item_power_conduit>, <moreplates:redstone_alloy_plate>, <enderio:item_power_conduit>]
]);
recipes.addShaped("hardened", <thermaldynamics:duct_0:1>*4, [
[<thermaldynamics:duct_0>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0>],
[<thermalfoundation:material:354>, <minecraft:glass>, <thermalfoundation:material:354>],
[<thermaldynamics:duct_0>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0>]
]);
recipes.addShaped("energy", <thermaldynamics:duct_0:6>*4, [
[<thermaldynamics:duct_0:1>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:1>],
[<thermalfoundation:material:353>, <ore:blockGlassHardened>, <thermalfoundation:material:353>],
[<thermaldynamics:duct_0:1>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:1>]
]);
recipes.addShaped("signalum", <thermaldynamics:duct_0:3>*4, [
[<thermaldynamics:duct_0:2>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:2>],
[<thermalfoundation:material:357>, <ore:blockGlassHardened>, <thermalfoundation:material:357>],
[<thermaldynamics:duct_0:2>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:2>]
]);
recipes.addShaped("resonant", <thermaldynamics:duct_0:4>*4, [
[<thermaldynamics:duct_0:3>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:3>],
[<thermalfoundation:material:359>, <ore:blockGlassHardened>, <thermalfoundation:material:359>],
[<thermaldynamics:duct_0:3>, <moreplates:redstone_alloy_plate>, <thermaldynamics:duct_0:3>]
]);
recipes.addShaped("cryo-stabilized", <thermaldynamics:duct_0:9>, [
[<thermaldynamics:duct_0:4>, <ore:blockGlassHardened>, <thermaldynamics:duct_0:4>],
[<ore:blockGlassHardened>, <enderio:item_endergy_conduit:11>, <ore:blockGlassHardened>],
[<thermaldynamics:duct_0:4>, <ore:blockGlassHardened>, <thermaldynamics:duct_0:4>]
]);

recipes.addShaped("servo", <thermalfoundation:material:512>, [
[<calculator:redstoneingot>, <moreplates:reinforced_iron_plate>, <calculator:redstoneingot>],
[null, <moreplates:reinforced_iron_plate>, null],
[<calculator:redstoneingot>, <moreplates:reinforced_iron_plate>, <calculator:redstoneingot>]
]);

recipes.addShaped("gearworkingdie", <thermalexpansion:augment:337>, [
[null, <moreplates:reinforced_iron_gear>, null],
[<moreplates:diamatine_plate>, <thermalfoundation:material:512>, <moreplates:diamatine_plate>],
[null, <minecraft:piston>, null]
]);

recipes.addShaped("wrench", <thermalfoundation:wrench>, [
[null, <thermalfoundation:material:321>, null],
[null, <moreplates:lapis_lazuli_plate>, <thermalfoundation:material:321>],
[<moreplates:lapis_lazuli_plate>, null, null]
]);

recipes.addShaped("multimeter", <thermalfoundation:meter>, [
[<thermalfoundation:material:320>, null, <thermalfoundation:material:320>],
[<thermalfoundation:material:323>, <thermalfoundation:material:515>, <thermalfoundation:material:323>],
[null, <thermalfoundation:material:289>, null]
]);

recipes.addShaped("securitylock", <thermalfoundation:meter>, [
[null, <thermalfoundation:material:357>, null],
[<thermalfoundation:material:357>, <storagedrawers:drawer_key>, <thermalfoundation:material:357>],
[null, <thermalfoundation:material:357>, null]
]);

recipes.addShapeless("redprint", <thermalfoundation:diagram_redprint>, [<enderio:item_material:77>, <calculator:redstoneingot>]);

recipes.addShapeless("phyto-gro", <thermalfoundation:fertilizer>*16, [<thermalfoundation:material:801>, <thermalfoundation:material:769>, <thermalfoundation:material:772>, <ore:itemSlag>]);

recipes.addShapeless("aqua-chow", <thermalfoundation:bait>*6, [<thermalfoundation:material:801>, <ore:slimeball>, <xlfoodmod:dough>]);
recipes.addShapeless("aqua-chow-alt", <thermalfoundation:bait>*6, [<thermalfoundation:material:801>, <thermalfoundation:material:832>, <xlfoodmod:dough>]);

recipes.addShapeless("richaqua-chow", <thermalfoundation:bait:1>*2, [<thermalfoundation:bait>*2, <minecraft:nether_wart>]);

recipes.addShapeless("pulpedbioblend", <thermalfoundation:material:818>*4, [<thermalfoundation:material:816>*3, <thermalfoundation:material:801>]);

recipes.addShaped("drillhead", <thermalfoundation:material:656>, [
[null, <minecraft:iron_ingot>, null],
[<minecraft:iron_ingot>, <thermalfoundation:storage>, <minecraft:iron_ingot>],
[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

recipes.addShaped("toolcasing", <thermalfoundation:material:640>, [
[null, <moreplates:redstone_plate>, null],
[<thermalfoundation:material:33>, <moreplates:redstone_plate>, <thermalfoundation:material:33>],
[<moreplates:redstone_plate>, <thermalfoundation:material:32>, <moreplates:redstone_plate>]
]);

recipes.addShaped("pyrotheumdust", <thermalfoundation:material:1024>, [
[<minecraft:blaze_powder>, <minecraft:blaze_powder>],
[<ore:dustObsidian>, <minecraft:redstone>]
]);

recipes.addShaped("petrotheumdust", <thermalfoundation:material:1027>, [
[<thermalfoundation:material:2053>, <thermalfoundation:material:2053>],
[<ore:dustSulfur>, <minecraft:redstone>]
]);

recipes.addShaped("cryotheumdust", <thermalfoundation:material:1025>, [
[<thermalfoundation:material:2049>, <thermalfoundation:material:2049>],
[<minecraft:snowball>, <minecraft:redstone>]
]);

recipes.addShaped("aerotheumdust", <thermalfoundation:material:1026>, [
[<thermalfoundation:material:2051>, <thermalfoundation:material:2051>],
[<thermalfoundation:material:772>, <minecraft:redstone>]
]);