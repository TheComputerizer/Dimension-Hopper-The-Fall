#reloadable

import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.tables as Util;

static shapedBuilders as Holder[] = [
    //actuallyadditions
    Util.simpleShaped(<actuallyadditions:block_atomic_reconstructor>, "plus", [
        <actuallyadditions:block_misc:9>, 
        <overloaded:compressed_cobblestone>, 
        <thermalfoundation:material:160>]), //atomic reconstructor
    Util.simpleShaped(<actuallyadditions:block_misc:9>, "plus", [
        <thermalfoundation:material:320>, 
        <minecraft:stick>, 
        <minecraft:iron_ingot>]), //iron casing
    Util.simpleShaped(<actuallyadditions:item_drill:3>, "piston", [
        <immersiveengineering:metal_device1:7>, 
        <mekanism:controlcircuit:1>, 
        <actuallyadditions:block_crystal_empowered:5>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal_empowered:2>]), //drill
    Util.simpleShaped(<actuallyadditions:item_misc:18>, "ring", [
        <actuallyadditions:item_misc:8>, 
        <thermalfoundation:glass:3>]), //lens

    //aether
    Util.simpleShaped(<aether:aether_teleporter>, "plus", [
        <minecraft:lava_bucket>, 
        <minecraft:iron_ingot>, 
        <minecraft:stone>]), //aether teleporter

    //aoa3
    Util.aoarune(<aoa3:carved_rune_power>, <botania:laputashard:9>), //rune of power
    Util.aoarune(<aoa3:carved_rune_reality>, <dimdoors:stable_fabric>), //rune of reality
    Util.aoarune(<aoa3:carved_rune_space>, <moreplanets:space_warper_core>), //rune of space
    Util.aoarune(<aoa3:carved_rune_travel>, <minecraft:ender_eye>), //rune of travel
    Util.aoarune(<aoa3:carved_rune_direction>, <integrateddynamics:part_connector_omni_directional_item>), //rune of direction

    //appliedenergistics2
    Util.simpleShaped(<appliedenergistics2:grindstone>, "bowl", [
        <ore:stone>,
        <appliedenergistics2:material>,
        <ore:cobblestone>,
        <ore:gearWood>]), //grindstone

    //aroma1997sdimension
    Util.simpleShaped(<aroma1997sdimension:miningmultitool>, "wide", [
        <actuallyadditions:stone_paxel>,
        <galacticraftplanets:asteroids_block:7>,
        <silentgems:gemblocksuper:14>,
        <thermalfoundation:storage:7>,
        null]), //multi mining tool

    //artisanworktables
    Util.simpleShaped(<artisanworktables:worktable:5>, "ring", [
        <ore:workbench>, 
        <ore:logWood>]), //basic worktable

    //hunting dimension
    Util.simpleShaped(<huntingdim:frame>, "plus", [<ore:arrow>, <ore:logWood>, <thermalfoundation:material:128>]).setMarkIndex(0)
        .addFunction(
            function(output, map, info) {
                return output.withTag({BaseBlock: {id: map.mark.definition.id as string, Count: 1 as byte, Damage: map.mark.metadata as short}});
            } as IRecipeFunction), //hunting dimension portal frame

    //zollerngalaxy
    Util.simpleShaped(<zollerngalaxy:staticamber>, "star", [
        <ore:blockAmber>, 
        <ore:gemTopaz>, 
        <ore:ingotZinc>, 
        <ore:gemAzurite>, 
        <ore:ingotGold>]), //static amber
    Util.simpleShaped(<zollerngalaxy:heartforce>, "u", [
        <zollerngalaxy:heart>, 
        <ore:ingotZollernium>, 
        <ore:ingotZinc>]) //max heartforce
] as Holder[];

static shapelessBuilders as Holder[] = [
    //avaritia
    Util.shapeless(<avaritia:extreme_crafting_table>,[<extendedcrafting:table_ultimate>,<avaritia:resource:5>]), //extreme crafting table

    //enderio
    Util.shapeless(<enderio:item_soul_vial:1>,[<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})]).setMarkIndex(0)
        .addFunction(function(output, map, info) {
            var dim = info.player.dimension as int;
	        if(dim==0) return output.withTag({entityId: "aoa3:glistening_pixon"});
	        else if(dim==819) return output.withTag({entityId: "aoa3:gleaming_pixon"});
	        else if(dim==803 || dim==811 || dim==820) return output.withTag({entityId: "aoa3:ambient_pixon"});
	        else if(dim==815) return output.withTag({entityId: "aoa3:glaring_pixon"});
	        else if(dim==814) return output.withTag({entityId: "aoa3:glowing_pixon"});
	        else if(dim==800) return output.withTag({entityId: "aoa3:shining_pixon"});
	        else if(dim==808) return output.withTag({entityId: "aoa3:radiant_pixon"});
	        else if(dim==817) return output.withTag({entityId: "aoa3:blooming_pixon"});
	        return output;
        } as IRecipeFunction), //pixon soul vial

    //randomthings
    Util.shapeless(<randomthings:timeinabottle>, [<randomthings:timeinabottle>, <environmentaltech:lonsdaleite_crystal>]).setMarkIndex(0)
        .addFunction(function (output, map, info) {
            return output.withTag({timeData: {storedTime: map.mark.tag.timeData.storedTime+1200}});
        }) //time in a bottle
] as Holder[];

function build() {
    for holder in shapedBuilders {
        recipes.addShaped(holder.getName("crafting."), holder.getOutput(),
            holder.getShaped(), holder.getFunction(), holder.getAction());
    }
    for holder in shapelessBuilders {
        recipes.addShapeless(holder.getName("crafting."), holder.getOutput(),
            holder.getShapeless(), holder.getFunction(), holder.getAction());
    }
}