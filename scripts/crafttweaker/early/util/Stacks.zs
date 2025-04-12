#priority 1250
#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

function amountMap(amountMap as IItemStack[][int]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for amount, items in amountMap {
        for item in items {
            ret+=(item*amount);
        }
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

function blankDisc() as IItemStack {
    return <musictriggers:record>.withEmptyTag();
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

function exclusiveBlankDisc() as IItemStack {
    return <musictriggers:record>.onlyWithTag({} as IData);
}

function getMetaValuesMap(def as IItemDefinition, keys as IIngredient[], initialMeta as int = 0) as IItemStack[IIngredient] {
    var meta as int = initialMeta;
    var map as IItemStack[IIngredient] = {} as IItemStack[IIngredient];
    for key in keys {
        map[key] = def.makeStack(meta);
        meta+=1;
    }
    return map;
}

function incrementals(base as string, vals as int[], meta as int = 0, extra as string = "") as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for v in vals {
        ret+=itemUtils.getItem(base+v+extra,meta);
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

function metaRange(def as IItemDefinition, range as int[]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    if(range.length==1) {
        ret+=def.makeStack(range[0]);
    }
    else if(range.length==2) {
        for meta in range[0] .. range[1]+1 {
            ret+=def.makeStack(meta);
        }
    }
    else if(range.length>2) {
        for meta in range {
            ret+=def.makeStack(meta);
        }
    }
    return ret;
}

function metaRanges(def as IItemDefinition, ranges as int[][]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for range in ranges {
        for item in metaRange(def,range) {
            ret+=item;
        }
    }
    return ret;
}

function metaRangeMap(rangeMap as int[][IItemDefinition]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for def, range in rangeMap {
        for item in metaRange(def,range) {
            ret+=item;
        }
    }
    return ret;
}

function metaRangesMap(rangeMap as int[][][IItemDefinition]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for def, ranges in rangeMap {
        for range in ranges {
            for item in metaRange(def,range) {
                ret+=item;
            }
        }
    }
    return ret;
}

function metas(item as IItemStack, vals as int[]) as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for meta in vals {
        ret+=item.definition.makeStack(meta);
    }
    return ret;
}

function recordedDisc() as IItemStack {
    return <musictriggers:record>.only(function(stack as IItemStack) as bool {
        if(stack.hasTag) {
          val tag =  stack.tag as IData;
          if(isNull(tag)) {
            return false;
          }
          return !isNull(tag.trackID);
        }
        return false;
      })
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