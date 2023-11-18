import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.naturesaura.TreeRitual;

//menril sapling
TreeRitual.addRecipe("menrilsapling", <minecraft:sapling>, <integrateddynamics:menril_sapling>, 100, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>]);

//storage drawer upgrades
//storage drawers I
TreeRitual.addRecipe("storagedrawerI", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_storage>, 100, [<storagedrawers:upgrade_template>, <aether:skyroot_stick>, <minecraft:obsidian>, <aether:skyroot_stick>, <minecraft:obsidian>, <aether:skyroot_stick>, <minecraft:obsidian>, <aether:skyroot_stick>]);
//storage drawers II
TreeRitual.addRecipe("storagedrawerII", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_storage:1>, 150, [<storagedrawers:upgrade_storage>, <atum:palm_stick>, <enderio:item_material:11>, <atum:palm_stick>, <enderio:item_material:11>, <atum:palm_stick>, <enderio:item_material:11>, <atum:palm_stick>]);
//storage drawers III
TreeRitual.addRecipe("storagedrawerIII", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_storage:2>, 200, [<storagedrawers:upgrade_storage:1>, <blue_skies:cherry_stick>, <enderio:item_material:12>, <blue_skies:cherry_stick>, <enderio:item_material:12>, <blue_skies:cherry_stick>, <enderio:item_material:12>, <blue_skies:cherry_stick>]);
//storage drawers IV
TreeRitual.addRecipe("storagedrawerIV", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_storage:3>, 250, [<storagedrawers:upgrade_storage:2>, <cavern:cave_item:3>, <enderio:item_material:13>, <cavern:cave_item:3>, <enderio:item_material:13>, <cavern:cave_item:3>, <enderio:item_material:13>, <cavern:cave_item:3>]);
//storage drawers V
TreeRitual.addRecipe("storagedrawerV", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_storage:4>, 300, [<storagedrawers:upgrade_storage:3>, <thebetweenlands:items_misc:20>, <enderio:item_material:73>, <thebetweenlands:items_misc:20>, <enderio:item_material:73>, <thebetweenlands:items_misc:20>, <enderio:item_material:73>, <thebetweenlands:items_misc:20>]);
//storage drawers void
TreeRitual.addRecipe("storagedrawervoid", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_void>, 100, [<storagedrawers:upgrade_template>, <minecraft:stick>, <moreplates:empowered_void_gear>, <minecraft:stick>, <moreplates:empowered_void_gear>, <minecraft:stick>, <moreplates:empowered_void_gear>, <minecraft:stick>]);
//storage drawers conversion
TreeRitual.addRecipe("storagedrawerconversion", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_conversion>, 100, [<storagedrawers:upgrade_template>, <minecraft:stick>, <moreplates:palis_gear>, <minecraft:stick>, <moreplates:palis_gear>, <minecraft:stick>, <moreplates:palis_gear>, <minecraft:stick>]);
//storage drawers downgrade
TreeRitual.addRecipe("storagedrawerdown", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_one_stack>, 100, [<storagedrawers:upgrade_template>, <minecraft:stick>, <minecraft:flint>, <minecraft:stick>, <minecraft:flint>, <minecraft:stick>, <minecraft:flint>, <minecraft:stick>]);
//storage drawers redstone
TreeRitual.addRecipe("storagedrawerredstone", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_redstone>, 100, [<storagedrawers:upgrade_template>, <minecraft:stick>, <calculator:redstoneingot>, <minecraft:stick>, <calculator:redstoneingot>, <minecraft:stick>, <calculator:redstoneingot>, <minecraft:stick>]);
//storage drawers redstone max
TreeRitual.addRecipe("storagedrawerredstonemax", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_redstone:1>, 200, [<storagedrawers:upgrade_redstone>, <minecraft:redstone>, <tp:redstone_ingot>, <minecraft:stick>, <tp:redstone_ingot>, <minecraft:stick>, <tp:redstone_ingot>, <minecraft:stick>]);
//storage drawers redstone min
TreeRitual.addRecipe("storagedrawerredstonemin", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_redstone:2>, 200, [<storagedrawers:upgrade_redstone>, <minecraft:stick>, <tp:redstone_ingot>, <minecraft:stick>, <tp:redstone_ingot>, <minecraft:stick>, <tp:redstone_ingot>, <minecraft:stick>]);
//storage drawers status
TreeRitual.addRecipe("storagedrawerstatus", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_status>, 100, [<storagedrawers:upgrade_template>, <minecraft:stick>, <moreplates:restonia_gear>, <minecraft:stick>, <moreplates:restonia_gear>, <minecraft:stick>, <moreplates:restonia_gear>, <minecraft:stick>]);
//storage drawers status 2
TreeRitual.addRecipe("storagedrawerstatus2", <integrateddynamics:menril_sapling>, <storagedrawers:upgrade_status:1>, 200, [<storagedrawers:upgrade_status>, <minecraft:stick>, <moreplates:empowered_restonia_gear>, <minecraft:stick>, <moreplates:empowered_restonia_gear>, <minecraft:stick>, <moreplates:empowered_restonia_gear>, <minecraft:stick>]);

//MA clusters
TreeRitual.addRecipe("nethercluster", <integrateddynamics:menril_sapling>, <mysticalagriculture:crafting:8>, 600, [<overloaded:compressed_netherrack>, <quark:sandstone_new:4>, <minecraft:nether_wart_block>, <biomesoplenty:flesh>]);
TreeRitual.addRecipe("dyecluster", <integrateddynamics:menril_sapling>, <mysticalagriculture:crafting:7>, 600, [<industrialforegoing:artificial_dye>, <industrialforegoing:artificial_dye:13>, <industrialforegoing:artificial_dye:15>, <industrialforegoing:artificial_dye:2>, <industrialforegoing:artificial_dye:4>, <industrialforegoing:artificial_dye:6>, <industrialforegoing:artificial_dye:8>, <industrialforegoing:artificial_dye:10>]);
TreeRitual.addRecipe("mysticalcluster", <integrateddynamics:menril_sapling>, <mysticalagriculture:crafting:10>, 600, [<botania:flower>, <botania:flower:2>, <botania:flower:4>, <botania:flower:6>, <botania:flower:8>, <botania:flower:10>, <botania:flower:13>, <botania:flower:15>]);
TreeRitual.addRecipe("endcluster", <integrateddynamics:menril_sapling>, <mysticalagriculture:crafting:9>, 600, [<opencomputers:endstone>, <minecraft:purpur_pillar>, <minecraft:end_rod>, <minecraft:purpur_pillar>]);