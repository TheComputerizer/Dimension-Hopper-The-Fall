#reloadable

import mods.thermalexpansion.Compactor;

Compactor.addStorageRecipe(<thermalfoundation:material:801>, <thermalfoundation:material:800>*4, 5000);
Compactor.addStorageRecipe(<thermalfoundation:material:801>, <mekanism:sawdust>*4, 5000);
Compactor.addStorageRecipe(<extrautils2:flattransfernode>*4, <extrautils2:grocket>, 2000);
Compactor.addStorageRecipe(<extrautils2:flattransfernode:1>*4, <extrautils2:grocket:2>, 2000);

for meta in 0 .. 16 {
    Compactor.addStorageRecipe(<industrialforegoing:laser_lens>.definition.makeStack(meta), <environmentaltech:laser_lens_colored>.definition.makeStack(meta), 10000);
}