#reloadable

var steel = <thermalfoundation:material:160>;
var infinitygrains = <enderio:item_material:20>;
var simplechasis = <enderio:item_material>;
recipes.addShaped("simplemachinechasis",simplechasis, [
[<moreplates:enori_plate>, steel, <moreplates:enori_plate>],
[steel, infinitygrains, steel],
[<moreplates:enori_plate>, steel, <moreplates:enori_plate>]
]);

var ironnugget = <minecraft:iron_nugget>;
var bimetalgear = <enderio:item_material:11>;
recipes.addShaped("infinitybimetalgear",bimetalgear, [
[ironnugget, steel, ironnugget],
[steel, infinitygrains, steel],
[ironnugget, steel, ironnugget]
]);

recipes.addShaped("simplefurnace", <enderio:block_simple_furnace>, [
[<ore:plateIron>, <minecraft:fire_charge>, <ore:plateIron>],
[<overloaded:compressed_cobblestone>, <enderio:item_material>, <overloaded:compressed_cobblestone>],
[<ore:gearStone>, <minecraft:bucket>, <ore:gearStone>]
]);

recipes.addShaped("simplealloy", <enderio:block_simple_alloy_smelter>, [
[<overloaded:compressed_stone>, <minecraft:fire_charge>, <overloaded:compressed_stone>],
[<enderio:block_simple_furnace>, <enderio:item_material>, <enderio:block_simple_furnace>],
[<enderio:item_material:11>, <minecraft:bucket>, <enderio:item_material:11>]
]);

recipes.addShaped("simplesag", <enderio:block_simple_sag_mill>, [
[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
[<enderio:item_alloy_ingot:1>, <enderio:item_material>, <enderio:item_alloy_ingot:1>],
[<ore:gearStone>, <minecraft:piston>, <ore:gearStone>]
]);

recipes.addShaped("energeticgear", <enderio:item_material:12>, [
[<enderio:item_alloy_nugget:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_nugget:1>],
[<enderio:item_alloy_ingot:1>, <enderio:item_material:11>, <enderio:item_alloy_ingot:1>],
[<enderio:item_alloy_nugget:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_nugget:1>]
]);

recipes.addShaped("vibrantgear", <enderio:item_material:13>, [
[<enderio:item_alloy_nugget:2>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_nugget:2>],
[<enderio:item_alloy_ingot:2>, <enderio:item_material:12>, <enderio:item_alloy_ingot:2>],
[<enderio:item_alloy_nugget:2>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_nugget:2>]
]);

recipes.addShaped("darkgear", <enderio:item_material:73>, [
[<enderio:item_alloy_nugget:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_nugget:6>],
[<enderio:item_alloy_ingot:6>, <enderio:item_material:13>, <enderio:item_alloy_ingot:6>],
[<enderio:item_alloy_nugget:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_nugget:6>]
]);

recipes.addShaped("endgear", <moreplates:end_steel_gear>, [
[<enderio:item_alloy_nugget:8>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_nugget:8>],
[<enderio:item_alloy_ingot:8>, <enderio:item_material:73>, <enderio:item_alloy_ingot:8>],
[<enderio:item_alloy_nugget:8>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_nugget:8>]
]);

recipes.addShaped("tank", <enderio:block_tank>, [
[<thermalfoundation:material:32>, <minecraft:iron_bars>, <thermalfoundation:material:32>],
[<minecraft:iron_bars>, <ore:blockGlassHardened>, <minecraft:iron_bars>],
[<thermalfoundation:material:32>, <minecraft:iron_bars>, <thermalfoundation:material:32>]
]);

recipes.addShaped("pressuretank", <enderio:block_tank:1>, [
[<moreplates:dark_steel_plate>, <enderio:block_dark_iron_bars>, <moreplates:dark_steel_plate>],
[<enderio:block_dark_iron_bars>, <enderio:block_tank>, <enderio:block_dark_iron_bars>],
[<moreplates:dark_steel_plate>, <enderio:block_dark_iron_bars>, <moreplates:dark_steel_plate>]
]);

recipes.addShaped("endsteelchessis", <enderio:item_material:66>, [
[<moreplates:end_steel_plate>, <enderio:block_end_iron_bars>, <moreplates:end_steel_plate>],
[<enderio:block_end_iron_bars>, <enderio:block_infinity>, <enderio:block_end_iron_bars>],
[<moreplates:end_steel_plate>, <enderio:block_end_iron_bars>, <moreplates:end_steel_plate>]
]);

recipes.addShaped("endergyExchangerCoreNanoReplace", <exchangers:eio_endergy_exchanger_core_tier2>, [
[<enderio:block_holier_fog>, <enderio:item_alloy_endergy_ingot:6>, <enderio:block_holier_fog>],
[<forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000}), <exchangers:eio_endergy_exchanger_core_tier1>, <forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000})],
[<enderio:block_holier_fog>, <enderio:item_alloy_endergy_ingot:6>, <enderio:block_holier_fog>]
]);