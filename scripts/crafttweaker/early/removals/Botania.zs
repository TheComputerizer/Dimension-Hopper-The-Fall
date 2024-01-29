#priority 500
#reloadable

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

function run() {
    Caller.callStringMap("botania",orechidRemovals);
}