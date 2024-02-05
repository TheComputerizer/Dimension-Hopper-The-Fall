#priority 1500
#reloadable

import crafttweaker.item.IItemStack;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.avaritia.ExtremeCrafting;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.dimhoppertweaks.IItemConsumer;
import mods.dimhoppertweaks.IStringConsumer;
import mods.extendedcrafting.TableCrafting;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Factorizer;
import mods.thermalexpansion.InductionSmelter;
import mods.jei.JEI;

static itemsRemovalCalls as IItemConsumer[int][string] = {
    "actuallyadditions": {
        0: function(item as IItemStack) { AtomicReconstructor.removeRecipe(item); },
        1: function(item as IItemStack) { Empowerer.removeRecipe(item); }
    },
    "avaritia": {
        0: function(item as IItemStack) { ExtremeCrafting.remove(item); }
    },
    "extendedcrafting": {
        0: function(item as IItemStack) { TableCrafting.remove(item); }
    },
    "jei": {
        0: function(item as IItemStack) { JEI.removeAndHide(item); },
        1: function(item as IItemStack) { JEI.hide(item); }
    },
    "thermal": {
        0: function(item as IItemStack) { Centrifuge.removeRecipe(item); },
        1: function(item as IItemStack) { Factorizer.removeRecipeCombine(item); },
        2: function(item as IItemStack) { Factorizer.removeRecipeSplit(item); },
        3: function(item as IItemStack) { Compactor.removeGearRecipe(item); }
    },
    "vanilla": {
        0: function(item as IItemStack) { recipes.remove(item); }
    }
};

static stringRemovalCalls as IStringConsumer[int][string] = {
    "botania": {
        0: function(dict as string) {
            Orechid.removeOre(oreDict.get(dict));
        },
        1: function(dict as string) {
            OrechidIgnem.removeOre(oreDict.get(dict));
        }
    },
    "vanilla": {
        0: function(mod as string) {
            recipes.removeByMod(mod);
        }
    }
};

function callInner(consumer as IItemConsumer, items as IItemStack[]) {
    for item in items {
        consumer.accept(item);
    }
}

function call(mod as string, items as IItemStack[], funcID as int = 0) {
    callInner(itemsRemovalCalls[mod][funcID],items);
}

function callArray(mod as string, itemArrays as IItemStack[][], funcID as int = 0) {
    val consumer as IItemConsumer = itemsRemovalCalls[mod][funcID];
    for items in itemArrays {
        callInner(consumer,items);
    }
}

function callMap(mod as string, map as IItemStack[][int]) {
    for funcID, items in map {
        call(mod,items,funcID);
    }
}

function callMapArray(mod as string, map as IItemStack[][][int]) {
    for funcID, itemArrays in map {
        callArray(mod,itemArrays,funcID);
    }
}

function callStringInner(consumer as IStringConsumer, strings as string[]) {
    for str in strings {
        consumer.accept(str);
    }
}

function callString(mod as string, strings as string[], funcID as int = 0) {
    callStringInner(stringRemovalCalls[mod][funcID],strings);
}

function callStringMap(mod as string, map as string[][int]) {
    for funcID, strings in map {
        callString(mod,strings,funcID);
    }
}