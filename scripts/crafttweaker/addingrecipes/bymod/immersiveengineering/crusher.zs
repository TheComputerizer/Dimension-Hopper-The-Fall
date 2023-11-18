#reloadable

import mods.immersiveengineering.Crusher;

//remove chaos ore
Crusher.removeRecipe(<silentgems:craftingmaterial>);
//remove nickel ore
Crusher.removeRecipe(<thermalfoundation:material:69>);
//remove iron ore
Crusher.removeRecipe(<thermalfoundation:material>);

//add nickel back without platinum
Crusher.addRecipe(<thermalfoundation:material:69>*2, <thermalfoundation:ore:5>, 5000);

//add iron back without nickel
Crusher.addRecipe(<thermalfoundation:material>*2, <minecraft:iron_ore>, 5000);

//alt coke
Crusher.removeRecipesForInput(<immersiveengineering:material:6>);
Crusher.removeRecipesForInput(<immersiveengineering:stone_decoration:3>);
Crusher.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>, 5000);
Crusher.addRecipe(<immersiveengineering:material:17>*9, <thermalfoundation:storage_resource:1>, 50000);