#priority 2000
#reloadable

import crafttweaker.item.IIngredient;

static common2x2 as int[][][string] = {
    "alt": [
        [ 0, 1 ],
        [ 1, 0 ]
    ],
    "block": [
        [ 0, 0 ],
        [ 0, 0 ]
    ],
    "unique": [
        [ 0, 1 ],
        [ 2, 3 ]
    ]
};

static common3x3 as int[][][string] = {
    "band": [
        [ 2, 1,-1 ],
        [ 1, 0, 1 ],
        [-1, 1,-1 ]
    ],
    "bench": [
        [ 0, 0, 0 ],
        [ 1,-1, 2 ]
    ],
    "block": [
        [ 0, 0, 0 ],
        [ 0, 0, 0 ],
        [ 0, 0, 0 ]
    ],
    "boots": [
        [ 0,-1, 0 ],
        [ 0, 1 ,0 ]
    ],
    "bowl": [
        [ 0, 3, 0 ],
        [ 1, 0, 1 ],
        [ 2, 1, 2 ]
    ],
    "chestplate": [
        [ 0, 1, 0 ],
        [ 0, 0, 0 ],
        [ 0, 0, 0 ],
    ],
    "corners": [
        [ 2, 1, 3 ],
        [ 1, 0, 1 ],
        [ 4, 1, 5 ]
    ],
    "fence": [
        [ 1, 0, 1 ],
        [ 1, 0, 1 ]
    ],
    "hat": [
        [ 1, 1, 1 ],
        [ 1, 0, 1],
        [ 1, 2, 1]
    ],
    "helmet": [
        [ 0, 0, 0 ],
        [ 0, 1, 0 ]
    ],
    "horn": [
        [-1, 1,-1 ],
        [ 1, 0, 1 ],
        [ 1, 1,-1 ]
    ],
    "leggings": [
        [ 0, 0, 0 ],
        [ 0, 1, 0 ],
        [ 0,-1, 0 ]
    ],
    "line": [
        [ 1, 0, 1 ]
    ],
    "me": [
        [ 3, 1, 3 ],
        [ 2, 0, 2 ],
        [ 3, 2, 3 ]
    ],
    "ring": [
        [ 1, 1, 1 ],
        [ 1, 0, 1 ],
        [ 1, 1, 1 ]
    ],
    "part": [
        [-1, 1,-1],
        [ 2, 0, 2],
        [-1, 3,-1]
    ],
    "piston": [
        [ 4, 4, 4 ],
        [ 3, 0, 3 ],
        [ 2, 1, 2 ]
    ],
    "plus": [
        [ 2, 1, 2 ],
        [ 1, 0, 1 ],
        [ 2, 1, 2 ]
    ],
    "portalbottom": [
        [ 1, 1, 1 ],
        [ 2, 0, 2 ],
        [ 2, 2, 2 ]
    ],
    "portaltop": [
        [ 2, 2, 2 ],
        [ 2, 0, 2 ],
        [ 1, 1, 1 ]
    ],
    "sandwich": [
        [ 2, 2, 2 ],
        [ 1, 0, 1 ],
        [ 2, 2, 2 ]
    ],
    "spatial": [
        [ 5, 1, 5 ],
        [ 2, 0, 3 ],
        [ 5, 4, 5 ]
    ],
    "star": [
        [ 4, 1, 4 ],
        [ 3, 0, 3 ],
        [ 2, 1, 2 ]
    ],
    "stick": [
        [ 0 ],
        [ 0 ]
    ],
    "table": [
        [ 4, 1, 4 ],
        [ 3, 0, 3 ],
        [ 2, 5, 2 ]
    ],
    "tank": [
        [ 3, 1, 3 ],
        [ 2, 0, 2 ],
        [ 3, 1, 3 ]
    ],
    "tri": [
        [ 2, 1, 2 ],
        [ 0, 0, 0 ],
        [ 1, 2, 1 ]
    ],
    "u": [
        [ 2, 1, 2 ],
        [ 2, 0, 2 ],
        [ 2, 2, 2 ]
    ],
    "unique": [
        [ 0, 1, 2 ],
        [ 3, 4, 5 ],
        [ 6, 7, 8 ]
    ],
    "wide": [
        [ 4, 3, 4 ],
        [ 1, 0, 2 ]
    ],
    "wrap": [
        [-1, 2,-1 ],
        [ 2, 0, 2 ],
        [ 2, 1, 2 ]
    ]
};

static common5x5 as int[][][string] = {
    "amulet": [
        [-1,-1, 3,-1,-1 ],
        [-1, 3, 1, 3,-1 ],
        [ 3, 1, 0, 1, 3 ],
        [ 2, 2, 1, 2, 2 ],
        [-1,-1, 2,-1,-1 ]
    ],
    "bigplus": [
        [ 3, 3, 1, 3, 3 ],
        [ 3, 2, 1, 2, 3 ],
        [ 1, 1, 0, 1, 1 ],
        [ 3, 2, 1, 2, 3 ],
        [ 3, 3, 1, 3, 3 ]
    ],
    "block": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ]
    ],
    "boots": [
        [ 0, 0,-1, 0, 0 ],
        [ 0, 0, 1, 0, 0 ]
    ],
    "charm": [
        [ 3, 4, 2, 6, 6 ],
        [ 3, 2, 2, 5, 6 ],
        [-1, 1, 0, 2, 2 ],
        [-1,-1, 1, 2, 4 ],
        [-1,-1,-1, 3, 3 ]
    ],
    "chestplate": [
        [ 0,-1,-1,-1, 0 ],
        [ 0, 0, 1, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ]
    ],
    "cloak": [
        [-1, 2, 2, 2,-1 ],
        [ 2, 1, 1, 1, 2 ],
        [ 2, 1, 0, 1, 2 ],
        [ 2, 1, 0, 1, 2 ],
        [-1, 2,-1, 2,-1 ],
    ],
    "cloakalt": [
        [-1, 3, 3, 3,-1 ],
        [ 3, 2, 2, 2, 3 ],
        [ 3, 2, 0, 2, 3 ],
        [ 3, 2, 1, 2, 3 ],
        [-1, 3,-1, 3,-1 ],
    ],
    "component": [
        [ 6, 5, 4, 5, 6 ],
        [ 7, 3, 1, 3, 7 ],
        [ 4, 2, 0, 2, 4 ],
        [ 7, 3, 2, 3, 7 ],
        [ 6, 7, 4, 7, 6 ]
    ],
    "crystal": [
        [-1, 4, 3, 4,-1 ],
        [ 4, 2, 1, 2, 4 ],
        [ 5, 1, 0, 1, 5 ],
        [ 4, 2, 1, 2, 4 ],
        [-1, 4, 3, 4,-1 ]
    ],
    "gaia": [
        [-1,-1, 1,-1,-1 ],
        [-1, 1, 2, 1,-1 ],
        [ 1, 3, 0, 4, 1 ],
        [ 1, 5, 6, 5, 1 ],
        [-1, 1, 7, 1,-1 ]
    ],
    "helmet": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0,-1, 1,-1, 0 ]
    ],
    "leggings": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 0, 0, 0 ],
        [ 0, 0, 1, 0, 0 ],
        [ 0, 0,-1, 0, 0 ],
        [ 0, 0,-1, 0, 0 ]
    ],
    "ring": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 1, 1, 1, 0 ],
        [ 0, 1, 1, 1, 0 ],
        [ 0, 1, 1, 1, 0 ],
        [ 0, 0, 0, 0, 0 ]
    ],
    "ringalt": [
        [ 0, 1, 0, 1, 0 ],
        [ 1, 2, 2, 2, 1 ],
        [ 0, 2, 2, 2, 0 ],
        [ 1, 2, 2, 2, 1 ],
        [ 0, 1, 0, 1, 0 ]
    ],
    "ringplus": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 3, 2, 3, 0 ],
        [ 0, 2, 1, 2, 0 ],
        [ 0, 3, 2, 3, 0 ],
        [ 0, 0, 0, 0, 0 ]
    ],
    "ringplusalt": [
        [ 0, 1, 0, 1, 0 ],
        [ 1, 4, 3, 4, 1 ],
        [ 0, 3, 2, 3, 0 ],
        [ 1, 4, 3, 4, 1 ],
        [ 0, 1, 0, 1, 0 ]
    ],
    "ringring": [
        [ 0, 0, 0, 0, 0 ],
        [ 0, 1, 1, 1, 0 ],
        [ 0, 1, 2, 1, 0 ],
        [ 0, 1, 1, 1, 0 ],
        [ 0, 0, 0, 0, 0 ]
    ],
    "sash": [
        [-1,-1, 9,-1,-1 ],
        [-1, 2, 1, 3,-1 ],
        [ 9, 4, 0, 5, 9 ],
        [-1, 6, 7, 8,-1 ],
        [-1,-1, 9,-1,-1 ]
    ],
    "sashalt": [
        [ 2, 3,-1,-1,-1 ],
        [ 2, 2, 2, 3,-1 ],
        [-1, 1, 0, 2,-1 ],
        [-1, 1, 1, 2, 3 ],
        [-1,-1,-1, 2, 2 ]
    ],
    "spatial": [
        [ 8, 7, 6, 7, 8 ],
        [ 7, 5, 1, 5, 7 ],
        [ 6, 2, 0, 3, 6 ],
        [ 7, 5, 4, 5, 7 ],
        [ 8, 7, 6, 7, 8 ]
    ],
    "spatialalt": [
        [ 8, 7, 6, 7, 8 ],
        [ 9, 5, 1, 5, 9 ],
        [ 6, 2, 0, 3, 6 ],
        [ 9, 5, 4, 5, 9 ],
        [ 8, 9, 6, 9, 8 ]
    ],
    "super": [
        [ 5, 4, 2, 4, 5 ],
        [ 4, 2, 1, 2, 4 ],
        [ 2, 1, 0, 2, 1 ],
        [ 4, 3, 1, 3, 4 ],
        [ 5, 4, 3, 4, 5 ]
    ],
    "thicc": [
        [ 1, 1, 1, 1, 1 ],
        [ 1, 1, 1, 1, 1 ],
        [ 1, 1, 0, 1, 1 ],
        [ 1, 1, 1, 1, 1 ],
        [ 1, 1, 1, 1, 1 ],
    ]
};

function getCommon(type as string, size as int) as int[][] {
    if(size==3) {
        return common3x3[type];
    }
    else if(size==2) {
        return common2x2[type];
    }
    else {
        return common5x5[type];
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
        if(i<0) {
            mapped+=null;
        }
        else {
            mapped+=inputs[i];
        }
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

function simple2x2(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,2,inputs);
}

function simple3x3(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,3,inputs);
}

function simple5x5(type as string, inputs as IIngredient[]) as IIngredient[][] {
    return simple(type,5,inputs);
}

function rotated(type as string, size as int, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return mapGrid(inputs,rotateCommon(type,size,rotations));
}

function rotated2x2(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,2,rotations,inputs);
}

function rotated3x3(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,3,rotations,inputs);
}

function rotated5x5(type as string, rotations as int, inputs as IIngredient[]) as IIngredient[][] {
    return rotated(type,5,rotations,inputs);
}

function flatten(grid as IIngredient[][]) as IIngredient[] {
    var ret as IIngredient[] = [] as IIngredient[];
    for row in grid {
        for value in row {
            ret+=value;
        }
    }
    return ret;
}