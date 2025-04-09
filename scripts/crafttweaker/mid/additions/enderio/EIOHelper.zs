#priority 5
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.crafttweaker.mid.additions.enderio.RecipeClasses.AlloySmelterRecipe;

function conduit(input3 as IIngredient, meta as int, energy as int, xp as float, type as string = "endergy", previousType as string = "endergy", previousMeta as int = -1) as AlloySmelterRecipe {
    val input2 as IIngredient = itemUtils.getItem("enderio:item_"+previousType+"_conduit", previousMeta==(-1) ? (meta)-(1) : previousMeta);
	val output as IItemStack = itemUtils.getItem("enderio:item_"+type+"_conduit", meta);
    return AlloySmelterRecipe([ <enderio:item_material:4>*4, input2*4, input3*4 ], output*4, energy, xp);
}
