#reloadable

import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;

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

    //aeadditions
    Util.simpleShaped(<aeadditions:vibrantchamberfluid>, "hat", [
        <aeadditions:certustank>,
        <moreplates:reinforced_iron_plate>,
        <appliedenergistics2:vibration_chamber>]), //fluid vibration chamber

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
    Util.simpleShaped(<appliedenergistics2:vibration_chamber>, "hat", [
        <tconstruct:seared_furnace_controller>,
        <moreplates:reinforced_iron_plate>,
        <appliedenergistics2:energy_acceptor>]), //vibration chamber

    //artisanworktables
    Util.simpleShaped(<artisanworktables:worktable:5>, "ring", [
        <ore:workbench>, 
        <ore:logWood>]), //basic worktable

    //botania
    Util.dynamicShaped(<botania:manaresource:13>, {<botania:dreamwood>:[0,1]}, 1, 2), //dreamwood twig
    Util.dynamicShaped(<botania:manaresource:3>, {<botania:livingwood>:[0,1]}, 1, 2), //livingwood twig

    //cookingforblockheads
    Util.simpleShaped(<cookingforblockheads:oven>, "portalbottom", [
        <immersiveengineering:metal_device1>,
        <tconstruct:clear_stained_glass:15>,
        <thermalfoundation:material:32>
    ]),

    //extendedcrafting
    Util.smallShaped(<extendedcrafting:material:14>, "component", [
        <extendedcrafting:material:2>,
        <extendedcrafting:material:7>,
        <minecraft:iron_ingot>
    ]), //basic component

    //extraplanets
    Util.simpleShaped(<extraplanets:tier1_space_suit_helmet:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_helmet>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //t1 space suit helmet
    Util.simpleShaped(<extraplanets:tier1_space_suit_chest:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_chest>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //t1 space suit chestplate
    Util.simpleShaped(<extraplanets:tier1_space_suit_legings:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_legings>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //t1 space suit leggings
    Util.simpleShaped(<extraplanets:tier1_space_suit_boots:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_boots>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //t1 space suit boots

    //hunting dimension
    Util.simpleShaped(<huntingdim:frame>, "plus", [<ore:arrow>, <ore:logWood>, <thermalfoundation:material:128>]).setMarkIndex(0)
        .addFunction(
            function(output, map, info) {
                return output.withTag({BaseBlock: {id: map.mark.definition.id as string, Count: 1 as byte, Damage: map.mark.metadata as short}});
            } as IRecipeFunction), //hunting dimension portal frame

    //integrateddynamics
	Util.simpleShaped(<integrateddynamics:part_machine_reader_item>, "part", [
        <enderio:block_simple_furnace>,
        <integrateddynamics:variable_transformer:1>,
        <moreplates:pulsating_iron_gear>,
        <avaritia:compressed_crafting_table>
    ]), //machine reader

    //naturesaura
    Util.dynamicShaped(<naturesaura:gold_fiber>, {
        <ore:grassPlant>:[4],
        <ore:treeLeaves>:[0,2,6,8],
        <ore:nuggetGold>:[1,3,5,7]
    }), //brilliant fiber

    Util.dynamicShaped(<naturesaura:ender_crate>, {
        <enderstorage:ender_storage>:[4],
        <calculator:purifiedobsidian>:[0,2,6,8],
        <xreliquary:salamander_eye>:[1],
        <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}):[3,5,7]
    }), //ender crate

    //plustic
    Util.simpleShaped(<plustic:centrifuge>, "plus", [
        <openblocks:tank>,
        <calculator:flawlessglass>,
        <enderio:item_alloy_ball:9>
    ]), //centrifuge tank

    Util.simpleShaped(<plustic:centrifuge:1>, "tank", [
        <calculator:stoneseparator>,
        <enderio:item_alloy_ball:3>,
        <calculator:flawlessglass>,
        <enderio:item_alloy_ball:9>
    ]), //centrifuge core

    //quark 
    Util.dynamicShaped(<quark:turf>, {
        <ore:grassPlant>:[0,1,2,3]
    },2,2), //turf block

    //scanner
    Util.dynamicShaped(<scanner:battery>, {
        <ore:dustRedstone>:[0,2],
        <twilightforest:carminite>:[1],
    },1), //battery

    //sgcraft
    Util.simpleShaped(<sgcraft:stargatecontroller>, "table", [
        <portalgun:item_miniature_black_hole>,
        <sgcraft:sgcontrollercrystal>,
        <tp:reinforced_obsidian>,
        <tp:reinforced_obsidian>,
        <opencomputers:keyboard>,
        <botania:starsword>
    ]), //stargate controller

    //tinker_io
    Util.simpleShaped(<tinker_io:upg>, "sandwich", [
        <thebetweenlands:items_misc:32>,
        <tconstruct:ingots:5>,
        <industrialforegoing:artificial_dye:11>
    ]), //base upgrade

    //tombstone
    Util.dynamicShaped(<tombstone:fishing_rod_of_misadventure>, {
        <ore:bushPlant>:[2,4,6],
        <ore:dustGrave>:[5,8]
    }), //fishing rod of misadventure
    Util.dynamicShaped(<tombstone:voodoo_poppet>, {
        <ore:bushPlant>:[4],
        <ore:dustGrave>:[0,2,6,8],
        <ore:clay>:[1,7],
        <ore:leather>:[3],
        <ore:string>:[5]
    }), //voodoo poppet

    //travelersbackpack
    Util.dynamicShaped(<travelersbackpack:travelers_backpack>, {
        <ore:leather>:[0,2,6,8],
        <ore:ingotGold>:[1],
        <travelersbackpack:backpack_tank>:[3,5],
        <ore:chest>:[4],
        <travelersbackpack:sleeping_bag_bottom>:[7]
    }), //standard backpack

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
    Util.shapeless(<avaritia:extreme_crafting_table>, [<extendedcrafting:table_ultimate>, <avaritia:resource:5>]), //extreme crafting table

    //biomesoplenty
    Util.shapeless(<biomesoplenty:terrarium:9>, [<ore:grass>, <ore:bushPlant>, <biomesoplenty:jar_empty>]), //dead terrarium
    Util.shapeless(<biomesoplenty:terrarium>, [<ore:grass>, <ore:fernPlant>, <biomesoplenty:jar_empty>]), //fern terrarium

    //botania
    Util.shapeless(<botania:manaresource:11>, [<avaritia:compressed_crafting_table>, <botania:shimmerrock>]), //crafting placeholder
    Util.shapeless(<botania:grassseeds:3>, [<botania:grassseeds>, <ore:bushPlant>]), //dry pasture seeds

    //enderio
    Util.shapeless(<enderio:item_soul_vial:1>, [<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})]).setMarkIndex(0)
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

    //galacticraftplanets
    Util.shapeless(<galacticraftplanets:schematic>, [<galacticraftplanets:schematic:1>]), //cargo rocket to t3 rocket schematic

    //minecraft
    Util.shapeless(<minecraft:dye:2>, [<botania:pestleandmortar>, <minecraft:cactus>, <biomesoplenty:blue_dye>, <xlfoodmod:cheese>]), //cactus green

    //randomthings
    Util.shapeless(<randomthings:timeinabottle>, [<randomthings:timeinabottle>, <environmentaltech:lonsdaleite_crystal>]).setMarkIndex(0)
        .addFunction(function (output, map, info) {
            val outputTag as IData = {timeData: {storedTime: map.mark.tag.timeData.storedTime+1200}};
            return output.withTag(outputTag);
        }), //time in a bottle
    Util.shapeless(<sgcraft:sgcorecrystal>, [<galacticraftcore:item_basic_moon:2>, <sgcraft:naquadahingot>]), //stargate core crystal
    Util.shapeless(<sgcraft:sgcontrollercrystal>, [<sgcraft:sgcorecrystal>, <draconicevolution:dragon_heart>]), //stargate controller crystal
    
    //scalinghealth
    Util.shapeless(<scalinghealth:difficultychanger:1>, [<scalinghealth:difficultychanger>, <extrautils2:ingredients:10>]), //cursed heart
    Util.namedShapeless("heart",<scalinghealth:difficultychanger>, [<scalinghealth:heartcontainer>, <minecraft:nether_star>]), //enchanted heart
    Util.namedShapeless("wight",<scalinghealth:difficultychanger>*8, [<thebetweenlands:wight_heart>, <xreliquary:witherless_rose>]), //enchanted heartx8
    Util.namedShapeless("heartforce",<scalinghealth:difficultychanger>*64, [<zollerngalaxy:heartforce>, <overloaded:nether_star_block>]) //enchanted heartx64
] as Holder[];

function run() {
    for holder in shapedBuilders {
        recipes.addShaped(holder.getName("crafting."), holder.getOutput(),
            holder.getShaped(), holder.getFunction(), holder.getAction());
    }
    for holder in shapelessBuilders {
        recipes.addShapeless(holder.getName("crafting."), holder.getOutput(),
            holder.getShapeless(), holder.getFunction(), holder.getAction());
    }
}