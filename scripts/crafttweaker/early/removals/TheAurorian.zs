#priority 500

import crafttweaker.item.IItemStack;
import mods.theaurorian.Scrapper;

static queuedRemovals as IItemStack[][] = [
    [<minecraft:diamond_axe>, <minecraft:diamond>*2],
    [<minecraft:diamond_boots>, <minecraft:diamond>*2],
    [<minecraft:diamond_chestplate>, <minecraft:diamond>*5],
    [<minecraft:diamond_helmet>, <minecraft:diamond>*3],
    [<minecraft:diamond_hoe>, <minecraft:diamond>],
    [<minecraft:diamond_leggings>, <minecraft:diamond>*4],
    [<minecraft:diamond_pickaxe>, <minecraft:diamond>*2],
    [<minecraft:diamond_shovel>, <minecraft:diamond>],
    [<minecraft:diamond_sword>, <minecraft:diamond>]
] as IItemStack[][];

function run() {
    for items in queuedRemovals {
        Scrapper.removeRecipe(items[0],items[1]);
    }
}