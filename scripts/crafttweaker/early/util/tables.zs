#priority 1000
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.grid as Shaper;

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

function dust(ore as IIngredient, meta as int, durability as int) as Holder {
    return singleton(ore,<thermalfoundation:material>.definition.makeStack(meta),<ore:artisansHammer>,durability);
}

function plate(material as IIngredient, plate as IItemStack, durability as int) as Holder {
    return singleton(material,plate,<ore:artisansHammer>,durability);
}

function singleton(input as IIngredient, output as IItemStack, tool as IIngredient, durability as int) as Holder {
    return shapeless(output,[input]).addTools({tool as IIngredient:durability});
}

function bigShaped(output as IItemStack, type as string, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple5x5(type,inputs));
}

function simpleShaped(output as IItemStack, type as string, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.simple3x3(type,inputs));
}

function rotatedShaped(output as IItemStack, type as string, rotations as int, inputs as IIngredient[]) as Holder {
    return mappedShaped(output,Shaper.rotated3x3(type,rotations,inputs));
}

function mappedShaped(output as IItemStack, inputs as IIngredient[][]) as Holder {
    return Holder(makeRecipeName("shaped",output),output).addShaped(inputs);
}

function shapeless(output as IItemStack, inputs as IIngredient[]) as Holder {
    return Holder(makeRecipeName("shapeless",output),output).addShapeless(inputs);
}

function makeRecipeName(type as string, output as IItemStack) as string {
    return type+".misc."+output.definition.id.replaceAll(":",".")+"."+output.metadata;
}