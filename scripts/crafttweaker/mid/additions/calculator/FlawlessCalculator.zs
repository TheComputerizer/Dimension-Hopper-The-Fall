#reloadable

import crafttweaker.item.IIngredient;
import mods.calculator.flawless;

static recipes as IIngredient[][IIngredient] = {
    <extraplanets:potassium>: [ <extraplanets:potash_shards>*5, <natura:edibles:10>*2, <minecraft:apple>*4, <extratrees:food:28>*3] //potassium
};

function run() {
    for output, inputs in recipes {
        flawless.addRecipe(inputs[0], inputs[1], inputs[2], inputs[3], output);
    }
}