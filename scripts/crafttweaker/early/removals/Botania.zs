#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static orechidRemovals as string[][int] = {
    0 : [
        "oreAluminum", "oreAmber", "oreApatite", "oreBlueTopaz", "oreCertusQuartz", 
        "oreCoal", "oreCopper", "oreDarkIron", "oreDiamond", "oreEmerald", 
        "oreGold", "oreIron", "oreLapis", "oreLead", "oreMithril", 
        "oreNickel", "oreOsmium", "orePlatinum", "oreQuartzBlack", "oreRedstone", 
        "oreRuby", "oreSapphire", "oreSilver", "oreSulfur", "oreTin", 
        "oreTungsten", "oreUranium", "oreYellorium", "oreYellorite", "oreZinc"
    ] as string[],
    1: [
        "oreArdite", "oreCobalt", "oreNetherCoal", "oreNetherCopper", 
        "oreNetherDiamond", "oreNetherGold", "oreNetherIron", "oreNetherLapis",
        "oreNetherLead", "oreNetherNickel", "oreNetherPlatinum", "oreNetherRedstone",
        "oreNetherSilver", "oreNetherTin", "oreOnyx", "oreQuartz"
    ] as string[]
};

static queuedRemovals as IItemStack[][int] = {
    0: [
        <minecraft:deadbush>,
        <minecraft:tallgrass:2>,
        <minecraft:tallgrass:1>,
        <botania:grassseeds>,
        <botania:grassseeds:1>
    ]
};

function run() {
    Caller.callMap("botania",queuedRemovals);
    Caller.callStringMap("botania",orechidRemovals);
}