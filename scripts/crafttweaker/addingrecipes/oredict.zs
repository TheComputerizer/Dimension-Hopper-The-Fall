#priority 550
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//removals
oreDict.blockAquamarine.removeItems([<cavern:cave_block:1>, <zollerngalaxy:aquamarineblock>]);
oreDict.gemAquamarine.removeItems([<cavern:cave_item>, <zollerngalaxy:aquamarine>]);
oreDict.oreCobalt.removeItems([<zollerngalaxy:edencobaltore>, <zollerngalaxy:purgcobaltore>, <zollerngalaxy:kriffcobaltore>]);
oreDict.oreAquamarine.removeItems([<zollerngalaxy:caligroaquaore>, <zollerngalaxy:harranaquamarineore>, <cavern:cave_block>]);

//additions
oreDict.oreCobalt.addItems([<zollerngalaxy:edencobaltore>, <zollerngalaxy:purgcobaltore>, <zollerngalaxy:kriffcobaltore>]);

//enchantables
addEnchantableOredict("enchantableHelmets",scripts.crafttweaker.staticvars.helmets);
addEnchantableOredict("enchantableChestplates",scripts.crafttweaker.staticvars.chestplates);
addEnchantableOredict("enchantableLeggings",scripts.crafttweaker.staticvars.leggings);
addEnchantableOredict("enchantableBoots",scripts.crafttweaker.staticvars.boots);
addEnchantableOredict("enchantableBows",scripts.crafttweaker.staticvars.bows);
addEnchantableOredict("enchantableSwords",scripts.crafttweaker.staticvars.swords);
addEnchantableOredict("enchantableAxes",scripts.crafttweaker.staticvars.axes);
addEnchantableOredict("enchantableShovels",scripts.crafttweaker.staticvars.shovels);
addEnchantableOredict("enchantableHoes",scripts.crafttweaker.staticvars.hoes);
addEnchantableOredict("enchantableFishingRods",scripts.crafttweaker.staticvars.fishingrods);
addEnchantableOredict("enchantableShears",scripts.crafttweaker.staticvars.shears);

function addEnchantableOredict(name as string, items as IItemStack[]) {
    val od as IOreDictEntry = oreDict.get(name);
    od.addItems(items);
    od.removeItems(scripts.crafttweaker.staticvars.disenchant);
}

//blocks for facades
var blocks as IItemStack[] = [] as IItemStack[];
