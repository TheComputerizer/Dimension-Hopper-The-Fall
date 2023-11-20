#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IRecipeFunction;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.grid as Shaper;
import scripts.crafttweaker.early.util.tables as Util;

static shapedBuilders as Holder[] = [
    Util.table(<artisanworktables:worktable:13>, [
            <minecraft:leather>,
            <ore:logWood>,
            <minecraft:leather>,
            <minecraft:leather>], 5),
    Util.table(<artisanworktables:worktable:1>, [
            <tconstruct:pattern>,
            <ore:logWood>,
            <ore:plankWood>,
            <ore:plankWood>], 5),
    Util.table(<artisanworktables:worktable:2>, [
            <minecraft:stone_slab>,
            <minecraft:nether_brick>,
            <minecraft:brick_block>,
            <minecraft:brick_block>], 10),
    Util.table(<artisanworktables:worktable:3>, [
            <thermalfoundation:material:32>,
            <tconstruct:seared:3>,
            <minecraft:iron_block>,
            <minecraft:iron_block>], 15),
    Util.table(<artisanworktables:worktable:4>, [
            <minecraft:diamond>,
            <minecraft:obsidian>,
            <minecraft:wool:15>,
            <minecraft:wool:14>], 25),
    Util.table(<artisanworktables:worktable:7>, [
            <naturesaura:ender_crate>,
            <botania:quartztypedark>,
            <psi:psi_decorative:1>,
            <botania:dye:11>], 7),
    Util.table(<artisanworktables:worktable:6>, [
            <thermalfoundation:material:320>,
            <minecraft:nether_brick>,
            <immersiveengineering:metal_decoration0:4>,
            <thermalfoundation:material:32>], 10),
    Util.table(<artisanworktables:worktable:8>, [
            <tconstruct:pattern>,
            <ore:logWood>,
            <ore:bookshelf>,
            <ore:plankWood>], 5),
    Util.table(<artisanworktables:worktable:12>, [
            <minecraft:dye:4>,
            <immersiveengineering:stone_decoration:2>,
            <ore:plankWood>,
            <minecraft:lapis_block>], 7),
    Util.table(<artisanworktables:worktable:11>, [
            <ore:artisansCuttingBoard>,
            <minecraft:nether_brick>,
            <minecraft:crafting_table>,
            <minecraft:stone_slab>], 10),
    Util.table(<artisanworktables:worktable:9>, [
            <minecraft:glass_bottle>,
            <tconstruct:seared:3>,
            <apotheosis:hellshelf>,
            <thermalfoundation:storage_alloy>], 20),
    Util.simpleShaped(<artisanworktables:workshop:5>, "plus", [
            <artisanworktables:worktable:5>,
            <thebetweenlands:life_crystal>,
            <thebetweenlands:valonite_block>])
        .addTools({<ore:artisansFramingHammer>:100})
        .addFluids([<liquid:stellar_alloy>*3888]),
    Util.simpleShaped(<thermalfoundation:material:256>, "plus", [
            <thermalfoundation:material:32>,
            <thermalfoundation:material:320>,
            null])
        .addTools({<ore:artisansHammer>:4}),
    Util.bigShaped(<artisanworktables:design_pattern>, "ringplusalt", [
            <industrialforegoing:artificial_dye>, 
            <tconstruct:pattern>,
            <immersiveengineering:blueprint>.withTag({blueprint: "electrode"}),
            <industrialforegoing:artificial_dye:11>,
            <immersiveengineering:blueprint>.withTag({blueprint: "bullet"})])
        .addTools({<ore:artisansHammer>:11,<ore:artisansCutters>:11,<ore:artisansPencil>:11})
        .addFluids([<liquid:cobalt>*144]),
    Util.bigShaped(<artisanworktables:workshop:12>, "ringplusalt", [
            <artisanworktables:design_pattern>,
            <tconstruct:pattern>,
            <artisanworktables:workshop:5>,
            <industrialforegoing:artificial_dye:11>,
            <industrialforegoing:artificial_dye>])
        .addTools({<ore:artisansHammer>:111,<ore:artisansCutters>:111,<ore:artisansFramingHammer>:111})
        .addFluids([<liquid:cobalt>*1296]),
    Util.upgrade(<artisanautomation:upgrade_speed>.withTag({ArtisanWorktables: {Upgrade: {Speed: 0.50, EnergyUsage: -1.00}}}), [
            <moreplates:empowered_emeradic_gear>,
            <mekanism:speedupgrade>,
            <actuallyadditions:item_potion_ring_advanced>]),
    Util.upgrade(<artisanautomation:upgrade_fluid_capacity>.withTag({ArtisanWorktables: {Upgrade: {FluidCapacity: 0.50}}}), [
            <mekanism:machineblock2:11>.withTag({tier: 1}), 
            <enderio:item_liquid_conduit:2>, 
            <randomthings:reinforcedenderbucket>]),
    Util.upgrade(<artisanautomation:upgrade_energy_capacity>.withTag({ArtisanWorktables: {Upgrade: {EnergyCapacity: 1.00}}}), [
            <mekanism:energyupgrade>, 
            <enderio:item_endergy_conduit:8>, 
            <actuallyadditions:item_battery_quintuple>.withTag({Energy: 2000000})]),
    Util.upgrade(<artisanautomation:upgrade_auto_import_export_items>.withTag({ArtisanWorktables: {Upgrade: {AutoImportItems: true,AutoExportItems: true}}}), [
            <actuallyadditions:block_giant_chest>, 
            <integratedtunnels:part_importer_item_item>, 
            <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]),
    Util.upgrade(<artisanautomation:upgrade_auto_import_fluids>.withTag({ArtisanWorktables: {Upgrade: {AutoImportFluids: true}}}), [
            <mekanism:machineblock2:11>.withTag({tier: 0}),
            <integratedtunnels:part_importer_fluid_item>,
            <enderio:item_liquid_conduit:2>]),
    Util.upgrade(<artisanautomation:upgrade_tool_repair>.withTag({ArtisanWorktables: {ToolUpgrade: {DurabilityRepaired: 0.5, EnergyUsage: 10.0}}}), [
            <actuallyadditions:block_item_repairer>, 
            <storagedrawers:tape>, 
            <tp:repair_tablet>]),
    Util.simpleShaped(<artisanworktables:toolbox>, "plus", [
            <immersiveengineering:wooden_device0:5>,
            <thermalfoundation:material:320>,
            <ore:plankTreatedWood>])
        .addTools({<ore:artisansDriver>:25})
] as Holder[];

static shapelessBuilders as Holder[] = [
    Util.dust(<ore:oreIron>,0,2),
    Util.dust(<ore:oreNetherCopper>,64,2),
    Util.dust(<ore:oreCopper>,64,2),
    Util.dust(<ore:oreGold>,1,1),
    Util.dust(<ore:oreNetherGold>,1,1),
    Util.dust(<ore:oreTin>,65,3),
    Util.dust(<ore:oreSilver>,66,3),
    Util.dust(<ore:oreLead>,67,3),
    Util.dust(<ore:oreAluminum>,68,3),
    Util.dust(<ore:oreNickel>,69,3),
    Util.dust(<ore:orePlatinum>,70,4),
    Util.dust(<ore:oreIridium>,71,5),
    Util.plate(<minecraft:iron_ingot>,<thermalfoundation:material:32>,10),
    Util.plate(<actuallyadditions:item_crystal:5>,<moreplates:enori_plate>,11),
    Util.plate(<minecraft:gold_ingot>,<thermalfoundation:material:33>,3),
    Util.plate(<tp:quartz_ingot>,<moreplates:nether_quartz_plate>,9),
    Util.plate(<tp:redstone_ingot>,<moreplates:redstone_plate>,1),
    Util.plate(<tp:lapis_ingot>,<moreplates:lapis_lazuli_plate>,1),
    Util.plate(<actuallyadditions:block_crystal>,<moreplates:restonia_plate>,1),
    Util.plate(<actuallyadditions:block_crystal:1>,<moreplates:palis_plate>,1),
    Util.plate(<enderio:item_alloy_ingot:9>,<moreplates:iron_alloy_plate>,1),
    Util.plate(<thermalfoundation:material:128>,<thermalfoundation:material:320>,1),
    Util.singleton(<minecraft:ender_pearl>,<minecraft:ender_pearl>,<ore:artisansGrimoire>,3)
] as Holder[];

static fancyShapeless as IRecipeFunction[Holder] = {

};

function build() {
    for holder in shapedBuilders {
        buildShaped(holder).create();
    }
    for holder in shapelessBuilders {
        buildShapeless(holder).create();
    }
    for holder, func in fancyShapeless {
        buildShapeless(holder).setRecipeFunction(func).create();
    }
}

function buildShaped(holder as Holder) as RecipeBuilder {
    return addMaps(holder,RecipeBuilder.get("basic").setShaped(holder.getShaped()).addOutput(holder.getOutput()));
}

function buildShapeless(holder as Holder) as RecipeBuilder {
    return addMaps(holder,RecipeBuilder.get("basic").setShapeless(holder.getShapeless()).addOutput(holder.getOutput()));
}

function addMaps(holder as Holder, builder as RecipeBuilder) as RecipeBuilder {
    for tool, durability in holder.getTools() {
        builder.addTool(tool,durability);
    }
    for fluid in holder.getFluids() {
        builder.setFluid(fluid);
    }
    return builder;
}