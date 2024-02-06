#reloadable

import mods.tconstruct.Casting;

Casting.removeTableRecipe(<moreplates:end_steel_gear>);
Casting.removeTableRecipe(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:73>);
Casting.removeTableRecipe(<enderio:item_material:12>);
Casting.removeTableRecipe(<enderio:item_material:13>);
Casting.removeTableRecipe(<minecraft:emerald>);

Casting.addTableRecipe(<theaurorian:aurorianiteingot>, <theaurorian:crystal>, <liquid:aurorian_alloy>, 500, true);

Casting.addTableRecipe(<silentgems:food:3>, <minecraft:bowl>, <liquid:protein>, 1000, true);

//zinc
Casting.removeTableRecipe(<zollerngalaxy:zincingot>);
Casting.addTableRecipe(<extraplanets:tier8_items:5>, <tconstruct:cast_custom>, <liquid:zinc>, 144, false);
Casting.removeBasinRecipe(<zollerngalaxy:zincblock>);
Casting.addBasinRecipe(<extraplanets:neptune:7>, null, <liquid:zinc>, 1296);
Casting.addTableRecipe(<extraplanets:tier8_items:5>, <tconstruct:cast_custom>, <liquid:zinc>, 144, false);

//aquamarine
Casting.removeTableRecipe(<zollerngalaxy:aquamarineblock>);
Casting.removeBasinRecipe(<silentgems:gemblock:8>);
Casting.removeTableRecipe(<zollerngalaxy:aquamarine>);
Casting.removeTableRecipe(<silentgems:gemshard:8>);

//nova frame
Casting.addTableRecipe(<extrabees:hive_frame.debug>, <magicbees:frames.oblivion>, <liquid:binnie.dna.raw>, 729000, true);