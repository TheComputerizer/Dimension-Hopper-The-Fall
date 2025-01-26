#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IRecipeFunction;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static duperHolders as Holder[] = [
  //galacticraftcore
  Util.schematicDuper(<galacticraftcore:schematic:1>, <liquid:platinum>, 1), //T2 rocket schematic dupe
  Util.schematicDuper(<galacticraftplanets:schematic>, <liquid:platinum>, 2), //T3 rocket schematic dupe

  //extraplanets
  Util.schematicDuper(<extraplanets:schematic_tier4>, <liquid:osmiridium>*2, 3), //T4 rocket schematic dupe
  Util.schematicDuper(<extraplanets:schematic_tier5>, <liquid:palladium>, 4), //T5 rocket schematic dupe
  Util.schematicDuper(<extraplanets:schematic_tier6>, <liquid:magnesium>, 5), //T6 rocket schematic dupe
  Util.schematicDuper(<extraplanets:schematic_tier8>, <liquid:draconium>, 7), //T8 rocket schematic dupe
  Util.schematicDuper(<extraplanets:schematic_tier9>, <liquid:tungsten>, 8), //T9 rocket schematic dupe

] as Holder[];

static shapedHolders as Holder[] = [
  //multiblocked------------------------------------------------------------------------------------------------------------
  Util.bigShaped(<multiblocked:multiblock_builder>, "ringring", [<artisanworktables:design_pattern>, <mekanism:controlcircuit:2>, <contenttweaker:divine_large_circuit>])
    .addTools({<ore:artisansCutters>:133,<ore:artisansFramingHammer>:133,<ore:artisansPliers>:133})
    .addFluids([<liquid:stellar_alloy>*144]) //multiblock builder
] as Holder[];

static shapelessHolders as Holder[] = [
  //musictriggers-----------------------------------------------------------------------------------------------------------
  Util.shapeless(<musictriggers:music_triggers_record>, [
    <musictriggers:music_triggers_record>.only(function(stack as IItemStack) as bool {
        if(stack.hasTag) {
          val tag =  stack.tag as IData;
          if(isNull(tag)) {
            return false;
          }
          return !isNull(tag.trackID);
        }
        return false;
      }).reuse(), <musictriggers:blank_record>, <integrateddynamics:part_audio_writer_item>, <vc:modules/item_module_type:15>]).setMarkIndex(0)
    .addFunction(function(output, map, info) {
        val tag as IData = map.mark.tag;
        val outputTag as IData = {trackID: tag.trackID,triggerID: tag.triggerID,channelFrom: tag.channelFrom};
        return output.withTag(outputTag);
      } as IRecipeFunction)
    .addTools({<ore:artisansGrimoire>:50,<ore:artisansAthame>:50,<ore:artisansFramingHammer>:50})
    .addFluids([<liquid:base_essence>*500]) //enhanced music disc copying
] as Holder[];

function run() {
	Artisans.build("designer", shapedHolders, shapelessHolders);
  Artisans.buildDuper("designer", duperHolders);
}