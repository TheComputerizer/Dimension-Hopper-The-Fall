#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//generic
oreDict.oreCobalt.addItems([<zollerngalaxy:edencobaltore>, <zollerngalaxy:purgcobaltore>, <zollerngalaxy:kriffcobaltore>]);

//enchantables
addEnchantableOredict("enchantableHelmets",scripts.crafttweaker.early.util.globals.helmets);
addEnchantableOredict("enchantableChestplates",scripts.crafttweaker.early.util.globals.chestplates);
addEnchantableOredict("enchantableLeggings",scripts.crafttweaker.early.util.globals.leggings);
addEnchantableOredict("enchantableBoots",scripts.crafttweaker.early.util.globals.boots);
addEnchantableOredict("enchantableBows",scripts.crafttweaker.early.util.globals.bows);
addEnchantableOredict("enchantableSwords",scripts.crafttweaker.early.util.globals.swords);
addEnchantableOredict("enchantableAxes",scripts.crafttweaker.early.util.globals.axes);
addEnchantableOredict("enchantableShovels",scripts.crafttweaker.early.util.globals.shovels);
addEnchantableOredict("enchantableHoes",scripts.crafttweaker.early.util.globals.hoes);
addEnchantableOredict("enchantableFishingRods",scripts.crafttweaker.early.util.globals.fishingrods);
addEnchantableOredict("enchantableShears",scripts.crafttweaker.early.util.globals.shears);

function addEnchantableOredict(name as string, items as IItemStack[]) {
    val od as IOreDictEntry = oreDict.get(name);
    od.addItems(items);
    od.removeItems(scripts.crafttweaker.early.util.globals.disenchant);
}

//blocks for facades
var blocks as IItemStack[] = [] as IItemStack[];
