#reloadable

recipes.addShapeless("meksolarfixer", <mekanismgenerators:generator:5>, [<solarflux:solar_panel_8>]);

recipes.addShaped("mekanismcore", <mekanism:electrolyticcore>, [
[null, <mekanism:dust:2>, null],
[<thermalfoundation:material:64>, <immersiveengineering:material:26>, <thermalfoundation:material>],
[null, <thermalfoundation:material:1>, null]
]);

recipes.addShaped("mekanismspeed", <mekanism:speedupgrade>, [
[<teslacorelib:speed_tier1>, <ore:blockGlassHardened>, <teslacorelib:speed_tier1>],
[<mekanism:atomicalloy>, <mekanism:clump:2>, <mekanism:atomicalloy>],
[<teslacorelib:speed_tier2>, <ore:blockGlassHardened>, <teslacorelib:speed_tier2>]
]);

recipes.addShaped("mekanismenergy", <mekanism:energyupgrade>, [
[<teslacorelib:speed_tier1>, <ore:blockGlassHardened>, <teslacorelib:speed_tier1>],
[<mekanism:atomicalloy>, <mekanism:clump:1>, <mekanism:atomicalloy>],
[<teslacorelib:speed_tier2>, <ore:blockGlassHardened>, <teslacorelib:speed_tier2>]
]);

recipes.addShaped("basicfluidtank", <mekanism:machineblock2:11>.withTag({tier: 0}), [
[<mekanism:controlcircuit>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit>],
[<silentgems:craftingmaterial:30>, <openblocks:tank>, <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit>]
]);

recipes.addShaped("advancedfluidtank", <mekanism:machineblock2:11>.withTag({tier: 1}), [
[<mekanism:controlcircuit:1>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:1>],
[<silentgems:craftingmaterial:30>, <mekanism:machineblock2:11>.withTag({tier: 0}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:1>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:1>]
]);

recipes.addShaped("elitefluidtank", <mekanism:machineblock2:11>.withTag({tier: 2}), [
[<mekanism:controlcircuit:2>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:2>],
[<silentgems:craftingmaterial:30>, <mekanism:machineblock2:11>.withTag({tier: 1}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:2>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:2>]
]);

recipes.addShaped("ultimatefluidtank", <mekanism:machineblock2:11>.withTag({tier: 3}), [
[<mekanism:controlcircuit:3>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:3>],
[<silentgems:craftingmaterial:30>, <mekanism:machineblock2:11>.withTag({tier: 2}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:3>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:3>]
]);

recipes.addShaped("mekanismgastankbasic", <mekanism:gastank>.withTag({tier: 0}), [
[<mekanism:controlcircuit>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit>],
[<silentgems:craftingmaterial:30>, <galacticraftcore:oil_canister_partial:1001>, <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit>]
]);

recipes.addShaped("mekanismgastankadvanced", <mekanism:gastank>.withTag({tier: 1}), [
[<mekanism:controlcircuit:1>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:1>],
[<silentgems:craftingmaterial:30>, <mekanism:gastank>.withTag({tier: 0}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:1>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:1>]
]);

recipes.addShaped("mekanismgastankelite", <mekanism:gastank>.withTag({tier: 2}), [
[<mekanism:controlcircuit:2>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:2>],
[<silentgems:craftingmaterial:30>, <mekanism:gastank>.withTag({tier: 1}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:2>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:2>]
]);

recipes.addShaped("mekanismgastankultimate", <mekanism:gastank>.withTag({tier: 3}), [
[<mekanism:controlcircuit:3>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:3>],
[<silentgems:craftingmaterial:30>, <mekanism:gastank>.withTag({tier: 2}), <silentgems:craftingmaterial:30>],
[<mekanism:controlcircuit:3>, <silentgems:craftingmaterial:30>, <mekanism:controlcircuit:3>]
]);

recipes.addShaped("mekanismstructuralglass", <mekanism:basicblock:10>, [
[null, <moreplates:electrical_steel_plate>, null],
[<moreplates:electrical_steel_plate>, <thermalfoundation:glass_alloy>, <moreplates:electrical_steel_plate>],
[null, <moreplates:electrical_steel_plate>, null]
]);

recipes.addShaped("mekanismreactorglass", <mekanismgenerators:reactorglass>*4, [
[null, <mekanismgenerators:reactor:1>, null],
[<mekanismgenerators:reactor:1>, <mekanism:basicblock:10>, <mekanismgenerators:reactor:1>],
[null, <mekanismgenerators:reactor:1>, null]
]);

recipes.addShaped("mekanismenergytablet", <mekanism:energytablet>, [
[<calculator:redstoneingot>, <moreplates:enriched_gold_plate>, <calculator:redstoneingot>],
[<mekanism:enrichedalloy>, <moreplates:enriched_gold_plate>, <mekanism:enrichedalloy>],
[<calculator:redstoneingot>, <moreplates:enriched_gold_plate>, <calculator:redstoneingot>]
]);

recipes.addShaped("mekanismthermalblock", <mekanism:basicblock2>, [
[<draconicevolution:chaos_shard:2>, <moreplates:electrical_steel_plate>, <draconicevolution:chaos_shard:2>],
[<moreplates:electrical_steel_plate>, <thermalfoundation:storage>, <moreplates:electrical_steel_plate>],
[<draconicevolution:chaos_shard:2>, <moreplates:electrical_steel_plate>, <draconicevolution:chaos_shard:2>]
]);

recipes.addShaped("mekanismthermalvalve", <mekanism:basicblock:15>, [
[null, <mekanism:basicblock2>, null],
[<mekanism:basicblock2>, <mekanism:controlcircuit:3>, <mekanism:basicblock2>],
[null, <mekanism:basicblock2>, null]
]);

recipes.addShaped("mekfilterupgrade", <mekanism:filterupgrade>, [
[<thermalfoundation:material:321>, <ore:blockGlassHardened>, <thermalfoundation:material:321>],
[<mekanism:atomicalloy>, <mekanism:clump:4>, <mekanism:atomicalloy>],
[<thermalfoundation:material:321>, <ore:blockGlassHardened>, <thermalfoundation:material:321>]
]);

recipes.addShaped("mekmufflingupgrade", <mekanism:filterupgrade>, [
[<thermalfoundation:material:352>, <ore:blockGlassHardened>, <thermalfoundation:material:352>],
[<mekanism:atomicalloy>, <jaopca:mekanism_clump.steel>, <mekanism:atomicalloy>],
[<thermalfoundation:material:352>, <ore:blockGlassHardened>, <thermalfoundation:material:352>]
]);

recipes.addShaped("mekgasupgrade", <mekanism:gasupgrade>, [
[<galacticraftcore:item_basic_moon:1>, <ore:blockGlassHardened>, <galacticraftcore:item_basic_moon:1>],
[<mekanism:atomicalloy>, <jaopca:mekanism_clump.meteoric_iron>, <mekanism:atomicalloy>],
[<galacticraftcore:item_basic_moon:1>, <ore:blockGlassHardened>, <galacticraftcore:item_basic_moon:1>]
]);

recipes.addShaped("mekanchorupgrade", <mekanism:anchorupgrade>, [
[<moreplates:diamond_plate>, <ore:blockGlassHardened>, <moreplates:diamond_plate>],
[<mekanism:atomicalloy>, <opencomputers:upgrade:4>, <mekanism:atomicalloy>],
[<moreplates:diamond_plate>, <ore:blockGlassHardened>, <moreplates:diamond_plate>]
]);

recipes.addShaped("mekbasicpressure", <mekanism:transmitter:2>.withTag({tier: 0}), [
[<extraplanets:tier1_pressure_layer>, <enderio:item_liquid_conduit>, <extraplanets:tier1_pressure_layer>]
]);

recipes.addShaped("mekadvancedpressure", <mekanism:transmitter:2>.withTag({tier: 1}), [
[<extraplanets:tier2_pressure_layer>, <mekanism:transmitter:2>.withTag({tier: 0}), <extraplanets:tier2_pressure_layer>]
]);

recipes.addShaped("mekelitepressure", <mekanism:transmitter:2>.withTag({tier: 2}), [
[<extraplanets:tier3_pressure_layer>, <mekanism:transmitter:2>.withTag({tier: 1}), <extraplanets:tier3_pressure_layer>]
]);

recipes.addShaped("mekultimatepressure", <mekanism:transmitter:2>.withTag({tier: 3}), [
[<extraplanets:tier4_pressure_layer>, <mekanism:transmitter:2>.withTag({tier: 2}), <extraplanets:tier4_pressure_layer>]
]);

recipes.addShaped("mekbasicheat", <mekanism:transmitter:6>.withTag({tier: 0}), [
[<thebetweenlands:items_misc:23>, <galacticraftcore:basic_item:6>, <thebetweenlands:items_misc:23>]
]);

recipes.addShaped("mekadvancedheat", <mekanism:transmitter:6>.withTag({tier: 1}), [
[<mekanism:enrichedalloy>, <mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:enrichedalloy>]
]);

recipes.addShaped("mekeliteheat", <mekanism:transmitter:6>.withTag({tier: 2}), [
[<mekanism:reinforcedalloy>, <mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:reinforcedalloy>]
]);

recipes.addShaped("mekultimateheat", <mekanism:transmitter:6>.withTag({tier: 3}), [
[<mekanism:atomicalloy>, <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:atomicalloy>]
]);