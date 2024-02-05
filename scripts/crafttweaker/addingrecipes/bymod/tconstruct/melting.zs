#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;

Melting.removeRecipe(<liquid:draconium>, <draconicevolution:draconium_ore>);
Melting.removeRecipe(<liquid:draconium>, <draconicevolution:draconium_ore:1>);
Melting.removeRecipe(<liquid:draconium>, <draconicevolution:draconium_ore:2>);
Melting.removeRecipe(<liquid:draconium>, <draconicevolution:draconium_dust>);
Melting.removeRecipe(<liquid:aquamarine>);
Melting.removeRecipe(<liquid:chaos>, <silentgems:essenceore>);
Melting.addEntityMelting(<entity:minecraft:villager>, <liquid:aerotheum>);
replaceRod(<liquid:steel>, <lightningcraft:rod:1>, 72);
replaceRod(<liquid:aluminum>, <lightningcraft:rod:4>, 72);
replaceRod(<liquid:lead>, <lightningcraft:rod:2>, 72);
replaceRod(<liquid:tin>, <lightningcraft:rod:3>, 72);
replaceRod(<liquid:copper>, <lightningcraft:rod:6>, 72);
replaceRod(<liquid:electricium>, <lightningcraft:rod:7>, 72);
replaceRod(<liquid:skyfather>, <lightningcraft:rod:8>, 72);
replaceRod(<liquid:mystic>, <lightningcraft:rod:9>, 72);

function replaceRod(liquid as ILiquidStack, rod as IItemStack, mb as int) {
    Melting.removeRecipe(liquid, rod);
    Melting.addRecipe(liquid*mb, rod);
}