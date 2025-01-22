#reloadable

import crafttweaker.item.IIngredient;
import mods.calculator.algorithmSeparator;

static recipes as IIngredient[][IIngredient] = {
    <thermalfoundation:storage:8>*2: [ <jaopca:block.mana>, <jaopca:block.slag_rich> ], //Mana Infused Block -> Mana Block
    <thermalfoundation:storage:8>*2: [ <jaopca:block.mana>, <jaopca:block.slag_rich> ], //Mana Infused Block -> Mana Block
    <thermalfoundation:material:72>*2: [ <thermalfoundation:material:1028>, <jaopca:dust.slag_rich> ], //Mana Infused Dust -> Mana Dust
    <jaopca:block.slag_rich>*2: [ <jaopca:block.slag>, <jaopca:block.cinnabar> ], //Rich Slag Block -> Slag Block
    <thermalfoundation:material:865>*2: [ <thermalfoundation:material:864>, <thermalfoundation:material:866> ], //Rich Slag -> Slag
    <jaopca:dust.slag_rich>*2: [ <jaopca:dust.slag>, <jaopca:dust.cinnabar> ] //Rich Slag Dust -> Slag Dust
};


function run() {
    for input, outputs in recipes {
        algorithmSeparator.addRecipe(input,outputs[0],outputs[1]);
    }
}