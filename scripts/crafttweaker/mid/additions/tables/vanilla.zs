#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.tables as Util;

static shapedBuilders as Holder[] = [
    Util.simpleShaped(<artisanworktables:worktable:5>, "ring", [<ore:workbench>, <ore:logWood>]),
    Util.simpleShaped(<aether:aether_teleporter>, "plus", [<minecraft:lava_bucket>, <minecraft:iron_ingot>, <minecraft:stone>]),
    Util.aoarune(<aoa3:carved_rune_power>, <botania:laputashard:9>),
    Util.aoarune(<aoa3:carved_rune_reality>, <dimdoors:stable_fabric>),
    Util.aoarune(<aoa3:carved_rune_space>, <moreplanets:space_warper_core>),
    Util.aoarune(<aoa3:carved_rune_travel>, <minecraft:ender_eye>),
    Util.aoarune(<aoa3:carved_rune_direction>, <integrateddynamics:part_connector_omni_directional_item>),
    Util.simpleShaped(<zollerngalaxy:staticamber>, "star", [<ore:blockAmber>, <ore:gemTopaz>, <ore:ingotZinc>, <ore:gemAzurite>, <ore:ingotGold>]),
    Util.simpleShaped(<zollerngalaxy:heartforce>, "u", [<zollerngalaxy:heart>, <ore:ingotZollernium>, <ore:ingotZinc>])
] as Holder[];

static fancyShaped as IRecipeFunction[Holder] = {
    Util.simpleShaped(<huntingdim:frame>, "plus", [<ore:arrow>, <ore:logWood>, <thermalfoundation:material:128>]).setMarkIndex(0):
        function(output, map, info) {
            return output.withTag({BaseBlock: {id: map.mark.definition.id as string, Count: 1 as byte, Damage: map.mark.metadata as short}});
        }
} as IRecipeFunction[Holder];

static shapelessBuilders as Holder[] = [
    
] as Holder[];

static fancyShapeless as IRecipeFunction[Holder] = {
    Util.shapeless(<enderio:item_soul_vial:1>,[<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})]).setMarkIndex(0):
        function(output, map, info) {
	        var dim = info.player.dimension as int;
	        if(dim==0) return output.withTag({entityId: "aoa3:glistening_pixon"});
	        else if(dim==819) return output.withTag({entityId: "aoa3:gleaming_pixon"});
	        else if(dim==803 || dim==811 || dim==820) return output.withTag({entityId: "aoa3:ambient_pixon"});
	        else if(dim==815) return output.withTag({entityId: "aoa3:glaring_pixon"});
	        else if(dim==814) return output.withTag({entityId: "aoa3:glowing_pixon"});
	        else if(dim==800) return output.withTag({entityId: "aoa3:shining_pixon"});
	        else if(dim==808) return output.withTag({entityId: "aoa3:radiant_pixon"});
	        else if(dim==817) return output.withTag({entityId: "aoa3:blooming_pixon"});
	        return output;
        },
    Util.shapeless(<randomthings:timeinabottle>, [<randomthings:timeinabottle>, <environmentaltech:lonsdaleite_crystal>]).setMarkIndex(0):
        function (output, map, info) {
            return output.withTag({timeData: {storedTime: map.mark.tag.timeData.storedTime+1200}});
        }
} as IRecipeFunction[Holder];

function build() {
    for holder in shapedBuilders {
        recipes.addShaped(holder.getName(),holder.getOutput(),holder.getShaped());
    }
    for holder in shapelessBuilders {
        recipes.addShapeless(holder.getName(),holder.getOutput(),holder.getShapeless());
    }
    for holder, func in fancyShaped {
        recipes.addShaped(holder.getName(),holder.getOutput(),holder.getShaped(),func);
    }
    for holder, func in fancyShapeless {
        recipes.addShapeless(holder.getName(),holder.getOutput(),holder.getShapeless(),func);
    }
}