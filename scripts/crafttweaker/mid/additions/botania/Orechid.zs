#reloadable

import crafttweaker.oredict.IOreDictEntry;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;

static normalAdditions as int[IOreDictEntry] = {
    <ore:stone>: 100,
    <ore:overgrownStone>: 100,
    <ore:mistyStone>: 10
} as int[IOreDictEntry];

static ignemAdditions as int[IOreDictEntry] = {
    <ore:oreSunstone>: 5,
    <ore:oreCobalt>: 50,
    <ore:oreArdite>: 50,
    <ore:oreMagnite>: 100,
    <ore:netherrack>: 100,
    <ore:netherGrass>: 100
} as int[IOreDictEntry];

function run() {
    for dict, weight in normalAdditions {
        Orechid.addOre(dict,weight);
    }
    for dict, weight in ignemAdditions {
        OrechidIgnem.addOre(dict,weight);
    }
}