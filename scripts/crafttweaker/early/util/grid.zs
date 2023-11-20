#priority 1500
#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.recipes.IRecipeFunction;

static common3x3 as int[][][string] = {
    "block": [
        [0,0,0],
        [0,0,0],
        [0,0,0]
    ],
    "ring": [
        [1,1,1],
        [1,0,1],
        [1,1,1]
    ],
    "plus": [
        [2,1,2],
        [1,0,1],
        [2,1,2]
    ],
    "star": [
        [4,1,4],
        [3,0,3],
        [2,1,2]
    ],
    "u": [
        [2,1,2],
        [2,0,2],
        [2,2,2]
    ],
    "table": [
        [4,1,4],
        [3,0,3],
        [2,5,2]
    ],
    "unique": [
        [0,1,2],
        [3,4,5],
        [6,7,8]
    ]
};

static common5x5 as int[][][string] = {
    "block": [
        [0,0,0,0,0],
        [0,0,0,0,0],
        [0,0,0,0,0],
        [0,0,0,0,0],
        [0,0,0,0,0]
    ],
    "ring": [
        [0,0,0,0,0],
        [0,1,1,1,0],
        [0,1,1,1,0],
        [0,1,1,1,0],
        [0,0,0,0,0]
    ],
    "ringplus": [
        [0,0,0,0,0],
        [0,3,2,3,0],
        [0,2,1,2,0],
        [0,3,2,3,0],
        [0,0,0,0,0]
    ],
    "ringalt": [
        [0,1,0,1,0],
        [1,2,2,2,1],
        [0,2,2,2,0],
        [1,2,2,2,1],
        [0,1,0,1,0]
    ],
    "ringplusalt": [
        [0,1,0,1,0],
        [1,4,3,4,1],
        [0,3,2,3,0],
        [1,4,3,4,1],
        [0,1,0,1,0]
    ]
};

static common7x7 as int[][][string] = {
    "block": [
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0]
    ],
    "ring": [
        [0,0,0,0,0,0,0],
        [0,1,1,1,1,1,0],
        [0,1,1,1,1,1,0],
        [0,1,1,1,1,1,0],
        [0,1,1,1,1,1,0],
        [0,1,1,1,1,1,0],
        [0,0,0,0,0,0,0]
    ]
};

static common9x9 as int[][][string] = {
    "block": [
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0]
    ],
    "ring": [
        [0,0,0,0,0,0,0,0,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,1,1,1,1,1,1,1,0],
        [0,0,0,0,0,0,0,0,0]
    ]
};

function getCommon(type as string, size as int) as int[][] {
    if(size==3) {
        return common3x3[type];
    }
    else if(size==5) {
        return common5x5[type];
    }
    else if(size==7) {
        return common7x7[type];
    }
    else {
        return common9x9[type];
    }
}

function rotate(original as int[][], rotations as int) as int[][] {
    if(rotations<=0) {
        return original;
    }
    var ret as int[][] = [] as int[][];
    var length as int = original.length;
    length-=1;
    for row in original {
        for i, v in row {
            ret[length][i] = v;
        }
        length-=1;
    }
    var nextRot as int = rotations;
    nextRot-=1;
    return rotate(ret,nextRot);
}

function rotateCommon(type as string, size as int, rotations as int) as int[][] {
    return rotate(getCommon(type,size),rotations);
}

function mapRow(inputs as IIngredient[], row as int[]) as IIngredient[] {
    var mapped as IIngredient[] = [] as IIngredient[];
    for i in row {
        mapped+=inputs[i];
    }
    return mapped;
}

function mapGrid(inputs as IIngredient[], grid as int[][]) as IIngredient[][] {
    var mapped as IIngredient[][] = [] as IIngredient[][];
    for row in grid {
        mapped+=mapRow(inputs,row);
    }
    return mapped;
}

function simple(type as string, size as int, inputs as IIngredient[]) as IIngredient[][] {
    return mapGrid(inputs,getCommon(type,size));
}

function simple3x3(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,3,inputs);
}

function simple5x5(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,5,inputs);
}

function simple7x7(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,7,inputs);
}

function simple9x9(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,9,inputs);
}

function rotated(type as string, size as int, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return mapGrid(inputs,rotateCommon(type,size,rotations));
}

function rotated3x3(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,3,rotations,inputs);
}

function rotated5x5(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,5,rotations,inputs);
}

function rotated7x7(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,7,rotations,inputs);
}

function rotated9x9(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,9,rotations,inputs);
}