#reloadable

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;
import scripts.crafttweaker.early.util.Stacks as Stack;

//chaos ore
Pulverizer.removeRecipe(<silentgems:essenceore>);
Pulverizer.removeRecipe(<minecraft:diamond_chestplate>);

//music disc fragment
Pulverizer.addRecipe(<avaritia:resource:7>*4, Stack.recordedDisc() as IItemStack, 457268, <avaritia:resource:7>*2, 50);

//graphite
Pulverizer.addRecipe(<bigreactors:dustgraphite>, <aoa3:ancient_rock>, 100000);

//flint
Pulverizer.addRecipe(<jaopca:dust.flint>, <minecraft:flint>*4, 1000);