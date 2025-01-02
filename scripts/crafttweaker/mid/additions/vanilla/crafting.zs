#reloadable

import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;

static shapedBuilders as Holder[] = [
    //actuallyadditions-----------------------------------------------------------------------------------------------------
    Util.simpleShaped(<actuallyadditions:block_atomic_reconstructor>, "plus", [
        <actuallyadditions:block_misc:9>, 
        <overloaded:compressed_cobblestone>, 
        <thermalfoundation:material:160>]), //Atomic Reconstructor

    Util.simpleShaped(<actuallyadditions:block_misc:9>, "plus", [
        <thermalfoundation:material:320>, 
        <minecraft:stick>, 
        <minecraft:iron_ingot>]), //Iron Casing

    Util.simpleShaped(<actuallyadditions:item_drill:3>, "piston", [
        <immersiveengineering:metal_device1:7>, 
        <mekanism:controlcircuit:1>, 
        <actuallyadditions:block_crystal_empowered:5>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal_empowered:2>]), //Drill
        
    Util.simpleShaped(<actuallyadditions:item_misc:18>, "ring", [
        <actuallyadditions:item_misc:8>, 
        <thermalfoundation:glass:3>]), //Lens

    //aeadditions-----------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<aeadditions:vibrantchamberfluid>, "hat", [
        <aeadditions:certustank>,
        <moreplates:reinforced_iron_plate>,
        <appliedenergistics2:vibration_chamber>]), //Fluid Vibration Chamber

    //aether----------------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<aether:aether_teleporter>, "plus", [
        <minecraft:lava_bucket>, 
        <minecraft:iron_ingot>, 
        <minecraft:stone>]), //Aether Teleporter

    //aoa3------------------------------------------------------------------------------------------------------------------
    Util.aoarune(<aoa3:carved_rune_power>, <botania:laputashard:9>), //Rune of Power

    Util.aoarune(<aoa3:carved_rune_reality>, <dimdoors:stable_fabric>), //Rune of Reality

    Util.aoarune(<aoa3:carved_rune_space>, <moreplanets:space_warper_core>), //Rune of Space

    Util.aoarune(<aoa3:carved_rune_travel>, <minecraft:ender_eye>), //Rune of Travel

    Util.aoarune(<aoa3:carved_rune_direction>, 
        <integrateddynamics:part_connector_omni_directional_item>), //Rune of Direction

    //appliedenergistics2---------------------------------------------------------------------------------------------------
    Util.simpleShaped(<appliedenergistics2:grindstone>, "bowl", [
        <ore:stone>,
        <appliedenergistics2:material>,
        <ore:cobblestone>,
        <ore:gearWood>]), //Grindstone

    //aroma1997sdimension---------------------------------------------------------------------------------------------------
    Util.simpleShaped(<aroma1997sdimension:miningmultitool>, "wide", [
        <actuallyadditions:stone_paxel>,
        <galacticraftplanets:asteroids_block:7>,
        <silentgems:gemblocksuper:14>,
        <thermalfoundation:storage:7>,
        null]), //Multi Mining Tool
        
    Util.simpleShaped(<appliedenergistics2:vibration_chamber>, "hat", [
        <tconstruct:seared_furnace_controller>,
        <moreplates:reinforced_iron_plate>,
        <appliedenergistics2:energy_acceptor>]), //Vibration Chamber

    //artisanworktables-----------------------------------------------------------------------------------------------------
    Util.simpleShaped(<artisanworktables:worktable:5>, "ring", [ <ore:workbench>, <ore:logWood> ]), //Basic Worktable

    //bonsaitrees-----------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<bonsaitrees:bonsaipot>, { <minecraft:brick>:[0,1,3], <minecraft:gold_ingot>:[2,4] }, 
        3, 2), //Bonsai Pot

    //botania---------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<botania:manaresource:13>, { <botania:dreamwood>:[0,1] }, 1, 2), //Dreamwood Twig

    Util.dynamicShaped(<botania:manaresource:3>, { <botania:livingwood>:[0,1] }, 1, 2), //Livingwood Twig

    //calculator------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<calculator:algorithmseparator>, { <calculator:material:3>:[0,2,6,8], 
        <calculator:advancedpowercube>:[1,7], <calculator:stoneseparator>:[3,5], 
        <calculator:weakeneddiamond>:[4] }), //Algorithm Separator

    Util.dynamicShaped(<calculator:calculatorscreen>, { <ore:cobblestone>:[0,1,2,6,7,8],
        <minecraft:redstone>:[3,5], <extrautils2:screen>:[4] }), //Calculator Screen

    Util.dynamicShaped(<calculator:powercube>, { <overloaded:compressed_stone:2>:[0,2,6,8],
        <immersiveengineering:material:27>:[1,3,5,7], <thermalexpansion:frame:64>:[4] }), //Power Cube

    //cookingforblockheads--------------------------------------------------------------------------------------------------
    Util.simpleShaped(<cookingforblockheads:oven>, "portalbottom", [
        <immersiveengineering:metal_device1>,
        <tconstruct:clear_stained_glass:15>,
        <thermalfoundation:material:32>
    ]), //Oven

    //dimdoors--------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<dimdoors:fabric:15>, { <dimdoors:unravelled_fabric>:[0,1,2,3] }, 2, 2), //Fabric of Reality

    Util.dynamicShaped(<dimdoors:rift_remover>, { <minecraft:gold_ingot>:[0,2,6,8], 
        <dimdoors:stable_fabric>:[4] }), //Rift Remover

    Util.dynamicShaped(<dimdoors:rift_signature>, { <minecraft:iron_ingot>:[0,2,6,8], 
        <dimdoors:stable_fabric>:[4] }), //Rift Signature

    //extendedcrafting------------------------------------------------------------------------------------------------------
    Util.smallShaped(<extendedcrafting:material:14>, "component", [
        <extendedcrafting:material:2>,
        <extendedcrafting:material:7>,
        <minecraft:iron_ingot>
    ]), //Basic Component

    //extraplanets----------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<extraplanets:tier1_space_suit_helmet:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_helmet>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //Tier 1 Space Suit Helmet

    Util.simpleShaped(<extraplanets:tier1_space_suit_chest:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_chest>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //Tier 1 Space Suit Chestplate

    Util.simpleShaped(<extraplanets:tier1_space_suit_legings:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_legings>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //Tier 1 Space Suit Leggings

    Util.simpleShaped(<extraplanets:tier1_space_suit_boots:100>, "space", [
        <extraplanets:tier1_un_prepared_space_suit_boots>,
        <extraplanets:tier1_radiation_layer>,
        <extraplanets:tier1_armor_layer>,
        <extraplanets:tier1_pressure_layer>
    ]), //Tier 1 Space Suit Boots

    //hunting dimension-----------------------------------------------------------------------------------------------------
    Util.simpleShaped(<huntingdim:frame>, "plus", [<ore:arrow>, <ore:logWood>, <thermalfoundation:material:128>])
        .setMarkIndex(0)
        .addFunction(
            function(output, map, info) {
                return output.withTag({BaseBlock: {id: map.mark.definition.id as string, Count: 1 as byte, 
                    Damage: map.mark.metadata as short}});
            } as IRecipeFunction), //Hunting Dimension Portal Frame

    //integrateddynamics----------------------------------------------------------------------------------------------------
	Util.simpleShaped(<integrateddynamics:part_machine_reader_item>, "part", [
        <enderio:block_simple_furnace>,
        <integrateddynamics:variable_transformer:1>,
        <moreplates:pulsating_iron_gear>,
        <avaritia:compressed_crafting_table>
    ]), //Machine Reader

    //naturesaura-----------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<naturesaura:gold_fiber>, {
        <ore:grassPlant>:[4],
        <ore:treeLeaves>:[0,2,6,8],
        <ore:nuggetGold>:[1,3,5,7]
    }), //Brilliant Fiber

    Util.dynamicShaped(<naturesaura:ender_crate>, {
        <enderstorage:ender_storage>:[4],
        <darkutils:sneaky_obsidian>:[0,2,6,8],
        <xreliquary:salamander_eye>:[1],
        <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}):[3,5,7]
    }), //Ender Crate

    //plustic---------------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<plustic:centrifuge>, "plus", [
        <openblocks:tank>,
        <calculator:flawlessglass>,
        <enderio:item_alloy_ball:9>
    ]), //Centrifuge Tank

    Util.simpleShaped(<plustic:centrifuge:1>, "tank", [
        <calculator:stoneseparator>,
        <enderio:item_alloy_ball:3>,
        <calculator:flawlessglass>,
        <enderio:item_alloy_ball:9>
    ]), //Centrifuge Core

    //psi-------------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<psi:material:3>, { <psi:material:5>:[0,1,2,3,5,6,7,8], 
        <botania:manaresource:4>:[4] }), //Ebony Psimetal Ingot

    Util.dynamicShaped(<psi:material:4>, { <psi:material:6>:[0,1,2,3,5,6,7,8], 
        <botania:manaresource:4>:[4] }), //Ivory Psimetal Ingot

    //quark-----------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<quark:turf>, {
        <ore:grassPlant>:[0,1,2,3]
    },2,2), //Turf Block

    //scanner---------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<scanner:battery>, {
        <ore:dustRedstone>:[0,2],
        <twilightforest:carminite>:[1],
    },1), //Battery

    //sgcraft---------------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<sgcraft:stargatecontroller>, "table", [
        <portalgun:item_miniature_black_hole>,
        <sgcraft:sgcontrollercrystal>,
        <tp:reinforced_obsidian>,
        <tp:reinforced_obsidian>,
        <opencomputers:keyboard>,
        <botania:starsword>
    ]), //Stargate Controller

    //solarflux-------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<solarflux:mirror>, { <ore:blockGlassColorless>:[0,1,2], <thermalfoundation:material:160>:[4] }, 
        3, 2), //Mirror

    //tconstruct------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<tconstruct:seared_furnace_controller>, { <tconstruct:seared_slab:3>:[0,1,2,6,7,8],
        <tconstruct:seared:3>:[3,5], <calculator:reinforcedfurnace>:[4] }), //Seared Furnace Controller

    //theaurorian-----------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<theaurorian:scrapper>, { <theaurorian:ceruleaningot>:[0,1,2,3,5], 
        <enderio:block_simple_furnace>:[4], <theaurorian:aurorianstonebrick>:[6,7,8] }), //Scrapper

    //thebetweenlands-------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<thebetweenlands:rubber_boots>, { <thebetweenlands:items_misc:23>:[0,2,3,5] }, 3, 2), //Rubber Boots

    //thermalexpansion------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<thermalexpansion:augment:369>, {
        <thermalfoundation:material:293>:[1],
        <opencomputers:material:6>:[3,5],
        <thermalfoundation:material:515>:[4],
        <xreliquary:apothecary_cauldron>:[7],
    }), //Augment: Alchemical Retort

    //tinker_io-------------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<tinker_io:upg>, "sandwich", [
        <thebetweenlands:items_misc:32>,
        <tconstruct:ingots:5>,
        <industrialforegoing:artificial_dye:11>
    ]), //Base Upgrade

    //tombstone-------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<tombstone:fishing_rod_of_misadventure>, {
        <ore:bushPlant>:[2,4,6],
        <ore:dustGrave>:[5,8]
    }), //Fishing Rod of Misadventure

    Util.dynamicShaped(<tombstone:voodoo_poppet>, {
        <ore:bushPlant>:[4],
        <ore:dustGrave>:[0,2,6,8],
        <ore:clay>:[1,7],
        <ore:leather>:[3],
        <ore:string>:[5]
    }), //Voodoo Poppet

    //tp--------------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<tp:pouch>, { <natura:materials:6>:[0,2,4,6,8], <randomthings:ingredient:12>:[1,7],
        <actuallyadditions:block_giant_chest>:[3,5] }), //Pouch

    Util.dynamicShaped(<tp:stone_boots>, { <overloaded:compressed_cobblestone>:[0,2], <minecraft:cobblestone>:[3,5] }, 
        3, 2), //Stone Boots

    Util.dynamicShaped(<tp:stone_chestplate>, { <overloaded:compressed_cobblestone>:[0,2,4], 
        <minecraft:cobblestone>:[3,5,6,7,8] }), //Stone Chestplate

    Util.dynamicShaped(<tp:stone_helmet>, { <overloaded:compressed_cobblestone>:[0,2], <minecraft:cobblestone>:[1,3,5] }, 
        3, 2), //Stone Helmet

    Util.dynamicShaped(<tp:stone_leggings>, { <overloaded:compressed_cobblestone>:[0,2], 
        <minecraft:cobblestone>:[3,5,7,8] }), //Stone Leggings

    //translocators---------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<translocators:translocator_part:1>*2, { <enderio:item_alloy_ingot:3>:[0,2,6,8], 
        <minecraft:ender_eye>:[1], <enderio:item_alloy_ingot:9>:[3,5], <minecraft:sticky_piston>:[4],
        <minecraft:lapis_block>:[7] }), //Fluid Translocator

    Util.dynamicShaped(<translocators:translocator_part>*2, { <enderio:item_alloy_ingot:3>:[0,2,6,8], 
        <minecraft:ender_eye>:[1], <enderio:item_alloy_ingot:9>:[3,5], <minecraft:sticky_piston>:[4],
        <minecraft:gold_block>:[7] }), //Item Translocator

    //travelersbackpack-----------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<travelersbackpack:travelers_backpack>, {
        <ore:leather>:[0,2,6,8],
        <ore:ingotGold>:[1],
        <travelersbackpack:backpack_tank>:[3,5],
        <ore:chest>:[4],
        <travelersbackpack:sleeping_bag_bottom>:[7]
    }), //Standard Backpack

    //vc--------------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<vc:item_logic_chip>, { <minecraft:gold_nugget>:[0,1,2,6,7,8], 
        <overloaded:compressed_cobblestone>:[3,5], <immersiveengineering:material:27>:[4] }), //Logic Chip

    Util.dynamicShaped(<vc:item_airship_engine>, { <thermalfoundation:material:321>:[0,2,6,8], 
        <enderio:block_dark_iron_bars>:[1,7], <opencomputers:upgrade:20>:[3,5], 
        <enderio:block_alloy:3>:[4] }), //Airship Engine

    //xreliquary------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<xreliquary:midas_touchstone>, { <tp:repair_tablet>:[0], <minecraft:gold_block>:[1,2],
        <xreliquary:mob_ingredient:7>:[3], <xreliquary:mob_ingredient:8>:[4], <xreliquary:mob_ingredient:11>:[5], 
        <xreliquary:mob_ingredient:3>:[6,7], <xreliquary:infernal_tear>:[8] }), //Midas Touchstone

    //zollerngalaxy---------------------------------------------------------------------------------------------------------
    Util.simpleShaped(<zollerngalaxy:staticamber>, "star", [
        <ore:blockAmber>, 
        <ore:gemTopaz>, 
        <ore:ingotZinc>, 
        <ore:gemAzurite>, 
        <ore:ingotGold>]), //Static Amber

    Util.simpleShaped(<zollerngalaxy:heartforce>, "u", [
        <zollerngalaxy:heart>, 
        <ore:ingotZollernium>, 
        <ore:ingotZinc>]) //Max Heartforce

    //----------------------------------------------------------------------------------------------------------------------
] as Holder[];

static shapelessBuilders as Holder[] = [
    //appliedenergistics2---------------------------------------------------------------------------------------------------
    Util.shapeless(<appliedenergistics2:material:48>, [<appliedenergistics2:material:48>]), //Quantum Entangled Singularity

    //avaritia--------------------------------------------------------------------------------------------------------------
    Util.shapeless(<avaritia:extreme_crafting_table>, [<extendedcrafting:table_ultimate>, 
        <avaritia:resource:5>]), //Extreme Crafting Table

    //biomesoplenty---------------------------------------------------------------------------------------------------------
    Util.shapeless(<biomesoplenty:terrarium:9>, [<ore:grass>, <ore:bushPlant>, <biomesoplenty:jar_empty>]), //Dead Terrarium

    Util.shapeless(<biomesoplenty:terrarium>, [<ore:grass>, <ore:fernPlant>, <biomesoplenty:jar_empty>]), //Fern Terrarium

    //botania---------------------------------------------------------------------------------------------------------------
    Util.shapeless(<botania:manaresource:11>, [<avaritia:compressed_crafting_table>, 
        <botania:shimmerrock>]), //Crafting Placeholder

    Util.shapeless(<botania:grassseeds:3>, [<botania:grassseeds>, <ore:bushPlant>]), //Dry Pasture Seeds

    //contenttweaker--------------------------------------------------------------------------------------------------------
    Util.shapeless(<contenttweaker:bloq>, [<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"})]), //Bloq

    Util.shapeless(<contenttweaker:twilight_key>, [<contenttweaker:twilight_key_winter>, 
        <contenttweaker:twilight_key_swamp>, <contenttweaker:twilight_key_forest>, 
        <psi:material>]), //Twilight Dimensional Key

    //enderio---------------------------------------------------------------------------------------------------------------
    Util.shapeless(<enderio:item_soul_vial:1>, [<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})])
        .setMarkIndex(0)
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
        } as IRecipeFunction), //Soul Vial (Pixon)

    //eplus-----------------------------------------------------------------------------------------------------------------
    Util.shapeless(<eplus:advanced_table>, [<artisanworktables:workshop:7>, 
        <aoa3:mega_rune_stone>]), //Advanced Enchantment Table

    //galacticraftplanets---------------------------------------------------------------------------------------------------
    Util.shapeless(<galacticraftplanets:schematic>, 
        [<galacticraftplanets:schematic:1>]), //Tier 3 Rocket Schematic (Cargo Rocket)

    //minecraft-------------------------------------------------------------------------------------------------------------
    Util.shapeless(<minecraft:dye:2>, [<botania:pestleandmortar>, <minecraft:cactus>, <biomesoplenty:blue_dye>, 
        <xlfoodmod:cheese>]), //Cactus Green

    Util.shapeless(<minecraft:enchanting_table>, [<eplus:advanced_table>, 
        <draconicevolution:draconic_core>]), //Enchanting Table

    //randomthings----------------------------------------------------------------------------------------------------------
    Util.shapeless(<randomthings:timeinabottle>, [<randomthings:timeinabottle>, <environmentaltech:lonsdaleite_crystal>])
        .setMarkIndex(0)
        .addFunction(function (output, map, info) {
            val outputTag as IData = {timeData: {storedTime: map.mark.tag.timeData.storedTime+1200}};
            return output.withTag(outputTag);
        }), //Time in a Bottle

    //sgcraft---------------------------------------------------------------------------------------------------------------
    Util.shapeless(<sgcraft:sgcorecrystal>, [<galacticraftcore:item_basic_moon:2>, 
        <sgcraft:naquadahingot>]), //Stargate Core Crystal

    Util.shapeless(<sgcraft:sgcontrollercrystal>, [<sgcraft:sgcorecrystal>, 
        <draconicevolution:dragon_heart>]), //Stargate Controller Crystal
    
    //scalinghealth---------------------------------------------------------------------------------------------------------
    Util.shapeless(<scalinghealth:difficultychanger:1>, [<scalinghealth:difficultychanger>, 
        <extrautils2:ingredients:10>]), //Cursed Heart

    Util.namedShapeless("heart", <scalinghealth:difficultychanger>, [<scalinghealth:heartcontainer>, 
        <minecraft:nether_star>]), //Enchanted Heart

    Util.namedShapeless("wight", <scalinghealth:difficultychanger>*8, [<thebetweenlands:wight_heart>, 
        <xreliquary:witherless_rose>]), //Enchanted Heart x8

    Util.namedShapeless("heartforce", <scalinghealth:difficultychanger>*64, [<zollerngalaxy:heartforce>, 
        <overloaded:nether_star_block>]), //Enchanted Heart x64

    //tombstone-------------------------------------------------------------------------------------------------------------
    Util.namedShapeless("mastergravedust", <tombstone:crafting_ingredient:3>*2, 
        [<mysticalagriculture:master_infusion_crystal>, <tombstone:crafting_ingredient:3>]), //Grave Dust (Master Infusion)

    Util.namedShapeless("basicgravedust", <tombstone:crafting_ingredient:3>*5, [<mysticalagriculture:infusion_crystal:*>, 
        <tombstone:crafting_ingredient:3>*4, <minecraft:rotten_flesh>, <quark:black_ash>]), //Grave Dust (Basic Infusion)

    //twilightforest--------------------------------------------------------------------------------------------------------
    Util.shapeless(<twilightforest:magic_map_empty>, [<twilightforest:magic_map_focus>, <minecraft:map>]) //Magic Map
    
    //----------------------------------------------------------------------------------------------------------------------
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