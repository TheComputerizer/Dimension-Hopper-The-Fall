#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>])
  .setFluid(<liquid:lava> * 125)
  .addTool(<ore:artisansHammer>, 12)
  .addOutput(<overloaded:compressed_stone>)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>])
  .setFluid(<liquid:lava> * 100)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<overloaded:compressed_cobblestone>)
  .create();
  RecipeBuilder.get("mason")
  .setShapeless([<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>])
  .setFluid(<liquid:lava> * 75)
  .addTool(<ore:artisansHammer>, 7)
  .addOutput(<overloaded:compressed_gravel>)
  .create();
  RecipeBuilder.get("mason")
  .setShapeless([<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>])
  .setFluid(<liquid:lava> * 50)
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<overloaded:compressed_dirt>)
  .create();
  RecipeBuilder.get("mason")
  .setShapeless([<minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>])
  .setFluid(<liquid:lava> * 25)
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<overloaded:compressed_sand>)
  .create();
  RecipeBuilder.get("mason")
  .setShapeless([<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>])
  .setFluid(<liquid:lava> * 75)
  .addTool(<ore:artisansHammer>, 7)
  .addOutput(<overloaded:compressed_netherrack>)
  .create();
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_stone>.definition.makeStack(meta);
  var higher=<overloaded:compressed_stone>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (125+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (12+(meta+1)*2))
    .addOutput(higher)
    .create();
}
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_cobblestone>.definition.makeStack(meta);
  var higher=<overloaded:compressed_cobblestone>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (100+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (10+(meta+1)*2))
    .addOutput(higher)
    .create();
}
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_gravel>.definition.makeStack(meta);
  var higher=<overloaded:compressed_gravel>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (75+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (7+(meta+1)*2))
    .addOutput(higher)
    .create();
}
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_dirt>.definition.makeStack(meta);
  var higher=<overloaded:compressed_dirt>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (50+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (5+(meta+1)*2))
    .addOutput(higher)
    .create();
}
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_sand>.definition.makeStack(meta);
  var higher=<overloaded:compressed_sand>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (25+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (2+(meta+1)*2))
    .addOutput(higher)
    .create();
}
for meta in 0 .. 15
{
  var lower=<overloaded:compressed_netherrack>.definition.makeStack(meta);
  var higher=<overloaded:compressed_netherrack>.definition.makeStack(meta+1);
  RecipeBuilder.get("mason")
    .setShapeless([lower, lower, lower, lower, lower, lower, lower, lower, lower])
    .setFluid(<liquid:lava> * (75+(meta+1)*5))
    .addTool(<ore:artisansHammer>, (7+(meta+1)*2))
    .addOutput(higher)
    .create();
}