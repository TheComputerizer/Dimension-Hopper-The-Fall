#priority 10
#reloadable

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;

function buildNested(type as string, shapedHolderList as Holder[][], shapelessHolderList as Holder[][] = [] as Holder[][]) {
    for holders in shapedHolderList {
        for holder in holders {
            buildShapedInner(type,holder);
        }
    }
    for holders in shapelessHolderList {
        for holder in holders {
            buildShapelessInner(type,holder);
        }
    }
}

function build(type as string, shapedHolders as Holder[], shapelessHolders as Holder[] = []) {
    for holder in shapedHolders {
        addExtras(holder,buildShapedInner(type,holder)).create();
    }
    for holder in shapelessHolders {
        addExtras(holder,buildShapelessInner(type,holder)).create();
    }
}

function buildShapedInner(type as string, holder as Holder) as RecipeBuilder {
    return addMaps(holder,RecipeBuilder.get(type).setShaped(holder.getShaped()).addOutput(holder.getOutput()));
}

function buildShapelessInner(type as string, holder as Holder) as RecipeBuilder {
    return addMaps(holder,RecipeBuilder.get(type).setShapeless(holder.getShapeless()).addOutput(holder.getOutput()));
}

function addMaps(holder as Holder, builder as RecipeBuilder) as RecipeBuilder {
    for tool, durability in holder.getTools() {
        builder.addTool(tool,durability);
    }
    for fluid in holder.getFluids() {
        builder.setFluid(fluid);
    }
    return builder;
}

function addExtras(holder as Holder, builder as RecipeBuilder) as RecipeBuilder {
    val extras as IItemStack[] = holder.getExtras();
    val chancess as int[] = holder.getNumbers();
    if(extras.length>0) {
        var chance = 1 as float;
        if(chances.length>0) {
            chance = (chances[0] as float)/(100 as float);
        }
        builder.setExtraOutputOne(extras[0],chance);
        if(extras.length>1) {
            chance = 1 as float;
            if(chances.length>1) {
                chance = (chances[1] as float)/(100 as float);
            }
            builder.setExtraOutputTwo(extras[1],chance);
            if(extras.length>2) {
                chance = 1 as float;
                if(chances.length>2) {
                    chance = (chances[2] as float)/(100 as float);
                }
                builder.setExtraOutputThree(extras[2],chance);
            }
        }
    }
    return builder;
}