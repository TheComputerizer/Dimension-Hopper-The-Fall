#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
    0: [ //sag mill
        <minecraft:coal_ore>,               //coal ore
        <minecraft:iron_ore>,               //iron ore
        <silentgems:essenceore>,            //chaos ore
        <thermalfoundation:ore:2>,          //silver ore
        <thermalfoundation:ore:5>,          //nickel ore
        <thermalfoundation:ore:6>           //iridium ore
    ]
};

function run() {
    Caller.callMap("enderio",queuedRemovals);
}