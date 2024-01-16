#priority 1250
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

function metas(item as IItemStack, vals as int[]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for meta in vals {
        ret+=item.definition.makeStack(meta);
    }
    return ret;
}

function mapCommonMetas(key as IItemStack, value as IItemStack, max as int) as IItemStack[IItemStack] {
    val keyDef as IItemDefinition = key.definition;
    val valDef as IItemDefinition = value.definition;
    var map as IItemStack[IItemStack] = {};
    for meta in 0 .. max {
        map[keyDef.makeStack(meta)] = valDef.makeStack(meta);
    }
    return map;
}

function mappedMetas(metaMap as int[][IItemStack]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for item, metas in metaMap {
        for meta in metas {
            ret+=item.definition.makeStack(meta);
        }
    }
    return ret;
}

function incrementals(base as string, vals as int[], meta as int = 0, extra as string = "") as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for v in vals {
        ret+=itemUtils.getItem(base+v+extra,meta);
    }
    return ret;
}

function append(base as string, extras as string[], meta as int = 0, extra as string = "") as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for v in extras {
        ret+=itemUtils.getItem(base+v+extra,meta);
    }
    return ret;
}

function commonMetas(type as string, modMetas as int[][string], modReplacers as string[string] = {}) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for mod, metas in modMetas {
        var name as string = modReplacers[mod];
        if(isNull(name)) {
            name = type;
        }
        else {
            name = name.replaceAll("-",type);
        }
        name = mod+":"+name;
        print(name);
        var def as IItemDefinition = itemUtils.getItem(name).definition;
        for v in metas {
            ret+=def.makeStack(v);
        }
    }
    return ret;
}

function withExtras(base as IItemStack[], extras as IIngredient[] = [] as IIngredient) as IIngredient[] {
    var ret as IIngredient[] = [] as IIngredient[];
    for item in base {
        ret+=item;
    }
    for extra in extras {
        ret+=extra;
    }
    return ret;
}