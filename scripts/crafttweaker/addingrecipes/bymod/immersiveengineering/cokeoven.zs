#reloadable

import mods.immersiveengineering.CokeOven;

CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);

CokeOven.addRecipe(<thermalfoundation:material:802>, 250, <minecraft:coal>, 1000);
CokeOven.addRecipe(<thermalfoundation:storage_resource:1>, 2000, <minecraft:coal_block>, 1000);