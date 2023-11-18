#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("designer")
  .setShaped([
    [<artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>],
    [<artisanworktables:design_pattern>, <mekanism:controlcircuit:2>, <mekanism:controlcircuit:2>, <mekanism:controlcircuit:2>, <artisanworktables:design_pattern>],
    [<artisanworktables:design_pattern>, <mekanism:controlcircuit:2>, <contenttweaker:divine_large_circuit>, <mekanism:controlcircuit:2>, <artisanworktables:design_pattern>],
    [<artisanworktables:design_pattern>, <mekanism:controlcircuit:2>, <mekanism:controlcircuit:2>, <mekanism:controlcircuit:2>, <artisanworktables:design_pattern>],
    [<artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>]])
  .setFluid(<liquid:stellar_alloy> * 144)
  .addTool(<ore:artisansCutters>, 133)
  .addTool(<ore:artisansFramingHammer>, 133)
  .addTool(<ore:artisansPliers>, 133)
  .addOutput(<multiblocked:multiblock_builder>)
  .create();

//T2
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <galacticraftcore:schematic:1>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:platinum> * 720)
  .addTool(<ore:artisansPencil>, 111)
  .addTool(<ore:artisansCutters>, 111)
  .addTool(<ore:artisansFramingHammer>, 111)
  .addOutput(<galacticraftcore:schematic:1>*2)
  .create();

//T3
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <galacticraftcore:schematic>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:platinum> * 720)
  .addTool(<ore:artisansPencil>, 222)
  .addTool(<ore:artisansCutters>, 222)
  .addTool(<ore:artisansFramingHammer>, 222)
  .addOutput(<galacticraftcore:schematic>*2)
  .create();

//T4
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <extraplanets:schematic_tier4>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:osmiridium> * 1440)
  .addTool(<ore:artisansPencil>, 333)
  .addTool(<ore:artisansCutters>, 333)
  .addTool(<ore:artisansFramingHammer>, 333)
  .addOutput(<extraplanets:schematic_tier4>*2)
  .create();

//T5
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <extraplanets:schematic_tier5>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:palladium> * 720)
  .addTool(<ore:artisansPencil>, 444)
  .addTool(<ore:artisansCutters>, 444)
  .addTool(<ore:artisansFramingHammer>, 444)
  .addOutput(<extraplanets:schematic_tier5>*2)
  .create();

//T6
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <extraplanets:schematic_tier6>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:magnesium> * 720)
  .addTool(<ore:artisansPencil>, 555)
  .addTool(<ore:artisansCutters>, 555)
  .addTool(<ore:artisansFramingHammer>, 555)
  .addOutput(<extraplanets:schematic_tier6>*2)
  .create();

//T8
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <extraplanets:schematic_tier8>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:draconium> * 720)
  .addTool(<ore:artisansPencil>, 777)
  .addTool(<ore:artisansCutters>, 777)
  .addTool(<ore:artisansFramingHammer>, 777)
  .addOutput(<extraplanets:schematic_tier8>*2)
  .create();

//T9
RecipeBuilder.get("designer")
  .setShaped([
    [<multiblocked:multiblock_builder>, <extraplanets:schematic_tier9>, <multiblocked:multiblock_builder>]])
  .setFluid(<liquid:tungsten> * 720)
  .addTool(<ore:artisansPencil>, 888)
  .addTool(<ore:artisansCutters>, 888)
  .addTool(<ore:artisansFramingHammer>, 888)
  .addOutput(<extraplanets:schematic_tier9>*2)
  .create();