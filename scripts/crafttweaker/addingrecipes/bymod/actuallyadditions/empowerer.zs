import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.actuallyadditions.Empowerer;

//industrial machine chasis
Empowerer.addRecipe(<enderio:item_material:1>, <enderio:item_material>, <enderio:item_material:51>, <enderio:block_alloy:6>, <thermalfoundation:storage_alloy>, <opencomputers:material:6>, 25000, 1000);
//grainy capacitor
Empowerer.addRecipe(<enderio:item_capacitor_grainy>, <enderio:item_material:20>, <thermalfoundation:material:192>, <thermalfoundation:material:224>, <enderio:item_alloy_nugget:3>, <enderio:item_alloy_nugget:3>, 2500, 100);
//basic capactior
Empowerer.addRecipe(<enderio:item_basic_capacitor>, <minecraft:gold_ingot>, <enderio:item_alloy_ingot:3>, <enderio:block_infinity_fog>, <enderio:item_capacitor_grainy>, <enderio:item_capacitor_grainy>, 10000, 200);
//double layer capacitor
Empowerer.addRecipe(<enderio:item_basic_capacitor:1>, <calculator:redstoneingot>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_basic_capacitor>, <enderio:item_basic_capacitor>, 20000, 300);
//octadic capacitor
Empowerer.addRecipe(<enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_endergy_ingot:6>, <enderio:item_basic_capacitor:1>, <enderio:item_basic_capacitor:1>, 40000, 400);
//crystalline capacitor
Empowerer.addRecipe(<enderio:item_capacitor_crystalline>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>, 80000, 600);
//melodic capacitor
Empowerer.addRecipe(<enderio:item_capacitor_melodic>, <minecraft:purple_shulker_box>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_capacitor_crystalline>, <enderio:item_capacitor_crystalline>, 160000, 800);
//stellar capacitor
Empowerer.addRecipe(<enderio:item_capacitor_stellar>, <overloaded:nether_star_block>, <enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:3>, <enderio:item_capacitor_melodic>, <enderio:item_capacitor_melodic>, 640000, 1000);
//device frame
Empowerer.addRecipe(<thermalexpansion:frame:64>, <thermalexpansion:frame>, <thermalfoundation:material:257>, <silentgems:craftingmaterial:3>, <thermalfoundation:material:257>, <silentgems:craftingmaterial:3>, 25000, 500);
//reinforced obsidian
Empowerer.addRecipe(<tp:reinforced_obsidian_ingot>, <overloaded:compressed_obsidian>, <enderio:block_dark_iron_bars>, <enderio:block_dark_iron_bars>, <enderio:block_dark_iron_bars>, <enderio:block_dark_iron_bars>, 10000, 1000);
//chaos ore
Empowerer.addRecipe(<silentgems:essenceore>, <overloaded:compressed_stone:2>, <goodnightsleep:zitrite_ingot>, <cavern:cave_item:2>, <silentgems:gem:8>, <silentgems:gem:6>, 1000000, 1000);
//time in a bottle
Empowerer.addRecipe(<randomthings:timeinabottle>, <thebetweenlands:aspect_vial:1>, <psi:cad_core:3>, <extrautils2:redstoneclock>, <minecraft:clock>, <calculator:material:5>, 10000000, 1000);

//empowered stuff
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
Empowerer.removeRecipe(<moreplates:empowered_diamatine_plate>);
Empowerer.removeRecipe(<moreplates:empowered_emeradic_plate>);
Empowerer.removeRecipe(<moreplates:empowered_enori_plate>);
Empowerer.removeRecipe(<moreplates:empowered_palis_plate>);
Empowerer.removeRecipe(<moreplates:empowered_restonia_plate>);
Empowerer.removeRecipe(<moreplates:empowered_void_plate>);
Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
//crystals
//restonia
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <industrialforegoing:artificial_dye:14>, <tconstruct:materials:1>, <calculator:redstoneingot>, <minecraft:netherbrick>, 5000, 100);
//palis
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <industrialforegoing:artificial_dye:11>, <minecraft:prismarine_shard>, <minecraft:prismarine_crystals>, <minecraft:cactus>, 10000, 100);
//diamante
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <industrialforegoing:artificial_dye:3>, <enderio:item_material:76>, <thebetweenlands:items_misc:19>, <naturesaura:sky_ingot>, 20000, 100);
//void
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <industrialforegoing:artificial_dye:15>, <thermalfoundation:material:802>, <minecraft:flint>, <overloaded:compressed_stone>, 5000, 100);
//emeradic
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <industrialforegoing:artificial_dye:13>, <actuallyadditions:item_misc:12>, <botania:manaresource:4>, <ore:ingotUnstable>, 20000, 100);
//enori
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <industrialforegoing:artificial_dye>, <minecraft:snowball>, <minecraft:stone_button>, <overloaded:compressed_cobblestone>, 10000, 100);
//plates
//restonia
Empowerer.addRecipe(<moreplates:empowered_restonia_plate>, <moreplates:restonia_plate>, <industrialforegoing:artificial_dye:14>, <tconstruct:materials:1>, <calculator:redstoneingot>, <minecraft:netherbrick>, 10000, 100);
//palis
Empowerer.addRecipe(<moreplates:empowered_palis_plate>, <moreplates:palis_plate>, <industrialforegoing:artificial_dye:11>, <minecraft:prismarine_shard>, <minecraft:prismarine_crystals>, <minecraft:cactus>, 20000, 100);
//diamante
Empowerer.addRecipe(<moreplates:empowered_diamatine_plate>, <moreplates:diamatine_plate>, <industrialforegoing:artificial_dye:3>, <enderio:item_material:76>, <thebetweenlands:items_misc:19>, <naturesaura:sky_ingot>, 40000, 100);
//void
Empowerer.addRecipe(<moreplates:empowered_void_plate>, <moreplates:void_plate>, <industrialforegoing:artificial_dye:15>, <thermalfoundation:material:802>, <minecraft:flint>, <overloaded:compressed_stone>, 10000, 100);
//emeradic
Empowerer.addRecipe(<moreplates:empowered_emeradic_plate>, <moreplates:emeradic_plate>, <industrialforegoing:artificial_dye:13>, <actuallyadditions:item_misc:12>, <botania:manaresource:4>, <ore:ingotUnstable>, 40000, 100);
//enori
Empowerer.addRecipe(<moreplates:empowered_enori_plate>, <moreplates:enori_plate>, <industrialforegoing:artificial_dye>, <minecraft:snowball>, <minecraft:stone_button>, <overloaded:compressed_cobblestone>, 20000, 100);
//blocks
//restonia
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <industrialforegoing:artificial_dye:14>, <tconstruct:deco_ground>, <calculator:material:9>, <minecraft:nether_brick>, 50000, 100);
//palis
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <industrialforegoing:artificial_dye:11>, <minecraft:prismarine:1>, <minecraft:sea_lantern>, <mysticalagriculture:crafting:6>, 100000, 100);
//diamante
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <industrialforegoing:artificial_dye:3>, <enderio:block_holier_fog>, <thebetweenlands:valonite_block>, <naturesaura:aura_trove>, 200000, 100);
//void
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <industrialforegoing:artificial_dye:15>, <thermalfoundation:storage_resource:1>, <minecraft:flint_and_steel>, <overloaded:compressed_stone:1>, 50000, 100);
//emeradic
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <industrialforegoing:artificial_dye:13>, <tconstruct:ingots:3>, <moreplates:terrasteel_gear>, <ore:ingotUnstable>, 200000, 100);
//enori
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <industrialforegoing:artificial_dye>, <minecraft:snow>, <opencomputers:material:14>, <overloaded:compressed_cobblestone:1>, 10000, 100);

//reforged station
Empowerer.addRecipe(<qualitytools:reforging_station>, <enderio:block_alloy:6>, <overloaded:compressed_obsidian:2>, <minecraft:stone_slab>, <tp:stone_hammer>, <overloaded:compressed_obsidian:2>, 1000000, 1000);