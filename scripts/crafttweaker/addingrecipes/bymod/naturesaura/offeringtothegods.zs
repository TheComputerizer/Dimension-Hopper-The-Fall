import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.naturesaura.Offering;

//brewingstand
Offering.addRecipe("brewingstand", <minecraft:blaze_rod>, 5, <overloaded:compressed_cobblestone:3>, <minecraft:brewing_stand>);

//modularium
Offering.addRecipe("modularium", <extendedcrafting:material>, 1, <cavern:cave_item:1>, <contenttweaker:divine_will>);

//scarab
Offering.addRecipe("atumscarab", <atum:sand>, 10, <minecraft:gold_block>, <atum:scarab>);

//swamp talisman
Offering.addRecipe("talisman", <naturesaura:moss_generator>, 3, <contenttweaker:swamp_key>, <thebetweenlands:swamp_talisman>);

//gold leaves
Offering.addRecipe("goldleafautomation", <naturesaura:gold_fiber>, 2, <ore:treeLeaves>, <naturesaura:gold_leaf>);

//creative storage upgrade
Offering.addRecipe("creativestorageupgrade", <storagedrawers:upgrade_storage:4>, 16, <moreplates:neutronium_gear>, <storagedrawers:upgrade_creative>);
