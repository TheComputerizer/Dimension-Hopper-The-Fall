#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crafttweaker.early.util.globals as Global;

static oredictRemovals as IItemStack[][IOreDictEntry] = {
    oreDict.blockAquamarine: [<cavern:cave_block:1>, <zollerngalaxy:aquamarineblock>],
    oreDict.gemAquamarine: [<cavern:cave_item>, <zollerngalaxy:aquamarine>],
    oreDict.oreCobalt: [<zollerngalaxy:edencobaltore>, <zollerngalaxy:purgcobaltore>, <zollerngalaxy:kriffcobaltore>],
    oreDict.oreAquamarine: [<zollerngalaxy:caligroaquaore>, <zollerngalaxy:harranaquamarineore>, <cavern:cave_block>]
};

function run() {
    for entry, items in oredictRemovals {
        entry.removeItems(items);
    }
    for name, entry in Global.enchant {
        entry.removeItems(Global.disenchant);
    }
}