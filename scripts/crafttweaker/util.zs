#priority 1500
#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.recipes.IRecipeFunction;

function ring(center as IIngredient, edge as IIngredient) as IIngredient[][] {
    return [
        [edge,edge,edge],
        [edge,center,edge],
        [edge,edge,edge]
    ];
}

function corners(center as IIngredient, edge as IIngredient, corner as IIngredient) as IIngredient[][] {
    return [
        [corner,edge,corner],
        [edge,center,edge],
        [corner,edge,corner]
    ];
}

function u(center as IIngredient, top as IIngredient, u as IIngredient) as IIngredient[][] {
    return [
        [u,top,u],
        [u,center,u],
        [u,u,u]
    ];
}

function table(table as IIngredient, top as IIngredient, bottomCorner as IIngredient, sides as IIngredient) as IIngredient[][] {
    return [
        [sides,top,sides],
        [sides,table,sides],
        [bottomCorner,null,bottomCorner]
    ];
}

function tableExtra(table as IIngredient, top as IIngredient, bottomCorner as IIngredient, sides as IIngredient, topCorner) as IIngredient[][] {
    return [
        [topCorner,top,topCorner],
        [sides,table,sides],
        [bottomCorner,null,bottomCorner]
    ];
}

function plus(center as IIngredient, outer as IIngredient) as IIngredient[][] {
    return [
        [null,outer,null],
        [outer,center,outer],
        [null,outer,null]
    ];
}

function bigRing(outer as IIngredient, inner as IIngredient[][]) as IIngredient[][] {
    var top as IIngredient[] = [outer] as IIngredient[];
    for i in 0 .. inner.length {
        top+=outer;
    }
    bigRing as IIngredient[][] = [top] as IIngredient[][];
    for row in inner {
        bigRing+=addOuter(outer,row);
    }
    bigRing+=top;
    return bigRing;
}

function bigRingAlt(corner as IIngredient, otherOuter as IIngredient, inner as IIngredient[][]) as IIngredient[][] {
    var top as IIngredient[] = [corner] as IIngredient[];
    var alt = true as bool;
    for i in 0 .. inner.length {
        if(alt) {
            top+=otherOuter;
            alt = false;
        }
        else {
            top+=corner;
            alt = true;
        }
    }
    alt = true;
    bigRing as IIngredient[][] = [top] as IIngredient[][];
    for row in inner {
        if(alt) {
            bigRing+=addOuter(otherOuter,row);
            alt = false as bool;
        }
        else {
            bigRing+=addOuter(corner,row);
            alt = true as bool;
        }
    }
    bigRing+=top;
    return bigRing;
}

function addOuter(outer as IIngredient, inner as IIngredient[]) as IIngredient[] {
    var constructed as IIngredient[] = [outer] as IIngredient[];
    for item in inner {
        constructed+=item;
    }
    constructed+=outer;
    return constructed;
}

function markRow(match as IIngredient, inputRow as IIngredient[]) as IIngredient[] {
    var row as IIngredient[] = [] as IIngredient[];
    for i, item in inputRow {
        if(item in match) {
            row+=item.marked("mark");
        }
        else {
            row+=item;
        }
    }
    return row;
}

function markGrid(match as IIngredient, inputGrid as IIngredient[][]) as IIngredient[][] {
    var markedInputs as IIngredient[][] = [] as IIngredient[][];
    for row in inputGrid {
        markedInputs+=markRow(match,row);
    }
    return markedInputs;
}

function shapelessTransform(output as IItemStack, marked as IIngredient, inputs as IIngredient[], outputTransform as function(IItemStack)IData) {
    var name as string = output.definition.name+"smart_transform_shapeless";
    recipes.addShapeless(name,output,markRow(marked,inputs),
    function(output,map,info) {
        return output.withTag(outputTransform(map.mark));
    } as IRecipeFunction);
}

function shapedTransform(output as IItemStack, marked as IIngredient, inputs as IIngredient[][], outputTransform as function(IItemStack)IData) {
    var name as string = output.definition.name+"smart_transform_shaped";
    recipes.addShaped(name,output,markGrid(marked,inputs),
    function(output,map,info) {
        return output.withTag(outputTransform(map.mark));
    } as IRecipeFunction);
}