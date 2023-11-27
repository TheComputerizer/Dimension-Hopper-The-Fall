#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import mods.actuallyadditions.Empowerer;
import scripts.crafttweaker.early.util.stacks as Stack;

static arrayRemovals as IItemStack[][] = [
    Stack.metas(<actuallyadditions:item_crystal_empowered>, [0,1,2,3,4,5]),
    Stack.metas(<actuallyadditions:block_crystal_empowered>, [0,1,2,3,4,5]),
    Stack.append("moreplates:empowered_", ["diamatine", "emeradic", "enori", "palis", "restonia", "void"], 0, "_plate"),
    Stack.append("moreplates:empowered_", ["diamatine", "emeradic", "enori", "palis", "restonia", "void"], 0, "_gear")
] as IItemStack[][];

function run() {
    for items in arrayRemovals {
        for item in items {
            Empowerer.removeRecipe(item);
        }
    }
}