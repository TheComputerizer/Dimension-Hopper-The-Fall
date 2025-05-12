#reloadable

import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Stacks as Stack;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static shapedHolders as Holder[] = [
   //artisanautomation
   Util.upgrade(<artisanautomation:upgrade_speed>.withTag({ArtisanWorktables: {Upgrade: {Speed: 0.50, EnergyUsage: -1.00}}}), [
       <moreplates:empowered_emeradic_gear>,
       <mekanism:speedupgrade>,
       <actuallyadditions:item_potion_ring_advanced>]), //speed upgrade

   Util.upgrade(<artisanautomation:upgrade_fluid_capacity>.withTag({ArtisanWorktables: {Upgrade: {FluidCapacity: 0.50}}}), [
       <mekanism:machineblock2:11>.withTag({tier: 1}), 
       <enderio:item_liquid_conduit:2>, 
       <randomthings:reinforcedenderbucket>]), //fluid capacity upgrade

   Util.upgrade(<artisanautomation:upgrade_energy_capacity>.withTag({ArtisanWorktables: {Upgrade: {EnergyCapacity: 1.00}}}), [
       <mekanism:energyupgrade>, 
       <enderio:item_endergy_conduit:8>, 
       <actuallyadditions:item_battery_quintuple>.withTag({Energy: 2000000})]), //energy capacity upgrade

   Util.upgrade(<artisanautomation:upgrade_auto_import_export_items>.withTag({ArtisanWorktables: {Upgrade: {AutoImportItems: true,AutoExportItems: true}}}), [
       <actuallyadditions:block_giant_chest>, 
       <integratedtunnels:part_importer_item_item>, 
       <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]), //auto item import/export upgrade
       
   Util.upgrade(<artisanautomation:upgrade_auto_import_fluids>.withTag({ArtisanWorktables: {Upgrade: {AutoImportFluids: true}}}), [
       <mekanism:machineblock2:11>.withTag({tier: 0}),
       <integratedtunnels:part_importer_fluid_item>,
       <enderio:item_liquid_conduit:2>]), //auto fluid import upgrade

   Util.upgrade(<artisanautomation:upgrade_tool_repair>.withTag({ArtisanWorktables: {ToolUpgrade: {DurabilityRepaired: 0.5, EnergyUsage: 10.0}}}), [
       <actuallyadditions:block_item_repairer>, 
       <storagedrawers:tape>, 
       <tp:repair_tablet>]), //tool repair upgrade

    //artisanworktables
   Util.table(<artisanworktables:worktable:13>, [
        <minecraft:leather>,
        <ore:logWood>,
        <minecraft:leather>,
        <minecraft:leather>], 5), //tanners worktable

   Util.table(<artisanworktables:worktable:1>, [
        <tconstruct:pattern>,
        <ore:logWood>,
        <ore:plankWood>,
        <ore:plankWood>], 5), //carpenters worktable

   Util.table(<artisanworktables:worktable:2>, [
       <minecraft:stone_slab>,
       <minecraft:nether_brick>,
       <minecraft:brick_block>,
       <minecraft:brick_block>], 10), //masons worktable

   Util.table(<artisanworktables:worktable:3>, [
       <thermalfoundation:material:32>,
       <tconstruct:seared:3>,
       <minecraft:iron_block>,
       <minecraft:iron_block>], 15), //blacksmiths worktable

   Util.table(<artisanworktables:worktable:4>, [
       <minecraft:diamond>,
       <minecraft:obsidian>,
       <minecraft:wool:15>,
       <minecraft:wool:14>], 25), //jewelers worktable

   Util.table(<artisanworktables:worktable:7>, [
       <naturesaura:ender_crate>,
       <botania:quartztypedark>,
       <psi:psi_decorative:1>,
       <botania:dye:11>], 7), //mages worktable

   Util.table(<artisanworktables:worktable:6>, [
       <thermalfoundation:material:320>,
       <minecraft:nether_brick>,
       <immersiveengineering:metal_decoration0:4>,
       <thermalfoundation:material:32>], 10), //engineers worktable

   Util.table(<artisanworktables:worktable:8>, [
       <tconstruct:pattern>,
       <ore:logWood>,
       <ore:bookshelf>,
       <ore:plankWood>], 5), //scribes worktable

   Util.table(<artisanworktables:worktable:12>, [
       <minecraft:dye:4>,
       <immersiveengineering:stone_decoration:2>,
       <ore:plankWood>,
       <minecraft:lapis_block>], 7), //designers worktable

   Util.table(<artisanworktables:worktable:11>, [
       <ore:artisansCuttingBoard>,
       <minecraft:nether_brick>,
       <minecraft:crafting_table>,
       <minecraft:stone_slab>], 10), //chefs worktable

   Util.table(<artisanworktables:worktable:9>, [
       <minecraft:glass_bottle>,
       <tconstruct:seared:3>,
       <apotheosis:hellshelf>,
       <thermalfoundation:storage_alloy>], 20), //chemists worktable

   Util.simpleShaped(<artisanworktables:workshop:5>, "plus", [
       <artisanworktables:worktable:5>,
       <thebetweenlands:life_crystal>,
       <thebetweenlands:valonite_block>])
       .addTools({<ore:artisansFramingHammer>:100})
       .addFluids([<liquid:stellar_alloy>*3888]), //basic workshop

   Util.simpleShaped(<thermalfoundation:material:256>, "plus", [
       <thermalfoundation:material:32>,
       <thermalfoundation:material:320>,
       null])
       .addTools({<ore:artisansHammer>:4}), //copper gear

   Util.bigShaped(<artisanworktables:design_pattern>, "ringplusalt", [
       <industrialforegoing:artificial_dye>, 
       <tconstruct:pattern>,
       <immersiveengineering:blueprint>.withTag({blueprint: "electrode"}),
       <industrialforegoing:artificial_dye:11>,
       <immersiveengineering:blueprint>.withTag({blueprint: "bullet"})])
       .addTools({<ore:artisansHammer>:11,<ore:artisansCutters>:11,<ore:artisansPencil>:11})
       .addFluids([<liquid:cobalt>*144]), //design pattern

   Util.bigShaped(<artisanworktables:workshop:12>, "ringplusalt", [
       <artisanworktables:design_pattern>,
       <tconstruct:pattern>,
       <artisanworktables:workshop:5>,
       <industrialforegoing:artificial_dye:11>,
       <industrialforegoing:artificial_dye>])
       .addTools({<ore:artisansHammer>:111,<ore:artisansCutters>:111,<ore:artisansFramingHammer>:111})
       .addFluids([<liquid:cobalt>*1296]), //designers workshop

   Util.simpleShaped(<artisanworktables:toolbox>, "plus", [
       <immersiveengineering:wooden_device0:5>,
       <thermalfoundation:material:320>,
       <ore:plankTreatedWood>])
       .addTools({<ore:artisansDriver>:25}) //toolbox
] as Holder[];


static shapelessHolders as Holder[] = [
   //avaritia
   Util.shapeless(<avaritia:resource:7>*2, [Stack.recordedDisc()])
      .addTools({<ore:artisansHammer>:500,<ore:artisansFile>:500,<ore:artisansPliers>:500})
      .addFluids([<liquid:genetic_chaos_fluid>*1000])
      .addExtras([<avaritia:resource:7>, <avaritia:resource:7>, <avaritia:resource:7>])
      .addNumbers([75,50,25]), //music disc fragment

    //dusts
    Util.dust(<ore:oreIron>,0,2), //iron dust
    Util.dust(<ore:oreNetherCopper>,64,2), //copper dust
    Util.dust(<ore:oreCopper>,64,2), //copper dust
    Util.dust(<ore:oreGold>,1,1), //gold dust
    Util.dust(<ore:oreNetherGold>,1,1), //gold dust
    Util.dust(<ore:oreTin>,65,3), //tin dust
    Util.dust(<ore:oreSilver>,66,3), //silver dust
    Util.dust(<ore:oreLead>,67,3), //lead dust
    Util.dust(<ore:oreAluminum>,68,3), //aluminum dust
    Util.dust(<ore:oreNickel>,69,3), //nickel dust
    Util.dust(<ore:orePlatinum>,70,4), //platinum dust
    Util.dust(<ore:oreIridium>,71,5), //iridium dust

    //plates
    Util.plate(<minecraft:iron_ingot>,<thermalfoundation:material:32>,10), //iron plate
    Util.plate(<actuallyadditions:item_crystal:5>,<moreplates:enori_plate>,11), //enori plate
    Util.plate(<minecraft:gold_ingot>,<thermalfoundation:material:33>,3), //gold plate
    Util.plate(<tp:quartz_ingot>,<moreplates:nether_quartz_plate>,9), //quartz plate
    Util.plate(<tp:redstone_ingot>,<moreplates:redstone_plate>,1), //redstone plate
    Util.plate(<tp:lapis_ingot>,<moreplates:lapis_lazuli_plate>,1), //lapis plate
    Util.plate(<actuallyadditions:block_crystal>,<moreplates:restonia_plate>,1), //resonia plate
    Util.plate(<actuallyadditions:block_crystal:1>,<moreplates:palis_plate>,1), //palis plate
    Util.plate(<enderio:item_alloy_ingot:9>,<moreplates:iron_alloy_plate>,1), //iron alloy plate
    Util.plate(<thermalfoundation:material:128>,<thermalfoundation:material:320>,1), //copper plate

    //minecraft
    Util.singleton(<minecraft:ender_pearl>,<minecraft:ender_pearl>,<ore:artisansGrimoire>,3) //disenchanted ender pearl
] as Holder[];


function run() {
    Artisans.build("basic", shapedHolders, shapelessHolders);
}