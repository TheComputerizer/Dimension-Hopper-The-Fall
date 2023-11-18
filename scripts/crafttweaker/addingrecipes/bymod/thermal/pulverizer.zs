#reloadable

import mods.thermalexpansion.Pulverizer;

//chaos ore
Pulverizer.removeRecipe(<silentgems:essenceore>);
Pulverizer.removeRecipe(<minecraft:diamond_chestplate>);

//music disc fragment
Pulverizer.addRecipe(<avaritia:resource:7>*4, <musictriggers:music_triggers_record>, 457268, <avaritia:resource:7>*2, 50);

//graphite
Pulverizer.addRecipe(<bigreactors:dustgraphite>, <aoa3:ancient_rock>, 100000);

//flint
Pulverizer.addRecipe(<jaopca:dust.flint>, <minecraft:flint>*4, 1000);