#reloadable

import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Stacks as Stack;
import scripts.crafttweaker.early.util.Tables as Util;

static shapedBuilderArrays as Holder[][] = [
    //darkutils-------------------------------------------------------------------------------------------------------------
    Util.makeRings(<sonarcore:stablestoneblackrimmed_plain>, Stack.getMetaValuesMap(<darkutils:trap_tile>.definition, [
        <minecraft:spider_eye>,
        <minecraft:fermented_spider_eye>,
        <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
        <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
        <minecraft:flint_and_steel>,
        <minecraft:skull:1>,
        <scalinghealth:heartcontainer>,
        <actuallyadditions:item_player_probe>
    ])) //traps

    //----------------------------------------------------------------------------------------------------------------------
];

static shapelessBuilderArrays as Holder[][] = [
    //dimhoppertweaks-------------------------------------------------------------------------------------------------------
    Util.prestigeToken(1, <minecraft:nether_star>),                      //Prestige Token 2  (chapter 1)
    Util.prestigeToken(2, <labyrinth:daedalus>),                         //Prestige Token 3  (chapter 2)
    Util.prestigeToken(3, <blue_skies:ventium_ingot>),                   //Prestige Token 4  (chapter 2)
    Util.prestigeToken(4, <actuallyadditions:block_leaf_generator>),     //Prestige Token 5  (chapter 2)
    Util.prestigeToken(5, <minecraft:emerald>),                          //Prestige Token 6  (chapter 3)
    Util.prestigeTokens(6, [ 
        <contenttweaker:crazy_zombie_essence>, 
        <contenttweaker:crazy_spider_essence>, 
        <contenttweaker:crazy_skeleton_essence>, 
        <contenttweaker:crazy_creeper_essence>
    ]),                                                                  //Prestige Token 7  (chapter 3)
    Util.prestigeToken(7, <actuallyadditions:item_crystal_empowered:4>), //Prestige Token 8  (chapter 4)
    Util.prestigeToken(8, <thermalfoundation:storage:3>),                //Prestige Token 9  (chapter 4)
    Util.prestigeToken(9, <jaopca:dust.life_crystal>),                   //Prestige Token 10 (chapter 4)
    Util.prestigeToken(10, <thebetweenlands:mummy_bait>),                //Prestige Token 11 (chapter 4)
    Util.prestigeToken(11, <contenttweaker:rocket_block_1>),             //Prestige Token 12 (chapter 5)
    Util.prestigeToken(12, <galacticraftcore:item_basic_moon:2>),        //Prestige Token 13 (chapter 5)
    Util.prestigeToken(13, <contenttweaker:rocket_block_2>),             //Prestige Token 14 (chapter 5)
    Util.prestigeToken(14, <contenttweaker:rocket_block_3>),             //Prestige Token 15 (chapter 5)
    Util.prestigeToken(15, <aoa3:blank_realmstone>),                     //Prestige Token 16 (chapter 6)
    Util.prestigeToken(16, <aoa3:darkly_powder>),                        //Prestige Token 17 (chapter 6)
    Util.prestigeToken(17, <aoa3:lyon_ingot>),                           //Prestige Token 18 (chapter 6)
    Util.prestigeToken(18, <aoa3:shyregem>),                             //Prestige Token 19 (chapter 6)
    Util.prestigeToken(19, <aoa3:progress_coin4>),                       //Prestige Token 20 (chapter 6)
    Util.prestigeToken(20, <contenttweaker:rocket_block_4>),             //Prestige Token 21 (chapter 7)
    Util.prestigeToken(21, <contenttweaker:rocket_block_5>),             //Prestige Token 22 (chapter 7)
    Util.prestigeToken(22, <contenttweaker:rocket_block_6>),             //Prestige Token 23 (chapter 7)
    Util.prestigeToken(23, <contenttweaker:rocket_block_7>),             //Prestige Token 24 (chapter 7)
    Util.prestigeToken(24, <lightningcraft:metal_block:2>),              //Prestige Token 25 (chapter 8)
    Util.prestigeToken(25, <draconicevolution:draconium_block>),         //Prestige Token 26 (chapter 8)
    Util.prestigeToken(26, <draconicevolution:awakened_core>),           //Prestige Token 27 (chapter 8)
    Util.prestigeToken(27, <contenttweaker:rocket_block_10>),            //Prestige Token 28 (chapter 9)
    Util.prestigeToken(28, <projecte:item.pe_klein_star:5>),             //Prestige Token 29 (chapter 9)
    Util.prestigeToken(29, <projectex:matter:11>),                       //Prestige Token 30 (chapter 9)
    Util.prestigeToken(30, <minecraft:bedrock>)                          //Prestige Token 31 (chapter 9)

    //----------------------------------------------------------------------------------------------------------------------
];

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

    //darkutils-------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<darkutils:update_detector>, { 
        <overloaded:compressed_stone>:[0,2,6,8], 
        <darkutils:timer>:[1,3,5,7],
        <minecraft:observer>:[4]
    }), //Block Update Detector

    //dimdoors--------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<dimdoors:fabric:15>, { <dimdoors:unravelled_fabric>:[0,1,2,3] }, 2, 2), //Fabric of Reality

    Util.dynamicShaped(<dimdoors:rift_remover>, { 
        <minecraft:gold_ingot>:[0,2,6,8], 
        <dimdoors:stable_fabric>:[4] 
        }), //Rift Remover

    Util.dynamicShaped(<dimdoors:rift_signature>, { 
        <minecraft:iron_ingot>:[0,2,6,8], 
        <dimdoors:stable_fabric>:[4] 
        }), //Rift Signature

    //draconicevolution-----------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<draconicevolution:tool_upgrade:8>, { 
        <minecraft:dye:4>:[0,2,6,8], 
        <draconicevolution:draconic_core>:[1,7], 
        <draconicevolution:draconium_ingot>:[3,5], 
        <actuallyadditions:item_chest_crystal_light_blue>:[4] 
    }), //Upgrade Key (Shield Capacity)

    //enderio---------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<enderio:item_material:73>, {
        <enderio:item_alloy_nugget:6>:[0,2,6,8],
        <enderio:item_alloy_ingot:6>:[1,3,5,7],
        <enderio:item_material:13>:[4]
    }), //Dark Bimetal Gear

    Util.dynamicShaped(<enderio:item_material:66>, {
        <moreplates:end_steel_plate>:[0,2,6,8],
        <enderio:block_end_iron_bars>:[1,3,5,7],
        <enderio:block_infinity>:[4]
    }), //End Steel Chasis

    Util.dynamicShaped(<enderio:item_material:12>, {
        <enderio:item_alloy_nugget:1>:[0,2,6,8],
        <enderio:item_alloy_ingot:1>:[1,3,5,7],
        <enderio:item_material:11>:[4]
    }), //Energetic Bimetal Gear

    Util.dynamicShaped(<enderio:item_material:11>, {
        <minecraft:iron_nugget>:[0,2,6,8],
        <thermalfoundation:material:160>:[1,3,5,7],
        <enderio:item_material:20>:[4]
    }), //Infinity Bimetal Gear

    Util.dynamicShaped(<enderio:block_tank:1>, {
        <moreplates:dark_steel_plate>:[0,2,6,8],
        <enderio:block_dark_iron_bars>:[1,3,5,7],
        <enderio:block_tank>:[4]
    }), //Pressurized Tank

    Util.dynamicShaped(<enderio:block_simple_alloy_smelter>, {
        <overloaded:compressed_stone>:[0,2],
        <minecraft:fire_charge>:[1],
        <enderio:block_simple_furnace>:[3,5],
        <enderio:item_material>:[4],
        <enderio:item_material:11>:[6,8],
        <minecraft:bucket>:[7]
    }), //Simple Alloy Smelter

    Util.dynamicShaped(<enderio:item_material>, {
        <moreplates:enori_plate>:[0,2,6,8],
        <thermalfoundation:material:160>:[1,3,5,7],
        <enderio:item_material:20>:[4]
    }), //Simple Machine Chasis

    Util.dynamicShaped(<enderio:block_simple_furnace>, {
        <ore:plateIron>:[0,2],
        <minecraft:fire_charge>:[1],
        <overloaded:compressed_cobblestone>:[3,5],
        <enderio:item_material>:[4],
        <ore:gearStone>:[6,8],
        <minecraft:bucket>:[7]
    }), //Simple Powered Furnace

    Util.dynamicShaped(<enderio:block_simple_sag_mill>, {
        <minecraft:flint>:[0,1,2],
        <enderio:item_alloy_ingot:1>:[3,5],
        <enderio:item_material>:[4],
        <ore:gearStone>:[6,8],
        <minecraft:piston>:[7]
    }), //Simple Sag Mill

    Util.dynamicShaped(<enderio:item_material:13>, {
        <enderio:item_alloy_nugget:2>:[0,2,6,8],
        <enderio:item_alloy_ingot:2>:[1,3,5,7],
        <enderio:item_material:12>:[4]
    }), //Vibrant Bimetal Gear

    Util.dynamicShaped(<enderio:block_tank>, {
        <thermalfoundation:material:32>:[0,2,6,8],
        <minecraft:iron_bars>:[1,3,5,7],
        <ore:blockGlassHardened>:[4]
    }), //Tank

    //exchangers------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<exchangers:eio_endergy_exchanger_core_tier2>, {
        <enderio:block_holier_fog>:[0,2,6,8],
        <enderio:item_alloy_endergy_ingot:6>:[1,7],
        <forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000}):[3,5],
        <exchangers:eio_endergy_exchanger_core_tier1>:[4]
    }), //Exchanger Core Tier 2

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
        .setMarkIndex(1)
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

    //moreplates------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<moreplates:end_steel_gear>, {
        <enderio:item_alloy_nugget:8>:[0,2,6,8],
        <enderio:item_alloy_ingot:8>:[1,3,5,7],
        <enderio:item_material:73>:[4]
    }), //End Steel Gear

    //musictriggers---------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(Stack.blankDisc(), {
        <calculator:weakeneddiamond>:[0,2,6,8],
        <enderio:item_material:77>:[1,7],
        <integrateddynamics:part_audio_reader_item>:[3],
        <ore:record>:[4],
        <thermalfoundation:diagram_redprint>:[5]
    }), //Blank Music Disc

    Util.dynamicShaped(<musictriggers:music_recorder>, {
        <minecraft:jukebox>:[0],
        <integrateddynamics:part_audio_writer_item>:[1],
        <randomthings:soundrecorder>:[2],
        <randomthings:runedust>:[3]
    }, 2, 2), //Music Recorder

    //natura----------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<natura:empty_bowls>*2, { <natura:nether_planks>:[0,2,4] }, 3, 2), //Empty Ghostwood Bowl
    Util.dynamicShaped(<natura:empty_bowls:1>*2, { <natura:nether_planks:1>:[0,2,4] }, 3, 2), //Empty Bloodwood Bowl
    Util.dynamicShaped(<natura:empty_bowls:2>*2, { <natura:nether_planks:2>:[0,2,4] }, 3, 2), //Empty Darkwood Bowl
    Util.dynamicShaped(<natura:empty_bowls:3>*2, { <natura:nether_planks:3>:[0,2,4] }, 3, 2), //Empty Fusewood Bowl

    //naturesaura-----------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<naturesaura:shockwave_creator>, { 
        <naturesaura:token_rage>:[1], 
        <naturesaura:infused_stone>:[3,5],
        <vc:item_bomb:2>:[4], 
        <moreplates:restonia_plate>:[6,8], 
        <actuallyadditions:block_shock_suppressor>:[7]
    }), //Amulet of Wrath

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

    Util.simpleShapedNamed("emptyScanner",<scanner:scanner>, "table", [
        null,
        null,
        <minecraft:iron_ingot>,
        <minecraft:iron_ingot>,
        <minecraft:redstone_torch>,
        <minecraft:iron_ingot>
    ]), //Scanner (empty)
	
    Util.simpleShapedNamed("filledScanner",<scanner:scanner>.withTag({energy: 10000}), "table", [
        <scanner:battery>,
        null,
        <minecraft:iron_ingot>,
        <minecraft:iron_ingot>,
        <minecraft:redstone_torch>,
        <minecraft:iron_ingot>
    ]), //Scanner (filled)

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
    Util.dynamicShaped(<solarflux:mirror>, { 
        <ore:blockGlassColorless>:[0,1,2], 
        <ore:ingotSteel>:[4] 
    }, 3, 2), //Mirror

    Util.dynamicShaped(<solarflux:solar_panel_1>, { 
        <solarflux:mirror>:[0,1,2], 
        <ore:plankWood>:[3,5,7],
        <ore:ingotRedstoneAlloy>:[4],
        <ore:logWood>:[6,8]
    }), //Solar Panel I

    //tconstruct------------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<tconstruct:seared_furnace_controller>, { <tconstruct:seared_slab:3>:[0,1,2,6,7,8],
        <tconstruct:seared:3>:[3,5], <calculator:reinforcedfurnace>:[4] }), //Seared Furnace Controller

    //theaurorian-----------------------------------------------------------------------------------------------------------
    Util.dynamicShaped(<theaurorian:scrapper>, { <theaurorian:ceruleaningot>:[0,1,2,3,5], 
        <enderio:block_simple_furnace>:[4], <theaurorian:aurorianstonebrick>:[6,7,8] }), //Scrapper
    Util.dynamicShaped(<theaurorian:moonlightforge>, { <theaurorian:moongem>:[1],
        <enderio:block_simple_furnace>:[7], <theaurorian:auroriancobblestone>:[3,5,6,8],
	<theaurorian:silentwoodcraftingtable>:[4] }), //Moonlight Forge

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
        <minecraft:cobblestone>:[1,3,5,6,8] }), //Stone Leggings

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
    //apotheosis------------------------------------------------------------------------------------------------------------
    Util.shapeless(<apotheosis:scrap_tome>, [<akashictome:tome>, <theaurorian:scrapaurorianite>, <atum:cloth_scrap>,
        <xreliquary:potion_essence>.withTag({effects: [{duration: 2250, potency: 1, name: "minecraft:absorption"}]})]),
        //Tome of Scrapping

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

    //botany------------------------------------------------------------------------------------------------------
    Util.shapeless(<botany:pollen>, [<botany:seed>.marked("seed"), <gendustry:pollen_kit>]).addFunction(
	function(out, ins, info) {
	    return out.withTag(ins.seed.tag);
        } as IRecipeFunction), //Pollen	

    //contenttweaker--------------------------------------------------------------------------------------------------------
    Util.shapeless(<contenttweaker:bloq>, [<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"})]), //Bloq

    Util.shapeless(<contenttweaker:twilight_key>, [<contenttweaker:twilight_key_winter>, 
        <contenttweaker:twilight_key_swamp>, <contenttweaker:twilight_key_forest>, 
        <psi:material>]), //Twilight Dimensional Key

    //dimhoppertweaks-------------------------------------------------------------------------------------------------------
    Util.shapelessNamed("prestige token 1", <dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 1}), 
        [ <minecraft:paper>, <thermalfoundation:storage> ]), //Prestige Token 1

    //dimensionhopper-------------------------------------------------------------------------------------------------------
    Util.shapeless(<dimensionhopper:lightning_relocator_mk_1>, [<lightningcraft:lightning_cell>, 
        <lightningcraft:ench_reallocator>]), //Lightning Relocator Mk 1 Controller

    Util.shapeless(<dimensionhopper:lightning_relocator_mk_2>, [<lightningcraft:lightning_cell:1>, 
        <lightningcraft:ench_reallocator>]), //Lightning Relocator Mk 2 Controller

    Util.shapeless(<dimensionhopper:lightning_relocator_mk_3>, [<lightningcraft:lightning_cell:2>, 
        <lightningcraft:ench_reallocator>]), //Lightning Relocator Mk 3 Controller

    Util.shapeless(<dimensionhopper:lightning_relocator_mk_4>, [<lightningcraft:lightning_cell:3>, 
        <lightningcraft:ench_reallocator>]), //Lightning Relocator Mk 4 Controller

    //enderio---------------------------------------------------------------------------------------------------------------
    Util.shapeless(<enderio:block_decoration2>, [<enderio:block_decoration1:1>, <enderio:block_simple_furnace>, 
        <enderio:block_simple_furnace>]), //Alloy Smelter (decoration block)

    Util.shapeless(<enderio:block_decoration3:1>, [<enderio:block_decoration1:1>, 
        <enderio:block_simple_furnace>]), //Simple Alloy Smelter (decoration block)

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
        <aoa3:mega_rune_stone>.transformDamage()]), //Advanced Enchantment Table

    //extraplanets----------------------------------------------------------------------------------------------------------
    Util.shapeless(<extraplanets:schematic_tier5>, 
        [<moreplanets:black_hole_storage_schematic>]), //Tier 5 Rocket Schematic (Black Hole)

    //galacticraftplanets---------------------------------------------------------------------------------------------------
    Util.shapeless(<galacticraftplanets:schematic>, 
        [<galacticraftplanets:schematic:1>]), //Tier 3 Rocket Schematic (Cargo Rocket)

    Util.shapeless(<galacticraftplanets:schematic:1>, 
        [<galacticraftplanets:schematic>]), //Cargo Rocket Schematic (Tier 3 Rocket)

    //minecraft-------------------------------------------------------------------------------------------------------------
    Util.shapeless(<minecraft:dye:2>, [<botania:pestleandmortar>, <minecraft:cactus>, <biomesoplenty:blue_dye>, 
        <xlfoodmod:cheese>]), //Cactus Green

    Util.shapeless(<minecraft:enchanting_table>, [<eplus:advanced_table>, 
        <draconicevolution:draconic_core>]), //Enchanting Table

    //moreplanets-----------------------------------------------------------------------------------------------------------
    Util.shapeless(<moreplanets:black_hole_storage_schematic>, 
        [<moreplanets:ion_cannon_schematic>]), //Black Hole Storage Schematic (Ion Cannon)

    Util.shapeless(<moreplanets:ion_cannon_schematic>, 
        [<extraplanets:schematic_tier5>]), //Ion Cannon Schematic (Tier 5 Rocket)

    //randomthings----------------------------------------------------------------------------------------------------------
    Util.shapeless(<randomthings:timeinabottle>, [<randomthings:timeinabottle>, <environmentaltech:lonsdaleite_crystal>])
        .setMarkIndex(0)
        .addFunction(function (output, map, info) {
            val outputTag as IData = {timeData: {storedTime: map.mark.tag.timeData.storedTime+1200}};
            return output.withTag(outputTag);
        }), //Time in a Bottle

    //scanner---------------------------------------------------------------------------------------------------------------
    Util.shapeless(<scanner:scanner>.withTag({energy:10000}), [<scanner:scanner>, 
        <scanner:battery>]), //Scanner (recharge)

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

function addShaped(holder as Holder) {
    recipes.addShaped(holder.getName("crafting."), holder.getOutput(), holder.getShaped(),
        holder.getFunction(), holder.getAction());
}

function addShapeless(holder as Holder) {
    recipes.addShapeless(holder.getName("crafting."), holder.getOutput(), holder.getShapeless(),
        holder.getFunction(), holder.getAction());
}

function run() {
    for holder in shapedBuilders {
        addShaped(holder);
    }
    for holders in shapedBuilderArrays {
        for holder in holders {
            addShaped(holder);
        }
    }
    for holder in shapelessBuilders {
        addShapeless(holder);
    }
    for holders in shapelessBuilderArrays {
        for holder in holders {
            addShapeless(holder);
        }
    }
}
