#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("engineer")
  .setShaped([
    [<thermalfoundation:material:320>, <immersiveengineering:stone_decoration:8>, <thermalfoundation:material:320>],
    [<immersiveengineering:material:26>, <immersiveengineering:material:26>, <immersiveengineering:material:26>],
    [<immersiveengineering:stone_decoration:8>, <thermalfoundation:material:320>, <immersiveengineering:stone_decoration:8>]])
  .setFluid(<liquid:copper> * 72)
  .addTool(<ore:artisansSolderer>, 25)
  .addOutput(<immersiveengineering:material:27>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<thermalfoundation:material:32>, <immersiveengineering:material:27>, <thermalfoundation:material:32>],
    [<immersiveengineering:metal_decoration0:5>, <artisanworktables:worktable:6>, <immersiveengineering:metal_decoration0:5>],
    [<cavern:cave_block:6>, null, <cavern:cave_block:6>]])
  .setFluid(<liquid:superhot_magma> * 1000)
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<artisanworktables:workstation:6>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:27>, <opencomputers:material:4>, <immersiveengineering:material:27>],
    [<opencomputers:material:4>, <calculator:circuitboard:7>, <opencomputers:material:4>],
    [<immersiveengineering:material:27>, <opencomputers:material:4>, <immersiveengineering:material:27>]])
  .setFluid(<liquid:pulsating_iron> * 144)
  .addTool(<ore:artisansDriver>, 7)
  .addTool(<ore:artisansSolderer>, 7)
  .addOutput(<mekanism:controlcircuit>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>],
    [<mekanism:controlcircuit>, <forestry:thermionic_tubes:13>, <mekanism:controlcircuit>],
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>]])
  .setFluid(<liquid:redstone_alloy> * 288)
  .addTool(<ore:artisansDriver>, 35)
  .addTool(<ore:artisansSolderer>, 35)
  .addOutput(<mekanism:controlcircuit:1>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>],
    [<calculator:enrichedgold>, <enderio:item_material:77>, <calculator:enrichedgold>],
    [<extendedcrafting:material:1>, <calculator:redstoneingot>, <extendedcrafting:material:1>]])
  .setFluid(<liquid:liquidslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<opencomputers:material:6>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>],
    [<calculator:enrichedgold>, <enderio:item_material:77>, <calculator:enrichedgold>],
    [<extendedcrafting:material:1>, <calculator:redstoneingot>, <extendedcrafting:material:1>]])
  .setFluid(<liquid:blueslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<opencomputers:material:6>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>],
    [<calculator:enrichedgold>, <enderio:item_material:77>, <calculator:enrichedgold>],
    [<extendedcrafting:material:1>, <calculator:redstoneingot>, <extendedcrafting:material:1>]])
  .setFluid(<liquid:purpleslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addOutput(<opencomputers:material:6>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<calculator:redstoneingot>, <opencomputers:material:6>, <calculator:redstoneingot>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]])
  .setFluid(<liquid:liquidslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:7>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<calculator:redstoneingot>, <opencomputers:material:6>, <calculator:redstoneingot>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]])
  .setFluid(<liquid:blueslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:7>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<calculator:redstoneingot>, <opencomputers:material:6>, <calculator:redstoneingot>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]])
  .setFluid(<liquid:purpleslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:7>*4)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>],
    [<extendedcrafting:material:1>, <opencomputers:material:7>, <extendedcrafting:material:1>],
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>]])
  .setFluid(<liquid:liquidslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:8>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>],
    [<extendedcrafting:material:1>, <opencomputers:material:7>, <extendedcrafting:material:1>],
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>]])
  .setFluid(<liquid:blueslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:8>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>],
    [<extendedcrafting:material:1>, <opencomputers:material:7>, <extendedcrafting:material:1>],
    [<minecraft:gold_nugget>, <calculator:enrichedgold>, <minecraft:gold_nugget>]])
  .setFluid(<liquid:purpleslime> * 250)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:8>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>],
    [<extendedcrafting:material:1>, <opencomputers:material:8>, <extendedcrafting:material:1>],
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>]])
  .setFluid(<liquid:liquidslime> * 500)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:9>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>],
    [<extendedcrafting:material:1>, <opencomputers:material:8>, <extendedcrafting:material:1>],
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>]])
  .setFluid(<liquid:blueslime> * 500)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:9>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>],
    [<extendedcrafting:material:1>, <opencomputers:material:8>, <extendedcrafting:material:1>],
    [<opencomputers:material:29>, <opencomputers:material:29>, <opencomputers:material:29>]])
  .setFluid(<liquid:purpleslime> * 500)
  .addTool(<ore:artisansSolderer>, 1)
  .addTool(<ore:artisansDriver>, 1)
  .addOutput(<opencomputers:material:9>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <appliedenergistics2:material:10>, <mekanism:controlcircuit>],
    [<appliedenergistics2:material:10>, <appliedenergistics2:material:22>, <appliedenergistics2:material:10>],
    [<mekanism:controlcircuit>, <appliedenergistics2:material:10>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:35>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <aeadditions:certustank>, <mekanism:controlcircuit>],
    [<appliedenergistics2:material:10>, <appliedenergistics2:material:22>, <appliedenergistics2:material:10>],
    [<mekanism:controlcircuit>, <appliedenergistics2:material:10>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:54>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <galacticraftcore:oil_canister_partial:1001>, <mekanism:controlcircuit>],
    [<appliedenergistics2:material:10>, <appliedenergistics2:material:22>, <appliedenergistics2:material:10>],
    [<mekanism:controlcircuit>, <appliedenergistics2:material:10>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<aeadditions:storage.component:7>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <thermalfoundation:material:323>, <mekanism:controlcircuit>],
    [<appliedenergistics2:material:35>, <appliedenergistics2:material:22>, <appliedenergistics2:material:35>],
    [<mekanism:controlcircuit>, <appliedenergistics2:material:35>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:36>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <mekanism:machineblock2:11>, <mekanism:controlcircuit>],
    [<appliedenergistics2:material:54>, <appliedenergistics2:material:22>, <appliedenergistics2:material:54>],
    [<mekanism:controlcircuit>, <appliedenergistics2:material:54>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:55>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit>, <galacticraftcore:oil_canister_partial:1001>, <mekanism:controlcircuit>],
    [<aeadditions:storage.component:7>, <appliedenergistics2:material:22>, <aeadditions:storage.component:7>],
    [<mekanism:controlcircuit>, <aeadditions:storage.component:7>, <mekanism:controlcircuit>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<aeadditions:storage.component:8>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <galacticraftcore:item_basic_moon:1>, <mekanism:controlcircuit:1>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:material:22>, <appliedenergistics2:material:36>],
    [<mekanism:controlcircuit:1>, <appliedenergistics2:material:36>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:37>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <mekanism:machineblock2:11>.withTag({tier: 1}), <mekanism:controlcircuit:1>],
    [<appliedenergistics2:material:55>, <appliedenergistics2:material:22>, <appliedenergistics2:material:55>],
    [<mekanism:controlcircuit:1>, <appliedenergistics2:material:55>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:56>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <galacticraftplanets:methane_canister_partial:1>, <mekanism:controlcircuit:1>],
    [<aeadditions:storage.component:8>, <appliedenergistics2:material:22>, <aeadditions:storage.component:8>],
    [<mekanism:controlcircuit:1>, <aeadditions:storage.component:8>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<aeadditions:storage.component:9>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>],
    [<mekanism:controlcircuit:1>, <forestry:thermionic_tubes:10>, <mekanism:controlcircuit:1>],
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>]])
  .setFluid(<liquid:refinedobsidian> * 576)
  .addTool(<ore:artisansDriver>, 79)
  .addTool(<ore:artisansSolderer>, 79)
  .addOutput(<mekanism:controlcircuit:2>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>],
    [<mekanism:controlcircuit:2>, <silentgems:gem:37>, <mekanism:controlcircuit:2>],
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>]])
  .setFluid(<liquid:draconium> * 1152)
  .addTool(<ore:artisansDriver>, 253)
  .addTool(<ore:artisansSolderer>, 253)
  .addTool(<ore:artisansCutters>, 253)
  .addOutput(<mekanism:controlcircuit:3>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<galacticraftplanets:item_basic_mars:5>, <mekanism:controlcircuit:1>, <galacticraftplanets:item_basic_mars:5>],
    [<contenttweaker:divine_large_circuit>, <artisanworktables:workstation:6>, <contenttweaker:divine_large_circuit>],
    [<aoa3:lyon_block>, null, <aoa3:lyon_block>]])
  .setFluid(<liquid:ghoulish> * 8000)
  .addTool(<ore:artisansDriver>, 468)
  .addTool(<ore:artisansSolderer>, 468)
  .addOutput(<artisanworktables:workshop:6>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <aoa3:rainbow_druse>, <mekanism:controlcircuit:1>],
    [<appliedenergistics2:material:37>, <appliedenergistics2:material:22>, <appliedenergistics2:material:37>],
    [<mekanism:controlcircuit:1>, <appliedenergistics2:material:37>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:38>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <aoa3:rainbow_druse>, <mekanism:controlcircuit:1>],
    [<appliedenergistics2:material:56>, <appliedenergistics2:material:22>, <appliedenergistics2:material:56>],
    [<mekanism:controlcircuit:1>, <appliedenergistics2:material:56>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<appliedenergistics2:material:57>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <aoa3:rainbow_druse>, <mekanism:controlcircuit:1>],
    [<aeadditions:storage.component:9>, <appliedenergistics2:material:22>, <aeadditions:storage.component:9>],
    [<mekanism:controlcircuit:1>, <aeadditions:storage.component:9>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 13)
  .addTool(<ore:artisansSolderer>, 13)
  .addOutput(<aeadditions:storage.component:10>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:1>, <aoa3:rainbow_druse>, <mekanism:controlcircuit:1>],
    [<appliedenergistics2:material:37>, <appliedenergistics2:material:22>, <aeadditions:storage.component:9>],
    [<mekanism:controlcircuit:1>, <appliedenergistics2:material:56>, <mekanism:controlcircuit:1>]])
  .setFluid(<liquid:empoweredoil> * 1000)
  .addTool(<ore:artisansDriver>, 130)
  .addTool(<ore:artisansSolderer>, 130)
  .addOutput(<appliedenergistics2:material:32>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <extraplanets:tier6_items:3>, <appliedenergistics2:material:24>, <extraplanets:tier6_items:3>, <mekanism:controlcircuit:2>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:38>, <appliedenergistics2:material:22>, <appliedenergistics2:material:38>, <appliedenergistics2:material:24>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <appliedenergistics2:material:38>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<mekanism:controlcircuit:2>, <extraplanets:tier6_items:3>, <appliedenergistics2:material:24>, <extraplanets:tier6_items:3>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 4000)
  .addTool(<ore:artisansDriver>, 52)
  .addTool(<ore:artisansSolderer>, 52)
  .addTool(<ore:artisansCutters>, 52)
  .addOutput(<aeadditions:storage.component>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <mekanism:machineblock2:11>.withTag({tier: 2}), <appliedenergistics2:material:24>, <mekanism:machineblock2:11>.withTag({tier: 2}), <mekanism:controlcircuit:2>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:57>, <appliedenergistics2:material:22>, <appliedenergistics2:material:57>, <appliedenergistics2:material:24>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <appliedenergistics2:material:57>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<mekanism:controlcircuit:2>, <extraplanets:tier6_items:3>, <appliedenergistics2:material:24>, <extraplanets:tier6_items:3>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 4000)
  .addTool(<ore:artisansDriver>, 52)
  .addTool(<ore:artisansSolderer>, 52)
  .addTool(<ore:artisansCutters>, 52)
  .addOutput(<aeadditions:storage.component:4>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <extraplanets:oxygen_tank_extremely_heavy_full>, <appliedenergistics2:material:24>, <extraplanets:oxygen_tank_extremely_heavy_full>, <mekanism:controlcircuit:2>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:10>, <appliedenergistics2:material:22>, <aeadditions:storage.component:10>, <appliedenergistics2:material:24>],
    [<extraplanets:tier6_items:3>, <appliedenergistics2:material:23>, <aeadditions:storage.component:10>, <appliedenergistics2:material:23>, <extraplanets:tier6_items:3>],
    [<mekanism:controlcircuit:2>, <extraplanets:tier6_items:3>, <appliedenergistics2:material:24>, <extraplanets:tier6_items:3>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 4000)
  .addTool(<ore:artisansDriver>, 52)
  .addTool(<ore:artisansSolderer>, 52)
  .addTool(<ore:artisansCutters>, 52)
  .addOutput(<aeadditions:storage.component:11>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component>, <appliedenergistics2:material:22>, <aeadditions:storage.component>, <appliedenergistics2:material:24>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 8000)
  .addTool(<ore:artisansDriver>, 104)
  .addTool(<ore:artisansSolderer>, 104)
  .addTool(<ore:artisansCutters>, 104)
  .addOutput(<aeadditions:storage.component:1>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:4>, <appliedenergistics2:material:22>, <aeadditions:storage.component:4>, <appliedenergistics2:material:24>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:4>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 8000)
  .addTool(<ore:artisansDriver>, 104)
  .addTool(<ore:artisansSolderer>, 104)
  .addTool(<ore:artisansCutters>, 104)
  .addOutput(<aeadditions:storage.component:5>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:11>, <appliedenergistics2:material:22>, <aeadditions:storage.component:11>, <appliedenergistics2:material:24>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:11>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 8000)
  .addTool(<ore:artisansDriver>, 104)
  .addTool(<ore:artisansSolderer>, 104)
  .addTool(<ore:artisansCutters>, 104)
  .addOutput(<aeadditions:storage.component:12>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component>, <appliedenergistics2:material:22>, <aeadditions:storage.component:11>, <appliedenergistics2:material:24>],
    [<moreplates:awakened_draconium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:8>, <appliedenergistics2:material:23>, <moreplates:awakened_draconium_plate>],
    [<mekanism:controlcircuit:2>, <moreplates:awakened_draconium_plate>, <appliedenergistics2:material:24>, <moreplates:awakened_draconium_plate>, <mekanism:controlcircuit:2>]])
  .setFluid(<liquid:charger> * 8000)
  .addTool(<ore:artisansDriver>, 104)
  .addTool(<ore:artisansSolderer>, 104)
  .addTool(<ore:artisansCutters>, 104)
  .addOutput(<appliedenergistics2:material:33>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:3>, <moreplates:neutronium_plate>, <appliedenergistics2:material:24>, <moreplates:neutronium_plate>, <mekanism:controlcircuit:3>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:1>, <appliedenergistics2:material:22>, <aeadditions:storage.component:1>, <appliedenergistics2:material:24>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:1>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<mekanism:controlcircuit:3>, <moreplates:neutronium_plate>, <appliedenergistics2:material:24>, <moreplates:neutronium_plate>, <mekanism:controlcircuit:3>]])
  .setFluid(<liquid:charger> * 16000)
  .addTool(<ore:artisansDriver>, 208)
  .addTool(<ore:artisansSolderer>, 208)
  .addTool(<ore:artisansCutters>, 208)
  .addOutput(<aeadditions:storage.component:2>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:3>, <mekanism:machineblock2:11>.withTag({tier: 3}), <appliedenergistics2:material:24>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:controlcircuit:3>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:5>, <appliedenergistics2:material:22>, <aeadditions:storage.component:5>, <appliedenergistics2:material:24>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:5>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<mekanism:controlcircuit:3>, <moreplates:neutronium_plate>, <appliedenergistics2:material:24>, <moreplates:neutronium_plate>, <mekanism:controlcircuit:3>]])
  .setFluid(<liquid:charger> * 16000)
  .addTool(<ore:artisansDriver>, 208)
  .addTool(<ore:artisansSolderer>, 208)
  .addTool(<ore:artisansCutters>, 208)
  .addOutput(<aeadditions:storage.component:6>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:3>, <mekanism:gastank>.withTag({tier: 3, display: {Name: "Ultimate Gas Tank"}, mekData: {config2: [1, 1, 2, 1, 1, 1] as byte[] as byte[], config3: [2, 1, 0, 0, 0, 0] as byte[] as byte[], ownerUUID: "657ac717-f216-4883-81b7-d7a02d427bd7", sideDataStored: 1 as byte, strictInput: 0 as byte, security: 0, ejecting2: 1 as byte, inputColors1: -1, inputColors0: -1, ejecting3: 0 as byte, stored: {amount: 512000, gasName: "fusionfuel"}, inputColors5: -1, inputColors4: -1, inputColors3: -1, Items: [], inputColors2: -1}}), <appliedenergistics2:material:24>, <mekanism:gastank>.withTag({tier: 3, display: {Name: "Ultimate Gas Tank"}, mekData: {config2: [1, 1, 2, 1, 1, 1] as byte[] as byte[], config3: [2, 1, 0, 0, 0, 0] as byte[] as byte[], ownerUUID: "657ac717-f216-4883-81b7-d7a02d427bd7", sideDataStored: 1 as byte, strictInput: 0 as byte, security: 0, ejecting2: 1 as byte, inputColors1: -1, inputColors0: -1, ejecting3: 0 as byte, stored: {amount: 512000, gasName: "fusionfuel"}, inputColors5: -1, inputColors4: -1, inputColors3: -1, Items: [], inputColors2: -1}}), <mekanism:controlcircuit:3>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:12>, <appliedenergistics2:material:22>, <aeadditions:storage.component:12>, <appliedenergistics2:material:24>],
    [<moreplates:neutronium_plate>, <appliedenergistics2:material:23>, <aeadditions:storage.component:12>, <appliedenergistics2:material:23>, <moreplates:neutronium_plate>],
    [<mekanism:controlcircuit:3>, <moreplates:neutronium_plate>, <appliedenergistics2:material:24>, <moreplates:neutronium_plate>, <mekanism:controlcircuit:3>]])
  .setFluid(<liquid:charger> * 16000)
  .addTool(<ore:artisansDriver>, 208)
  .addTool(<ore:artisansSolderer>, 208)
  .addTool(<ore:artisansCutters>, 208)
  .addOutput(<aeadditions:storage.component:13>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:3>, <extendedcrafting:material:19>, <appliedenergistics2:material:24>, <extendedcrafting:material:19>, <mekanism:controlcircuit:3>],
    [<extendedcrafting:material:32>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <extendedcrafting:material:32>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:2>, <appliedenergistics2:material:22>, <aeadditions:storage.component:2>, <appliedenergistics2:material:24>],
    [<extendedcrafting:material:32>, <appliedenergistics2:material:23>, <aeadditions:storage.component:2>, <appliedenergistics2:material:23>, <extendedcrafting:material:32>],
    [<mekanism:controlcircuit:3>, <extendedcrafting:material:32>, <appliedenergistics2:material:24>, <extendedcrafting:material:32>, <mekanism:controlcircuit:3>]])
  .setFluid(<liquid:genetic_chaos_fluid>*16000)
  .addTool(<ore:artisansDriver>, 1234)
  .addTool(<ore:artisansSolderer>, 1234)
  .addTool(<ore:artisansCutters>, 1234)
  .addOutput(<aeadditions:storage.component:3>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<mekanism:controlcircuit:3>, <extendedcrafting:material:19>, <appliedenergistics2:material:24>, <extendedcrafting:material:19>, <mekanism:controlcircuit:3>],
    [<extendedcrafting:material:32>, <appliedenergistics2:material:23>, <appliedenergistics2:material:48>, <appliedenergistics2:material:23>, <extendedcrafting:material:32>],
    [<appliedenergistics2:material:24>, <aeadditions:storage.component:2>, <appliedenergistics2:material:22>, <aeadditions:storage.component:13>, <appliedenergistics2:material:24>],
    [<extendedcrafting:material:32>, <appliedenergistics2:material:23>, <aeadditions:storage.component:6>, <appliedenergistics2:material:23>, <extendedcrafting:material:32>],
    [<mekanism:controlcircuit:3>, <extendedcrafting:material:32>, <appliedenergistics2:material:24>, <extendedcrafting:material:32>, <mekanism:controlcircuit:3>]])
  .setFluid(<liquid:genetic_chaos_fluid>*16000)
  .addTool(<ore:artisansDriver>, 1234)
  .addTool(<ore:artisansSolderer>, 1234)
  .addTool(<ore:artisansCutters>, 1234)
  .addOutput(<appliedenergistics2:material:34>)
  .create();