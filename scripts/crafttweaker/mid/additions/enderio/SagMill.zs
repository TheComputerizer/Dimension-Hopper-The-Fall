#reloadable

import scripts.crafttweaker.mid.additions.enderio.RecipeClasses.SagMillRecipe as Recipe;

static recipes as Recipe[] = [
    Recipe(<thermalfoundation:ore:2>, [<thermalfoundation:material>*2, <minecraft:cobblestone>]),       //iron ore
    Recipe(<silentgems:essenceore>, [<silentgems:craftingmaterial:3>*3, <silentgems:craftingmaterial:3>*2, <silentgems:craftingmaterial:3>])
        .setChances([1.0, 0.66, 0.33] as float[]).setEnergy(500000).setXP([500, 100, 50] as float[]),   //chaos ore
    Recipe(<thermalfoundation:ore:2>, [<thermalfoundation:material:66>*2, <minecraft:cobblestone>]),    //silver ore
    Recipe(<thermalfoundation:ore:5>, [<thermalfoundation:material:69>*2, <minecraft:cobblestone>]),    //nickel ore
    Recipe(<thermalfoundation:ore:6>, [<thermalfoundation:material:70>*2, <minecraft:cobblestone>]),    //iridium ore
    Recipe(<sgcraft:naquadahore>, [<sgcraft:naquadah>*2, <minecraft:cobblestone>, <jaopca:dust.naquadah_alloy>])
		.setChances([1.0, 0.15, 0.1] as float[]).setEnergy(50000).setXP([500, 100, 50] as float[]),		//Naquadah Ore
];

function run() {
    for recipe in recipes {
        recipe.make();
    }
}
