#priority 550
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.globals as Global;

//generic
oreDict.oreCobalt.addItems([<zollerngalaxy:edencobaltore>, <zollerngalaxy:purgcobaltore>, <zollerngalaxy:kriffcobaltore>]);

//enchantables
Global.enchant["axe"].addItems(Global.axes);
Global.enchant["boots"].addItems(Global.boots);
Global.enchant["bow"].addItems(Global.bows);
Global.enchant["chest"].addItems(Global.chestplates);
Global.enchant["fishing"].addItems(Global.fishingrods);
Global.enchant["helm"].addItems(Global.helmets);
Global.enchant["hoe"].addItems(Global.hoes);
Global.enchant["legs"].addItems(Global.leggings);
Global.enchant["shears"].addItems(Global.shears);
Global.enchant["shovel"].addItems(Global.shovels);
Global.enchant["sword"].addItems(Global.swords);
