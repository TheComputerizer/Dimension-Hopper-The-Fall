#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting as Tables;

static removals as IItemStack[] = [
	<extendedcrafting:material:24>, //idk
	<extendedcrafting:singularity_ultimate> //ultimate singularity
] as IItemStack[];

function run() {
	for item in removals {
		Tables.remove(item);
	}
}