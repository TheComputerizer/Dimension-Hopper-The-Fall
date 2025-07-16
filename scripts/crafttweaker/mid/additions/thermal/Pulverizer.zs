#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;

//chaos ore
Pulverizer.removeRecipe(<silentgems:essenceore>);
Pulverizer.removeRecipe(<minecraft:diamond_chestplate>);

//graphite
Pulverizer.addRecipe(<bigreactors:dustgraphite>, <aoa3:ancient_rock>, 100000);

//flint
Pulverizer.addRecipe(<jaopca:dust.flint>, <minecraft:flint>*4, 1000);

//Naquadah
Pulverizer.addRecipe(<sgcraft:naquadah>*2, <sgcraft:naquadahore>, 5000, <jaopca:dust.naquadah_alloy>, 10);
