#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.actuallyadditions.AtomicReconstructor;

static recipeMap as IIngredient[IItemStack][int] = {
    100: {
        <actuallyadditions:item_crystal:3>:<thermalfoundation:material:768>,
        <actuallyadditions:item_crystal:5>:<thermalfoundation:material>
    },
    150: {
        <actuallyadditions:item_crystal:1>:<actuallyadditions:item_dust:4>
    },
    200: {
        <actuallyadditions:item_crystal:2>:<zollerngalaxy:diamonddust>,
        <actuallyadditions:item_crystal:4>:<zollerngalaxy:emeralddust>
    },
    1000: {
        <actuallyadditions:item_misc:5>:<botania:quartz>
    },
    2500: {
        <botania:flower>:<silentgems:glowrose:15>,
        <botania:flower:1>:<silentgems:glowrose:2>,
        <botania:flower:2>:<silentgems:glowrose:12>,
        <botania:flower:3>:<silentgems:glowrose:8>,
        <botania:flower:4>:<silentgems:glowrose:4>,
        <botania:flower:5>:<silentgems:glowrose:5>,
        <botania:flower:6>:<silentgems:glowrose:13>,
        <botania:flower:7>:<silentgems:glowrose:3>,
        <botania:flower:8>:<silentgems:glowrose:7>,
        <botania:flower:9>:<silentgems:glowrose:9>,
        <botania:flower:10>:<silentgems:glowrose:11>,
        <botania:flower:11>:<silentgems:glowrose:10>,
        <botania:flower:12>:<silentgems:glowrose:1>,
        <botania:flower:13>:<silentgems:glowrose:6>,
        <botania:flower:14>:<silentgems:glowrose>,
        <botania:flower:15>:<silentgems:glowrose:14>
    },
    5000: {
        <silentgems:glowrose>:<ore:dyeRed:>*2,
        <silentgems:glowrose:1>:<ore:dyeBrown>*2,
        <silentgems:glowrose:2>:<ore:dyeOrange:>*2,
        <silentgems:glowrose:3>:<ore:dyeGray>*2,
        <silentgems:glowrose:4>:<ore:dyeYellow>*2,
        <silentgems:glowrose:5>:<ore:dyeLime>*2,
        <silentgems:glowrose:6>:<ore:dyeGreen>*2,
        <silentgems:glowrose:7>:<ore:dyeLightGray>*2,
        <silentgems:glowrose:8>:<ore:dyeLightBlue>*2,
        <silentgems:glowrose:9>:<ore:dyeCyan>*2,
        <silentgems:glowrose:10>:<ore:dyeBlue>*2,
        <silentgems:glowrose:11>:<ore:dyePurple>*2,
        <silentgems:glowrose:12>:<ore:dyeMagenta>*2,
        <silentgems:glowrose:13>:<ore:dyePink>*2,
        <silentgems:glowrose:14>:<ore:dyeBlack>*2,
        <silentgems:glowrose:15>:<ore:dyeWhite>*2
    } as IIngredient[IItemStack],
    10000: {
        <botania:fertilizer>:<silentgems:glowrosefertilizer>
    },
    100000: {
        <midnight:ebonys_block>:<actuallyadditions:block_crystal_empowered:3>
    }
} as IItemStack[IItemStack][int];

function build() {
    for rf, recipe in recipeMap {
        for output, input in recipe {
            AtomicReconstructor.addRecipe(output,input,rf);
        }
    }
}