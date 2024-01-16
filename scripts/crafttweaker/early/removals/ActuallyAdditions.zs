#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;
import scripts.crafttweaker.early.util.Stacks as Stack;

static queuedRemovals as IItemStack[][][int] = {
    0: [ //atomic reconstructor
        Stack.metas(<actuallyadditions:item_crystal>, [1,2,3,4,5])
    ] as IItemStack[][],
    1: [ //empowerer
        Stack.metas(<actuallyadditions:item_crystal_empowered>, [0,1,2,3,4,5]),
        Stack.metas(<actuallyadditions:block_crystal_empowered>, [0,1,2,3,4,5]),
        Stack.append("moreplates:empowered_", ["diamatine", "emeradic", "enori", "palis", "restonia", "void"], 0, "_plate"),
        Stack.append("moreplates:empowered_", ["diamatine", "emeradic", "enori", "palis", "restonia", "void"], 0, "_gear")
    ] as IItemStack[][]
};

function run() {
    Caller.callMapArray("actuallyadditions",queuedRemovals);
}