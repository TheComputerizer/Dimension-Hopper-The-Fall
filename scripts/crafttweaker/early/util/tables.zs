#priority 1000
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Grid as Shaper;
import scripts.crafttweaker.early.util.Stacks as Stack;

static armorTools as int[IIngredient][int][string] = {
    "boots": {
        1: {<ore:artisansHammer>:25},
        2: {<ore:artisansHammer>:50},
        3: {<ore:artisansHammer>:75,<ore:artisansFile>:75},
        5: {<ore:artisansHammer>:100,<ore:artisansFile>:100},
        6: {<ore:artisansHammer>:150,<ore:artisansFile>:150,<ore:artisansPliers>:150},
        7: {<ore:artisansHammer>:225,<ore:artisansFile>:225,<ore:artisansPliers>:225}
    },
    "chestplate": {
        1: {<ore:artisansHammer>:100},
        2: {<ore:artisansHammer>:125},
        3: {<ore:artisansHammer>:150,<ore:artisansFile>:150},
        5: {<ore:artisansHammer>:175,<ore:artisansFile>:175},
        6: {<ore:artisansHammer>:300,<ore:artisansFile>:300,<ore:artisansPliers>:300},
        7: {<ore:artisansHammer>:450,<ore:artisansFile>:450,<ore:artisansPliers>:450}
    },
    "helmet": {
        1: {<ore:artisansHammer>:50},
        2: {<ore:artisansHammer>:75},
        3: {<ore:artisansHammer>:100,<ore:artisansFile>:100},
        5: {<ore:artisansHammer>:125,<ore:artisansFile>:125},
        6: {<ore:artisansHammer>:200,<ore:artisansFile>:200,<ore:artisansPliers>:200},
        7: {<ore:artisansHammer>:300,<ore:artisansFile>:300,<ore:artisansPliers>:300}
    },
    "leggings": {
        1: {<ore:artisansHammer>:75},
        2: {<ore:artisansHammer>:100},
        3: {<ore:artisansHammer>:125,<ore:artisansFile>:125},
        5: {<ore:artisansHammer>:150,<ore:artisansFile>:150},
        6: {<ore:artisansHammer>:250,<ore:artisansFile>:250,<ore:artisansPliers>:250},
        7: {<ore:artisansHammer>:375,<ore:artisansFile>:375,<ore:artisansPliers>:375}
    }
};

function aoarune(output as IItemStack, top as IIngredient) as Holder {
    return simpleShaped(output,"u",[<aoa3:ancient_rock>,top,<aoa3:unpowered_rune>]);
}

function table(output as IItemStack, inputs as IIngredient[], hammerDur as int) as Holder {
    var realInputs as IIngredient[] = [<artisanworktables:worktable:5>];
    for input in inputs {
        realInputs+=input;
    }
    realInputs+=null;
    return simpleShaped(output,"table",realInputs).addTools({<ore:artisansHammer>:hammerDur});
}

function upgrade(output as IItemStack, inputs as IIngredient[]) as Holder {
    var realInputs as IIngredient[] = [<moreplates:dark_steel_plate>];
    for input in inputs {
        realInputs+=input;
    }
    return bigShaped(output,"ringplus",realInputs)
        .addTools({<ore:artisansHammer>:250,<ore:artisansGrimoire>:250,<ore:artisansSolderer>:250})
        .addFluids([<liquid:latex>*16000]);
}

function getArmorCore(tier as int) as IIngredient {
    return itemUtils.getItem("contenttweaker:armor_core_"+tier);
}

function armor(output as IItemStack, type as string, material as IIngredient, coreTier as int) as Holder {
    var ret as Holder;
    if(coreTier<6) {
        return simpleShaped(output,type,[material,getArmorCore(coreTier)]).addTools(armorTools[type][coreTier]);
    }
    else {
        return bigShaped(output,type,[material,getArmorCore(coreTier)]).addTools(armorTools[type][coreTier]);
    }
}

function tieredArmorSet(regBase as string, material as IIngredient, coreTier as int, names as string[] = ["helmet", "chestplate", "leggings", "boots"], meta as int = 0, extra as string = "") as Holder[] {
    val pieces as IItemStack[] = Stack.append(regBase,names,meta,extra);
    return [
        armor(pieces[0],"helmet",material,coreTier),
        armor(pieces[1],"chestplate",material,coreTier),
        armor(pieces[2],"leggings",material,coreTier),
        armor(pieces[3],"boots",material,coreTier),
    ] as Holder[];
}

function dust(ore as IIngredient, meta as int, durability as int) as Holder {
    return singleton(ore,<thermalfoundation:material>.definition.makeStack(meta),<ore:artisansHammer>,durability);
}

function plate(material as IIngredient, plate as IItemStack, durability as int) as Holder {
    return shapeless(plate,[material,material,material]).addTools({<ore:artisansHammer>:durability});
}

function singleton(input as IIngredient, output as IItemStack, tool as IIngredient, durability as int) as Holder {
    return shapeless(output,[input]).addTools({tool as IIngredient:durability});
}

function schematicDuper(schematic as IItemStack, fluid as ILiquidStack, tier as int) as Holder {
    return simpleShaped(schematic*2, "line", [schematic as IIngredient, <multiblocked:multiblock_builder>])
        .addTools({<ore:artisansPencil>:111*tier,<ore:artisansCutters>:111*tier,<ore:artisansFramingHammer>:111*tier})
        .addFluids([fluid*720]);
}

function compress(uncompressed as IItemStack, compressed as IItemStack, lavamb as int, hammerDur as int) as Holder {
    return simpleShaped(compressed, "block", [uncompressed]).addTools({<ore:artisansHammer>:hammerDur}).addFluids([<liquid:lava>*lavamb]);
}

function compressed(uncompressed as IItemStack, compressed as IItemStack, baseLava as int, baseHammer as int) as Holder[] {
    val def as IItemDefinition = compressed.definition;
    var holders as Holder[] = [compress(uncompressed,def.makeStack(0),baseLava,baseHammer)] as Holder[];
    for meta in 0 .. 15 {
        val next as int = meta+1;
        holders+=compress(def.makeStack(meta),def.makeStack(next),baseLava+(5*next),baseHammer+(2*next));
    }
    return holders;
}

function device(meta as int, top as IIngredient, side as IIngredient, bottom as IIngredient) as Holder {
    val output as IItemStack = <thermalexpansion:device>.definition.makeStack(meta);
    return simpleShaped(output, "spatial", [<thermalexpansion:frame:64>, top, side, side, bottom, <ore:blockConstructionAlloy>]);
}

function bigShaped(output as IItemStack, type as string, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple5x5(type,inputs));
}

function bigMetaShaped(output as IItemStack, type as string, itemMetas as int[][IItemStack], extras as IIngredient[] = [] as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple5x5(type,Stack.withExtras(Stack.mappedMetas(itemMetas),extras)));
}

function simpleShaped(output as IItemStack, type as string, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple3x3(type,inputs));
}

function simpleMetaShaped(output as IItemStack, type as string, itemMetas as int[][IItemStack], extras as IIngredient[] = [] as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple3x3(type,Stack.withExtras(Stack.mappedMetas(itemMetas),extras)));
}

function smallShaped(output as IItemStack, type as string, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple2x2(type,inputs));
}

function rotatedShaped(output as IItemStack, type as string, rotations as int, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.rotated3x3(type,rotations,inputs));
}

function customShaped(output as IItemStack, inputs as IIngredient[], inputMap as int[][]) as Holder {
    return mappedShaped(output,Shaper.mapGrid(inputs,inputMap));
}

function mappedShaped(output as IItemStack, inputs as IIngredient[][]) as Holder {
    return Holder(makeRecipeName("shaped",output),output).addShaped(inputs);
}

function shapeless(output as IItemStack, inputs as IIngredient[]) as Holder {
    return Holder(makeRecipeName("shapeless",output),output).addShapeless(inputs);
}

function makeRecipeName(type as string, output as IItemStack) as string {
    return type+"."+output.definition.id.replaceAll(":",".")+"."+output.metadata;
}