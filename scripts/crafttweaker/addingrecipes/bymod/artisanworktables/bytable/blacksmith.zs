#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//t2 table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<enderio:block_alloy:8>, <extendedcrafting:material:2>, <enderio:block_alloy:8>],
    [<enderio:block_alloy:8>, <artisanworktables:worktable:3>, <enderio:block_alloy:8>],
    [<contenttweaker:mek_wall>, null, <contenttweaker:mek_wall>]])
  .setFluid(<liquid:emerald> * 4000)
  .addTool(<ore:artisansHammer>, 100)
  .addOutput(<artisanworktables:workstation:3>)
  .create();
//t3 table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aoa3:deeplands_stone>, <environmentaltech:pladium_crystal>, <aoa3:deeplands_stone>],
    [<environmentaltech:pladium_crystal>, <artisanworktables:workstation:3>, <environmentaltech:pladium_crystal>],
    [<aoa3:stranglewood_log>, <aoa3:ancient_rock>, <aoa3:stranglewood_log>]])
  .setFluid(<liquid:varsium> * 8000)
  .addTool(<ore:artisansHammer>, 1000)
  .addTool(<ore:artisansFile>, 1000)
  .addOutput(<artisanworktables:workshop:3>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<extendedcrafting:material>, <extendedcrafting:material>])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<extendedcrafting:material:2>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:352>, <thermalfoundation:material:356>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:356>, <artisanworktables:toolbox>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:356>, <thermalfoundation:material:352>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansDriver>, 50)
  .addOutput(<artisanworktables:mechanical_toolbox>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<minecraft:gold_ingot>, <thermalfoundation:material:128>, <minecraft:gold_ingot>],
    [<thermalfoundation:material:128>, <dimdoors:stable_fabric>, <thermalfoundation:material:128>],
    [<minecraft:gold_ingot>, <thermalfoundation:material:128>, <minecraft:gold_ingot>]])
  .addTool(<ore:artisansHammer>, 33)
  .addOutput(<contenttweaker:armor_core_1>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<goodnightsleep:positite_gem>, <goodnightsleep:negatite_gem>, <goodnightsleep:positite_gem>],
    [<goodnightsleep:negatite_gem>, <contenttweaker:armor_core_1>, <goodnightsleep:negatite_gem>],
    [<goodnightsleep:positite_gem>, <goodnightsleep:negatite_gem>, <goodnightsleep:positite_gem>]])
  .addTool(<ore:artisansHammer>, 66)
  .addOutput(<contenttweaker:armor_core_2>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<calculator:enddiamond>, <cavern:cave_item:5>, <calculator:enddiamond>],
    [<cavern:cave_item:5>, <contenttweaker:armor_core_2>, <cavern:cave_item:5>],
    [<calculator:enddiamond>, <cavern:cave_item:5>, <calculator:enddiamond>]])
  .addTool(<ore:artisansHammer>, 99)
  .addTool(<ore:artisansFile>, 99)
  .addOutput(<contenttweaker:armor_core_3>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<galacticraftplanets:item_basic_mars:5>, <thermalfoundation:material:326>, <galacticraftplanets:item_basic_mars:5>],
    [<thermalfoundation:material:326>, <contenttweaker:armor_core_3>, <thermalfoundation:material:326>],
    [<galacticraftplanets:item_basic_asteroids:6>, <thermalfoundation:material:326>, <galacticraftplanets:item_basic_asteroids:6>]])
  .addTool(<ore:artisansHammer>, 150)
  .addTool(<ore:artisansFile>, 150)
  .addOutput(<contenttweaker:armor_core_4>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<aoa3:lunar_ingot>, <aoa3:lunar_ingot>, <aoa3:shyregem>, <aoa3:lunar_ingot>, <aoa3:lunar_ingot>],
    [<aoa3:lunar_ingot>, <aoa3:baronyte_ingot>, <aoa3:shyregem>, <aoa3:baronyte_ingot>, <aoa3:lunar_ingot>],
    [<aoa3:shyregem>, <aoa3:shyregem>, <contenttweaker:armor_core_4>, <aoa3:shyregem>, <aoa3:shyregem>],
    [<aoa3:lunar_ingot>, <aoa3:baronyte_ingot>, <aoa3:shyregem>, <aoa3:baronyte_ingot>, <aoa3:lunar_ingot>],
    [<aoa3:lunar_ingot>, <aoa3:lunar_ingot>, <aoa3:shyregem>, <aoa3:lunar_ingot>, <aoa3:lunar_ingot>]])
  .addTool(<ore:artisansHammer>, 250)
  .addTool(<ore:artisansFile>, 250)
  .addTool(<ore:artisansPliers>, 250)
  .addOutput(<contenttweaker:armor_core_5>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<extraplanets:tier7_items:6>, <extraplanets:tier7_items:6>, <extraplanets:tier5_items:4>, <extraplanets:tier7_items:6>, <extraplanets:tier7_items:6>],
    [<extraplanets:tier7_items:6>, <extraplanets:tier6_items:4>, <extraplanets:tier5_items:4>, <extraplanets:tier6_items:4>, <extraplanets:tier7_items:6>],
    [<extraplanets:tier5_items:4>, <extraplanets:tier5_items:4>, <contenttweaker:armor_core_5>, <extraplanets:tier5_items:4>, <extraplanets:tier5_items:4>],
    [<extraplanets:tier7_items:6>, <extraplanets:tier6_items:4>, <extraplanets:tier5_items:4>, <extraplanets:tier6_items:4>, <extraplanets:tier7_items:6>],
    [<extraplanets:tier7_items:6>, <extraplanets:tier7_items:6>, <extraplanets:tier5_items:4>, <extraplanets:tier7_items:6>, <extraplanets:tier7_items:6>]])
  .addTool(<ore:artisansHammer>, 500)
  .addTool(<ore:artisansFile>, 500)
  .addTool(<ore:artisansPliers>, 500)
  .addOutput(<contenttweaker:armor_core_6>)
  .create();

//space suit 1
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <contenttweaker:armor_core_3>, <thermalfoundation:material:321>]])
  .setFluid(<liquid:latex> * 4000)
  .addTool(<ore:artisansHammer>, 125)
  .addTool(<ore:artisansFile>, 125)
  .addOutput(<extraplanets:tier1_un_prepared_space_suit_helmet>)
  .create();
 RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:321>, <contenttweaker:armor_core_3>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>]])
  .setFluid(<liquid:latex> * 8000)
  .addTool(<ore:artisansHammer>, 175)
  .addTool(<ore:artisansFile>, 175)
  .addOutput(<extraplanets:tier1_un_prepared_space_suit_chest>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <contenttweaker:armor_core_3>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, null, <thermalfoundation:material:321>]])
  .setFluid(<liquid:latex> * 6000)
  .addTool(<ore:artisansHammer>, 150)
  .addTool(<ore:artisansFile>, 150)
  .addOutput(<extraplanets:tier1_un_prepared_space_suit_legings>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:321>, null, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <contenttweaker:armor_core_3>, <thermalfoundation:material:321>]])
  .setFluid(<liquid:latex> * 2000)
  .addTool(<ore:artisansHammer>, 100)
  .addTool(<ore:artisansFile>, 100)
  .addOutput(<extraplanets:tier1_un_prepared_space_suit_boots>)
  .create();

//chapter 1 armor sets
val T1 = [
	[<dimdoors:world_thread>, <dimdoors:woven_world_thread_helmet>, <dimdoors:woven_world_thread_chestplate>, <dimdoors:woven_world_thread_leggings>, <dimdoors:woven_world_thread_boots>],
	[<thermalfoundation:material:33>, <minecraft:golden_helmet>, <minecraft:golden_chestplate>, <minecraft:golden_leggings>, <minecraft:golden_boots>],
	[<quark:chain>, <minecraft:chainmail_helmet>, <minecraft:chainmail_chestplate>, <minecraft:chainmail_leggings>, <minecraft:chainmail_boots>],
	[<thermalfoundation:material:32>, <minecraft:iron_helmet>, <minecraft:iron_chestplate>, <minecraft:iron_leggings>, <minecraft:iron_boots>],
	[<moreplates:nether_quartz_plate>, <tp:quartz_helmet>, <tp:quartz_chestplate>, <tp:quartz_leggings>, <tp:quartz_boots>],
	[<moreplates:enori_plate>, <actuallyadditions:item_helm_crystal_white>, <actuallyadditions:item_chest_crystal_white>, <actuallyadditions:item_pants_crystal_white>, <actuallyadditions:item_boots_crystal_white>]
] as IItemStack[][];

for i, item in T1 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_1>, item[0]]])
		.addTool(<ore:artisansHammer>, 50)
		.addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], <contenttweaker:armor_core_1>, item[0]],
		[item[0], item[0], item[0]],
		[item[0], item[0], item[0]]])
		.addTool(<ore:artisansHammer>, 100)
		.addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_1>, item[0]],
		[item[0], null, item[0]]])
		.addTool(<ore:artisansHammer>, 75)
		.addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], null, item[0]],
		[item[0], <contenttweaker:armor_core_1>, item[0]]])
		.addTool(<ore:artisansHammer>, 25)
		.addOutput(item[4])
		.create();
}

//chapter 2 armor sets
val T2 = [
	[<moreplates:redstone_plate>, <tp:redstone_helmet>, <tp:redstone_chestplate>, <tp:redstone_leggings>, <tp:redstone_boots>],
	[<gaiadimension:leucite>, <gaiadimension:leucite_helmet>, <gaiadimension:leucite_chestplate>, <gaiadimension:leucite_legs>, <gaiadimension:leucite_boots>],
	[<moreplates:lapis_lazuli_plate>, <tp:lapis_helmet>, <tp:lapis_chestplate>, <tp:lapis_leggings>, <tp:lapis_boots>],
	[<gaiadimension:carnelian>, <gaiadimension:carnelian_helmet>, <gaiadimension:carnelian_chestplate>, <gaiadimension:carnelian_legs>, <gaiadimension:carnelian_boots>],
	[<moreplates:restonia_plate>, <actuallyadditions:item_helm_crystal_red>, <actuallyadditions:item_chest_crystal_red>, <actuallyadditions:item_pants_crystal_red>, <actuallyadditions:item_boots_crystal_red>],
	[<moreplates:palis_plate>, <actuallyadditions:item_helm_crystal_blue>, <actuallyadditions:item_chest_crystal_blue>, <actuallyadditions:item_pants_crystal_blue>, <actuallyadditions:item_boots_crystal_blue>]
] as IItemStack[][];

for i, item in T2 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_2>, item[0]]])
		.addTool(<ore:artisansHammer>, 75)
		.addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], <contenttweaker:armor_core_2>, item[0]],
		[item[0], item[0], item[0]],
		[item[0], item[0], item[0]]])
		.addTool(<ore:artisansHammer>, 125)
		.addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_2>, item[0]],
		[item[0], null, item[0]]])
		.addTool(<ore:artisansHammer>, 100)
		.addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], null, item[0]],
		[item[0], <contenttweaker:armor_core_2>, item[0]]])
		.addTool(<ore:artisansHammer>, 50)
		.addOutput(item[4])
		.create();
}

//chapter 3 armor sets
val T3 = [
	[<aquaculture:loot:1>, <aquaculture:neptunium_helmet>, <aquaculture:neptunium_chestplate>, <aquaculture:neptunium_leggings>, <aquaculture:neptunium_boots>],
	[<aether:arkenium>, <aether:arkenium_helmet>, <aether:arkenium_chestplate>, <aether:arkenium_leggings>, <aether:arkenium_boots>],
	[<aether:gravitite_plate>, <aether:gravitite_helmet>, <aether:gravitite_chestplate>, <aether:gravitite_leggings>, <aether:gravitite_boots>],
	[<tp:reinforced_obsidian_ingot>, <tp:obsidian_helmet>, <tp:obsidian_chestplate>, <tp:obsidian_leggings>, <tp:obsidian_boots>],
	[<gaiadimension:chalcedony>, <gaiadimension:chalcedony_helmet>, <gaiadimension:chalcedony_chestplate>, <gaiadimension:chalcedony_legs>, <gaiadimension:chalcedony_boots>],
	[<moreplates:empowered_diamatine_plate>, <actuallyadditions:item_helm_crystal_light_blue>, <actuallyadditions:item_chest_crystal_light_blue>, <actuallyadditions:item_pants_crystal_light_blue>, <actuallyadditions:item_boots_crystal_light_blue>],
	[<moreplates:empowered_emeradic_plate>, <actuallyadditions:item_helm_crystal_green>, <actuallyadditions:item_chest_crystal_green>, <actuallyadditions:item_pants_crystal_green>, <actuallyadditions:item_boots_crystal_green>],
	[<moreplates:terrasteel_plate>, <botania:terrasteelhelm>, <botania:terrasteelchest>, <botania:terrasteellegs>, <botania:terrasteelboots>]
] as IItemStack[][];

for i, item in T3 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_3>, item[0]]])
		.addTool(<ore:artisansHammer>, 100)
		.addTool(<ore:artisansFile>, 100)
		.addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], <contenttweaker:armor_core_3>, item[0]],
		[item[0], item[0], item[0]],
		[item[0], item[0], item[0]]])
		.addTool(<ore:artisansHammer>, 150)
		.addTool(<ore:artisansFile>, 150)
		.addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_3>, item[0]],
		[item[0], null, item[0]]])
		.addTool(<ore:artisansHammer>, 125)
		.addTool(<ore:artisansFile>, 125)
		.addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], null, item[0]],
		[item[0], <contenttweaker:armor_core_3>, item[0]]])
		.addTool(<ore:artisansHammer>, 75)
		.addTool(<ore:artisansFile>, 75)
		.addOutput(item[4])
		.create();
}

//chapter 5 armor sets
val T5 = [
	[<galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:desh_helmet>, <galacticraftplanets:desh_chestplate>, <galacticraftplanets:desh_leggings>, <galacticraftplanets:desh_boots>],
	[<galacticraftplanets:item_basic_asteroids:6>, <galacticraftplanets:titanium_helmet>, <galacticraftplanets:titanium_chestplate>, <galacticraftplanets:titanium_leggings>, <galacticraftplanets:titanium_boots>]
] as IItemStack[][];

for i, item in T5 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_4>, item[0]]])
		.addTool(<ore:artisansHammer>, 125)
		.addTool(<ore:artisansFile>, 125)
		.addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], <contenttweaker:armor_core_4>, item[0]],
		[item[0], item[0], item[0]],
		[item[0], item[0], item[0]]])
		.addTool(<ore:artisansHammer>, 175)
		.addTool(<ore:artisansFile>, 175)
		.addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], item[0], item[0]],
		[item[0], <contenttweaker:armor_core_4>, item[0]],
		[item[0], null, item[0]]])
		.addTool(<ore:artisansHammer>, 150)
		.addTool(<ore:artisansFile>, 150)
		.addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		[item[0], null, item[0]],
		[item[0], <contenttweaker:armor_core_4>, item[0]]])
		.addTool(<ore:artisansHammer>, 100)
		.addTool(<ore:artisansFile>, 100)
		.addOutput(item[4])
		.create();
}

//chapter 6 armor sets
val T6 = [
	[<moreplanets:multalic_crystal_pieces>, <moreplanets:multalic_crystal_helmet>, <moreplanets:multalic_crystal_chestplate>, <moreplanets:multalic_crystal_leggings>, <moreplanets:multalic_crystal_boots>],
	[<aoa3:bloodstone_lamp_off>, <tp:lava_helmet>, <tp:lava_chestplate>, <tp:lava_leggings>, <tp:lava_boots>]
] as IItemStack[][];

for i, item in T6 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], null, <contenttweaker:armor_core_5>, null, item[0]]])
		 .addTool(<ore:artisansHammer>, 200)
		 .addTool(<ore:artisansFile>, 200)
		 .addTool(<ore:artisansPliers>, 200)
		 .addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], null, null, null, item[0]],
		 [item[0], item[0], <contenttweaker:armor_core_5>, item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 300)
		 .addTool(<ore:artisansFile>, 300)
		 .addTool(<ore:artisansPliers>, 300)
		 .addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], <contenttweaker:armor_core_5>, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 250)
		 .addTool(<ore:artisansFile>, 250)
		 .addTool(<ore:artisansPliers>, 250)
		 .addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], <contenttweaker:armor_core_5>, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 150)
		 .addTool(<ore:artisansFile>, 150)
		 .addTool(<ore:artisansPliers>, 150)
		 .addOutput(item[4])
		.create();
}

//chapter 7 armor sets
val T7 = [
	[<minecraft:nether_star>, <tp:wither_helmet>, <tp:wither_chestplate>, <tp:wither_leggings>, <tp:wither_boots>],
	[<tp:dragon_scale>, <tp:dragon_helmet>, <tp:dragon_chestplate>, <tp:dragon_leggings>, <tp:dragon_boots>]
] as IItemStack[][];

for i, item in T7 {
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], null, <contenttweaker:armor_core_6>, null, item[0]]])
		 .addTool(<ore:artisansHammer>, 200)
		 .addTool(<ore:artisansFile>, 200)
		 .addTool(<ore:artisansPliers>, 200)
		 .addOutput(item[1])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], null, null, null, item[0]],
		 [item[0], item[0], <contenttweaker:armor_core_6>, item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 300)
		 .addTool(<ore:artisansFile>, 300)
		 .addTool(<ore:artisansPliers>, 300)
		 .addOutput(item[2])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], item[0], item[0], item[0]],
		 [item[0], item[0], <contenttweaker:armor_core_6>, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 250)
		 .addTool(<ore:artisansFile>, 250)
		 .addTool(<ore:artisansPliers>, 250)
		 .addOutput(item[3])
		.create();
	RecipeBuilder.get("blacksmith")
		.setShaped([
		 [item[0], item[0], <contenttweaker:armor_core_6>, item[0], item[0]],
		 [item[0], item[0], null, item[0], item[0]]])
		 .addTool(<ore:artisansHammer>, 150)
		 .addTool(<ore:artisansFile>, 150)
		 .addTool(<ore:artisansPliers>, 150)
		 .addOutput(item[4])
		.create();
}