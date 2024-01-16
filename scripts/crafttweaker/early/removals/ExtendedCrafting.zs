#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting as Tables;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [
		<extendedcrafting:material:24>, //crystaltine
		<extendedcrafting:singularity_ultimate> //ultimate singularity
	] as IItemStack[]
};

function run() {
	Caller.callMap("extendedcrafting",queuedRemovals);
}