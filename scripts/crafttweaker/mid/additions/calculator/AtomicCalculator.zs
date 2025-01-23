#reloadable

import crafttweaker.item.IIngredient;
import mods.calculator.atomic;

static recipes as IIngredient[][IIngredient] = {
    <bigreactors:ingotludicrite>*2: [ <extendedcrafting:material:48>, <bigreactors:ingotblutonium>, <netherex:blazed_wither_bone> ], //Ludicrite ingot
    <bigreactors:blockludicrite>*2: [ <extendedcrafting:storage:7>, <bigreactors:blockblutonium>, <xreliquary:mob_charm_fragment:12> ], //Ludicrite block
    <bigreactors:ingotludicrite>*5: [ <extendedcrafting:material:48>, <zollerngalaxy:plutoniumingot>, <netherex:blazed_wither_bone> ], //Ludicrite ingot alt
    <bigreactors:blockludicrite>*5: [ <extendedcrafting:storage:7>, <zollerngalaxy:plutoniumblock>, <xreliquary:mob_charm_fragment:12> ], //Ludicrite block alt
    <bigreactors:ingotblutonium>: [ <bigreactors:ingotcyanite>*4, <randomthings:superlubricentice>*8, <thermalfoundation:material:2048> ] //blutonium ingot
};


function run() {
    for output, inputs in recipes {
        atomic.addRecipe(inputs[0], inputs[1], inputs[2], output);
    }
}