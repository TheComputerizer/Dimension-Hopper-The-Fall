#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import mods.actuallyadditions.AtomicReconstructor;
import scripts.crafttweaker.early.util.stacks as Stack;

static arrayRemovals as IItemStack[][] = [
    Stack.metas(<actuallyadditions:item_crystal>, [1,2,3,4,5])
] as IItemStack[][];

function run() {
    for items in arrayRemovals {
        for item in items {
            AtomicReconstructor.removeRecipe(item);
        }
    }
}