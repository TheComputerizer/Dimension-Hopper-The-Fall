#priority 500

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [ //fluid sieving machine
		<jaopca:dust.chaos> //chaos dust
	] as IItemStack[]
};

function run() {
    Caller.callMap("industrialforegoing",queuedRemovals);
}