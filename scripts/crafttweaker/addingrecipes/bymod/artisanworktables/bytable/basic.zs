#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.util as Util;

//tables
table(<minecraft:leather>,<ore:logWood>,<minecraft:leather>,<minecraft:leather>,<artisanworktables:worktable:13>,5);
table(<tconstruct:pattern>,<ore:logWood>,<ore:plankWood>,<ore:plankWood>,<artisanworktables:worktable:1>,5);
table(<minecraft:stone_slab>,<minecraft:nether_brick>,<minecraft:brick_block>,<minecraft:brick_block>,<artisanworktables:worktable:2>,10);
table(<thermalfoundation:material:32>,<tconstruct:seared:3>,<minecraft:iron_block>,<minecraft:iron_block>,<artisanworktables:worktable:3>,15);
table(<minecraft:diamond>,<minecraft:obsidian>,<minecraft:wool:15>,<minecraft:wool:14>,<artisanworktables:worktable:4>,25);
table(<naturesaura:ender_crate>,<botania:quartztypedark>,<psi:psi_decorative:1>,<botania:dye:11>,<artisanworktables:worktable:7>,7);
table(<thermalfoundation:material:320>,<minecraft:nether_brick>,<immersiveengineering:metal_decoration0:4>,<thermalfoundation:material:32>,<artisanworktables:worktable:6>,10);
table(<tconstruct:pattern>,<ore:logWood>,<ore:bookshelf>,<ore:plankWood>,<artisanworktables:worktable:8>,5);
table(<minecraft:dye:4>,<immersiveengineering:stone_decoration:2>,<ore:plankWood>,<minecraft:lapis_block>,<artisanworktables:worktable:12>,7);
table(<ore:artisansCuttingBoard>,<minecraft:nether_brick>,<minecraft:crafting_table>,<minecraft:stone_slab>,<artisanworktables:worktable:11>,10);
table(<minecraft:glass_bottle>,<tconstruct:seared:3>,<apotheosis:hellshelf>,<thermalfoundation:storage_alloy>,<artisanworktables:worktable:9>,20);

function table(top as IIngredient, bottomCorner as IIngredient, side as IIngredient, topCorner as IIngredient, output as IItemStack, durability as int) {
  RecipeBuilder.get("basic")
    .setShaped([
        [topCorner,top,topCorner],
        [side,<artisanworktables:worktable:5>,side],
        [bottomCorner,null,bottomCorner]])
    .addTool(<ore:artisansHammer>,durability)
    .addOutput(output)
    .create();
}

RecipeBuilder.get("basic")
  .setShaped(Util.corners(<artisanworktables:worktable:5>,<thebetweenlands:life_crystal>,<thebetweenlands:valonite_block>))
  .setFluid(<liquid:stellar_alloy> * 3888)
  .addTool(<ore:artisansFramingHammer>, 1000)
  .addOutput(<artisanworktables:workshop:5>)
  .create();

//ores
dust(<ore:oreIron>,<thermalfoundation:material>,2);
dust(<ore:oreNetherCopper>,<thermalfoundation:material:64>,2);
dust(<ore:oreCopper>,<thermalfoundation:material:64>,2);
dust(<ore:oreGold>,<thermalfoundation:material:1>,1);
dust(<ore:oreNetherGold>,<thermalfoundation:material:1>,1);
dust(<ore:oreTin>,<thermalfoundation:material:65>,3);
dust(<ore:oreSilver>,<thermalfoundation:material:66>,3);
dust(<ore:oreLead>,<thermalfoundation:material:67>,3);
dust(<ore:oreAluminum>,<thermalfoundation:material:68>,3);
dust(<ore:oreNickel>,<thermalfoundation:material:69>,3);
dust(<ore:orePlatinum>,<thermalfoundation:material:70>,4);
dust(<ore:oreiridium>,<thermalfoundation:material:71>,5);

function dust(ore as IIngredient, dust as IItemStack, durability as int) {
  RecipeBuilder.get("basic")
  .setShapeless([ore])
  .addTool(<ore:artisansHammer>,durability)
  .addOutput(dust)
  .create();
}

//plates
plate(<minecraft:iron_ingot>,<thermalfoundation:material:32>,10);
plate(<actuallyadditions:item_crystal:5>,<moreplates:enori_plate>,11);
plate(<minecraft:gold_ingot>,<thermalfoundation:material:33>,3);
plate(<tp:quartz_ingot>,<moreplates:nether_quartz_plate>,9);
plate(<tp:redstone_ingot>,<moreplates:redstone_plate>,1);
plate(<tp:lapis_ingot>,<moreplates:lapis_lazuli_plate>,1);
plate(<actuallyadditions:block_crystal>,<moreplates:restonia_plate>,1);
plate(<actuallyadditions:block_crystal:1>,<moreplates:palis_plate>,1);
plate(<enderio:item_alloy_ingot:9>,<moreplates:iron_alloy_plate>,1);
plate(<thermalfoundation:material:128>,<thermalfoundation:material:320>,1);

function plate(material as IIngredient, plate as IItemStack, durability as int) {
  RecipeBuilder.get("basic")
  .setShapeless([material,material,material])
  .addTool(<ore:artisansHammer>,durability)
  .addOutput(plate)
  .create();
}

//disenchanted ender pearl
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:ender_pearl>])
  .addTool(<ore:artisansGrimoire>, 3)
  .addOutput(<minecraft:ender_pearl>)
  .create();


RecipeBuilder.get("basic")
  .setShaped(Util.plus(<thermalfoundation:material:32>,<thermalfoundation:material:320>))
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<thermalfoundation:material:256>)
  .create();

//blank design pattern
RecipeBuilder.get("basic")
  .setShaped(Util.bigRingAlt(<industrialforegoing:artificial_dye>, <tconstruct:pattern>,
    Util.corners(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}),
    <industrialforegoing:artificial_dye:11>,
    <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}))))
  .setFluid(<liquid:cobalt> * 144)
  .addTool(<ore:artisansHammer>, 11)
  .addTool(<ore:artisansCutters>, 11)
  .addTool(<ore:artisansPencil>, 11)
  .addOutput(<artisanworktables:design_pattern>)
  .create();

//designer workshop
RecipeBuilder.get("basic")
  .setShaped(Util.bigRingAlt(<artisanworktables:design_pattern>, <tconstruct:pattern>,
    Util.corners(<artisanworktables:workshop:5>,
    <industrialforegoing:artificial_dye:11>,
    <industrialforegoing:artificial_dye>)))
  .setFluid(<liquid:cobalt> * 1296)
  .addTool(<ore:artisansHammer>, 111)
  .addTool(<ore:artisansCutters>, 111)
  .addTool(<ore:artisansFramingHammer>, 111)
  .addOutput(<artisanworktables:workshop:12>)
  .create();


//speed
upgrade(<artisanautomation:upgrade_speed>.withTag({ArtisanWorktables: {Upgrade: {Speed: 0.50, EnergyUsage: -1.00}}}), 
  <moreplates:empowered_emeradic_gear>, 
  <mekanism:speedupgrade>, 
  <actuallyadditions:item_potion_ring_advanced>);
//fluid capacity
upgrade(<artisanautomation:upgrade_fluid_capacity>.withTag({ArtisanWorktables: {Upgrade: {FluidCapacity: 0.50}}}), 
  <mekanism:machineblock2:11>.withTag({tier: 1}), 
  <enderio:item_liquid_conduit:2>, 
  <randomthings:reinforcedenderbucket>);
//energy capacity
upgrade(<artisanautomation:upgrade_energy_capacity>.withTag({ArtisanWorktables: {Upgrade: {EnergyCapacity: 1.00}}}), 
  <mekanism:energyupgrade>, 
  <enderio:item_endergy_conduit:8>, 
  <actuallyadditions:item_battery_quintuple>.withTag({Energy: 2000000}));
//auto import/export items
upgrade(<artisanautomation:upgrade_auto_import_export_items>.withTag({ArtisanWorktables: {Upgrade: {AutoImportItems: true,AutoExportItems: true}}}), 
  <actuallyadditions:block_giant_chest>, 
  <integratedtunnels:part_importer_item_item>, 
  <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
//auto fluid import
upgrade(<artisanautomation:upgrade_auto_import_fluids>.withTag({ArtisanWorktables: {Upgrade: {AutoImportFluids: true}}}), 
  <mekanism:machineblock2:11>.withTag({tier: 0}),
  <integratedtunnels:part_importer_fluid_item>,
  <enderio:item_liquid_conduit:2>);
//tool repair
upgrade(<artisanautomation:upgrade_tool_repair>.withTag({ArtisanWorktables: {ToolUpgrade: {DurabilityRepaired: 0.5, EnergyUsage: 10.0}}}), 
  <actuallyadditions:block_item_repairer>, 
  <storagedrawers:tape>, 
  <tp:repair_tablet>);

function upgrade(output as IItemStack, center as IIngredient, innerSide as IIngredient, innerCorner as IIngredient) {
  RecipeBuilder.get("basic")
  .setShaped(Util.bigRing(<moreplates:dark_steel_plate>,Util.corners(center,innerSide,innerCorner)))
  .setFluid(<liquid:latex>*16000)
  .addTool(<ore:artisansHammer>,250)
  .addTool(<ore:artisansGrimoire>,250)
  .addTool(<ore:artisansSolderer>,250)
  .addOutput(output)
  .create();
}

//toolbox
RecipeBuilder.get("basic")
  .setShaped(Util.corners(<immersiveengineering:wooden_device0:5>,<thermalfoundation:material:320>,<ore:plankTreatedWood>))
  .addTool(<ore:artisansDriver>, 25)
  .addOutput(<artisanworktables:toolbox>)
  .create();