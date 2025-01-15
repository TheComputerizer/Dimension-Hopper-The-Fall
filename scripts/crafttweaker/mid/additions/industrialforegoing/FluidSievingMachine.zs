

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.industrialforegoing.FluidSievingMachine;

static ultimateSieving as int[IItemStack][IItemStack[ILiquidStack]] = {
    {<liquid:inferium>: <mysticalagriculture:crafting:29>}: {
        <environmentaltech:lonsdaleite_crystal>: 0,
        <environmentaltech:litherite_crystal>: 1,
        <environmentaltech:erodium_crystal>: 10,
        <environmentaltech:kyronite_crystal>: 25,
        <environmentaltech:pladium_crystal>: 50,
        <environmentaltech:ionite_crystal>: 100
    } as int[IItemStack],
    {<liquid:prudentium>: <jaopca:dust.evil_metal>}: {
        <environmentaltech:lonsdaleite_crystal>: 50,
        <environmentaltech:litherite_crystal>: 0,
        <environmentaltech:erodium_crystal>: 1,
        <environmentaltech:kyronite_crystal>: 10,
        <environmentaltech:pladium_crystal>: 25,
        <environmentaltech:ionite_crystal>: 50,
        <environmentaltech:aethium_crystal>: 100
    } as int[IItemStack],
    {<liquid:intermedium>: <bigreactors:dustludicrite>}: {
        <environmentaltech:lonsdaleite_crystal>: 100,
        <environmentaltech:litherite_crystal>: 50,
        <environmentaltech:erodium_crystal>: 0,
        <environmentaltech:kyronite_crystal>: 1,
        <environmentaltech:pladium_crystal>: 10,
        <environmentaltech:ionite_crystal>: 25,
        <environmentaltech:aethium_crystal>: 50,
        <contenttweaker:genetically_unstable_chaos_crystal>: 100
    } as int[IItemStack],
    {<liquid:superium>: <jaopca:dust.ultimate>}: {
        <environmentaltech:litherite_crystal>: 100,
        <environmentaltech:erodium_crystal>: 50,
        <environmentaltech:kyronite_crystal>: 0,
        <environmentaltech:pladium_crystal>: 1,
        <environmentaltech:ionite_crystal>: 10,
        <environmentaltech:aethium_crystal>: 25,
        <contenttweaker:genetically_unstable_chaos_crystal>: 50,
        <contenttweaker:conglomerate_crystal>: 100
    } as int[IItemStack],
    {<liquid:supremium>: <projecte:item.pe_covalence_dust:2>}: {
        <environmentaltech:erodium_crystal>: 100,
        <environmentaltech:kyronite_crystal>: 50,
        <environmentaltech:pladium_crystal>: 0,
        <environmentaltech:ionite_crystal>: 1,
        <environmentaltech:aethium_crystal>: 10,
        <contenttweaker:genetically_unstable_chaos_crystal>: 25,
        <contenttweaker:conglomerate_crystal>: 50,
        <avaritia:endest_pearl>: 100
    } as int[IItemStack],
    {<liquid:insanium>: <jaopca:dust.infinity>}: {
        <environmentaltech:kyronite_crystal>: 100,
        <environmentaltech:pladium_crystal>: 50,
        <environmentaltech:ionite_crystal>: 0,
        <environmentaltech:aethium_crystal>: 1,
        <contenttweaker:genetically_unstable_chaos_crystal>: 10,
        <contenttweaker:conglomerate_crystal>: 25,
        <avaritia:endest_pearl>: 50,
        <avaritia:resource:5>: 100
    } as int[IItemStack]
};

static orderedDegredations as IItemStack[] = [
    <environmentaltech:lonsdaleite_crystal>,
    <environmentaltech:litherite_crystal>,
    <environmentaltech:erodium_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:aethium_crystal>,
    <contenttweaker:genetically_unstable_chaos_crystal>,
    <contenttweaker:conglomerate_crystal>,
    <avaritia:endest_pearl>,
    <avaritia:resource:5>
];

function run() {
    for fluidMap, degradationMap in ultimateSieving {
        for fluid, item in fluidMap {
            val output as IItemStack = item.withTag(buildTag(fluid,degradationMap));
            output.addTooltip(buildTooltip(fluid,degradationMap));
            FluidSievingMachine.add(fluid*8000,output,item.withEmptyTag());
        }
    }
}

function buildTag(fluid as ILiquidStack, degradationMap as int[IItemStack]) as IData {
    var data as IData = {} as IData;
    for item, chance in degradationMap {
        val percent = chance as int;
        val chanceData = {degradationChance: percent} as IData;
        data+=({item.name: chanceData} as IData);
    }
    return {sievedWith: fluid.name,degradationData: data} as IData;
}

function buildTooltip(fluid as ILiquidStack, degradationMap as int[IItemStack]) as string {
    var tooltip as string = "\u00A7l\u00A73Sieved with "+fluid.displayName+"\n\n";
    val keys as IItemStack[] = degradationMap.keys;
    for item in orderedDegredations {
        if(keys has item) {
            val chance = degradationMap[item];
            var color as string = "a";
            if(chance==1) {
                color = "2";
            } else if(chance==10) {
                color = "e";
            } else if(chance==25) {
                color = "6";
            } else if(chance==50) {
                color = "c";
            } else if(chance==100) {
                color = "4";
            }
            tooltip+=("\u00A7r\u00A7"+color+item.displayName+": "+chance+"% degradation chance\n");
        }
    }
    return tooltip;
}