#reloadable

import mods.immersiveengineering.MetalPress;

MetalPress.removeRecipe(<moreplates:end_steel_gear>);

MetalPress.addRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, <immersiveengineering:mold>, 2000, 1);

MetalPress.addRecipe(<immersiveengineering:graphite_electrode>, <immersiveengineering:material:18>, <immersiveengineering:mold:2>, 5000, 8);

MetalPress.addRecipe(<extendedcrafting:material:3>*2, <extendedcrafting:material>, <immersiveengineering:mold:2>, 2000, 1);

MetalPress.addRecipe(<lightningcraft:rod:4>*2, <OC:ingotAluminum>, <immersiveengineering:mold:2>, 2000, 1);
