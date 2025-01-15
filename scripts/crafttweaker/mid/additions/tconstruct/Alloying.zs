#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Alloy;

static recipes as ILiquidStack[][ILiquidStack] = {
    <liquid:aurorian_alloy>*100: [
        <liquid:tamoltenmoonstone>*144, <liquid:tamoltencerulean>*144
    ] as ILiquidStack[]
};

function run() {
    for alloy, inputs in recipes {
        Alloy.addRecipe(alloy,inputs);
    }
}