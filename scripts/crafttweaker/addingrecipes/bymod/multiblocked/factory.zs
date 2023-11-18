#loader multiblocked

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.text.ITextComponent;

val factoryRPF = RecipeMap("the_factory_mk_1_recipes") as RecipeMap;
RecipeMap.register(factoryRPF);

val factoryRPS = RecipeMap("the_factory_mk_2_recipes") as RecipeMap;
RecipeMap.register(factoryRPS);

val factoryRPT = RecipeMap("the_factory_mk_3_recipes") as RecipeMap;
RecipeMap.register(factoryRPT);

var ingots = [
<draconicevolution:draconium_ingot>*9,
<draconicevolution:draconic_ingot>*9,
<enderio:item_alloy_ingot>*9,
<enderio:item_alloy_ingot:1>*9,
<enderio:item_alloy_ingot:2>*9,
<enderio:item_alloy_ingot:3>*9,
<enderio:item_alloy_ingot:4>*9,
<enderio:item_alloy_ingot:5>*9,
<enderio:item_alloy_ingot:6>*9,
<minecraft:gold_ingot>*9,
<minecraft:iron_ingot>*9,
<moreplates:manasteel_plate>*9,
<botania:manaresource:4>*9,
<moreplates:terrasteel_plate>*9,
<moreplates:gaia_spirit_plate>*9,
<aoa3:baronyte_ingot>*9,
<aoa3:blazium_ingot>*9,
<aoa3:elecanium_ingot>*9,
<aoa3:emberstone_ingot>*9,
<aoa3:ghastly_ingot>*9,
<aoa3:ghoulish_ingot>*9,
<aoa3:limonite_ingot>*9,
<aoa3:lunar_ingot>*9,
<aoa3:lyon_ingot>*9,
<aoa3:mystite_ingot>*9,
<aoa3:rosite_ingot>*9,
<aoa3:shyrestone_ingot>*9,
<aoa3:skeletal_ingot>*9,
<aoa3:varsium_ingot>*9,
<avaritia:resource:1>*9,
<avaritia:resource:6>*9,
<blue_skies:horizonite_ingot>*9,
<calculator:enrichedgoldingot>*9,
<calculator:reinforcedironingot>*9,
<calculator:redstoneingot>*9,
<cavern:cave_item:1>*9,
<extrautils2:ingredients:12>*9,
<extrautils2:ingredients:17>*9,
<bigreactors:ingotcyanite>*9,
<bigreactors:ingotblutonium>*9,
<bigreactors:ingotludicrite>*9,
<galacticraftcore:item_basic_moon>*9,
<galacticraftplanets:item_basic_mars:2>*9,
<galacticraftplanets:item_basic_asteroids>*9,
<goodnightsleep:zitrite_ingot>*9,
<enderio:item_alloy_ingot:7>*9,
<enderio:item_alloy_ingot:8>*9,
<enderio:item_alloy_ingot:9>*9,
<enderio:item_alloy_endergy_ingot>*9,
<enderio:item_alloy_endergy_ingot:1>*9,
<enderio:item_alloy_endergy_ingot:2>*9,
<enderio:item_alloy_endergy_ingot:3>*9,
<enderio:item_alloy_endergy_ingot:4>*9,
<enderio:item_alloy_endergy_ingot:5>*9,
<enderio:item_alloy_endergy_ingot:6>*9,
<extendedcrafting:material>*9,
<extendedcrafting:material:24>*9,
<extendedcrafting:material:32>*9,
<extendedcrafting:material:36>*9,
<extendedcrafting:material:48>*9,
<extraplanets:ingot_mercury>*9,
<extraplanets:tier4_items:5>*9,
<extraplanets:ingot_uranium>*9,
<extraplanets:tier5_items:5>*9,
<extraplanets:tier5_items:7>*9,
<extraplanets:tier6_items:5>*9,
<extraplanets:tier7_items:5>*9,
<extraplanets:tier8_items:5>*9,
<extraplanets:tier9_items:5>*9,
<extraplanets:tier10_items:5>*9,
<extraplanets:tier11_items:5>*9,
<extrautils2:ingredients:11>*9,
<plustic:mirioningot>*9,
<psi:material:1>*9,
<psi:material:3>*9,
<psi:material:4>*9,
<sgcraft:naquadahingot>*9,
<silentgems:craftingmaterial:30>*9,
<theaurorian:ceruleaningot>*9,
<theaurorian:moonstoneingot>*9,
<thebetweenlands:items_misc:11>*9,
<immersiveengineering:metal:5>*9,
<lightningcraft:ingot>*9,
<lightningcraft:ingot:1>*9,
<lightningcraft:ingot:2>*9,
<lockyzextradimensionsmod:interdimensionalingot>*9,
<lockyzextradimensionsmod:cloudingot>*9,
<mekanism:ingot>*9,
<mekanism:ingot:1>*9,
<mekanism:ingot:3>*9,
<midnight:tenebrum_ingot>*9,
<midnight:nagrilite_ingot>*9,
<mist:niobium_ingot>*9,
<moreplanets:illenium_ingot>*9,
<moreplanets:glowing_iron_ingot>*9,
<moreplanets:diremsium_ingot>*9,
<moreplanets:zyptorium_ingot>*9,
<mysticalagradditions:insanium:2>*9,
<mysticalagriculture:crafting:32>*9,
<mysticalagriculture:crafting:33>*9,
<mysticalagriculture:crafting:34>*9,
<mysticalagriculture:crafting:35>*9,
<mysticalagriculture:crafting:36>*9,
<mysticalagriculture:crafting:37>*9,
<mysticalagriculture:crafting:38>*9,
<plustic:alumiteingot>*9,
<plustic:osgloglasingot>*9,
<plustic:osmiridiumingot>*9,
<zollerngalaxy:ingotcobalt>*9,
<zollerngalaxy:ingotevenium>*9,
<zollerngalaxy:shinestoneingot>*9,
<zollerngalaxy:chargiumingot>*9,
<zollerngalaxy:fueltoniumingot>*9,
<zollerngalaxy:amaranthingot>*9,
<zollerngalaxy:zollerniumingot>*9,
<zollerngalaxy:etriumingot>*9,
<thermalfoundation:material:130>*9,
<thermalfoundation:material:131>*9,
<thermalfoundation:material:163>*9,
<thermalfoundation:material:129>*9,
<thermalfoundation:material:128>*9,
<thebetweenlands:octine_ingot>*9,
<thermalfoundation:material:132>*9,
<thermalfoundation:material:133>*9,
<thermalfoundation:material:134>*9,
<thermalfoundation:material:135>*9,
<thermalfoundation:material:136>*9,
<thermalfoundation:material:160>*9,
<thermalfoundation:material:161>*9,
<thermalfoundation:material:162>*9,
<thermalfoundation:material:164>*9,
<thermalfoundation:material:165>*9,
<thermalfoundation:material:166>*9,
<thermalfoundation:material:167>*9,
<tconstruct:ingots>*9,
<tconstruct:ingots:1>*9,
<tconstruct:ingots:2>*9,
<tconstruct:ingots:3>*9,
<tconstruct:ingots:4>*9,
<tconstruct:ingots:5>*9,
<tp:lapis_ingot>*9,
<tp:reinforced_obsidian_ingot>*9,
<zollerngalaxy:ingotviri>*9,
<minecraft:diamond>*9,
<minecraft:emerald>*9,
<minecraft:redstone>*9,
<psi:material:2>*9,
<zollerngalaxy:shiniumingot>*9,
<zollerngalaxy:zucriteingot>*9,
<zollerngalaxy:rhodiumingot>*9,
<zollerngalaxy:radiumingot>*9,
<actuallyadditions:item_crystal>*9,
<actuallyadditions:item_crystal:1>*9,
<actuallyadditions:item_crystal:2>*9,
<actuallyadditions:item_crystal:3>*9,
<actuallyadditions:item_crystal:4>*9,
<actuallyadditions:item_crystal:5>*9,
<actuallyadditions:item_crystal_empowered>*9,
<actuallyadditions:item_crystal_empowered:1>*9,
<actuallyadditions:item_crystal_empowered:2>*9,
<actuallyadditions:item_crystal_empowered:3>*9,
<actuallyadditions:item_crystal_empowered:4>*9,
<actuallyadditions:item_crystal_empowered:5>*9,
<industrialforegoing:tinydryrubber>*9,
<minecraft:obsidian>*9,
<cavern:cave_item:2>*9,
<silentgems:gem:8>*9,
<silentgems:gem:6>*9,
<silentgems:craftingmaterial:3>*9,
<naturesaura:infused_iron>*9,
<minecraft:coal:1>*9,
<silentgems:craftingmaterial>*9,
<silentgems:craftingmaterial:1>*9,
<silentgems:craftingmaterial:2>*9,
<cavern:cave_item>*9,
<zollerngalaxy:aquamarine>*9,
<minecraft:flint>*4,
<lockyzextradimensionsmod:alternategem>*9,
<tp:flint_ingot>*9,
<appliedenergistics2:material>*9,
<appliedenergistics2:material:1>*9,
<avaritia:resource:1>*9
] as IItemStack[];
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_obsidian>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_cobblestone>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_stone>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_netherrack>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_gravel>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_sand>.definition.makeStack(meta)*9;
}
for meta in 0 .. 15 {
	ingots += <overloaded:compressed_dirt>.definition.makeStack(meta)*9;
}

var blocks = [
<draconicevolution:draconium_block>,
<draconicevolution:draconic_block>,
<enderio:block_alloy>,
<enderio:block_alloy:1>,
<enderio:block_alloy:2>,
<enderio:block_alloy:3>,
<enderio:block_alloy:4>,
<enderio:block_alloy:5>,
<enderio:block_alloy:6>,
<minecraft:gold_block>,
<minecraft:iron_block>,
<botania:storage>,
<botania:storage:1>,
<botania:storage:2>,
<avaritiatweaks:gaia_block>,
<aoa3:baronyte_block>,
<aoa3:blazium_block>,
<aoa3:elecanium_block>,
<aoa3:emberstone_block>,
<aoa3:ghastly_block>,
<aoa3:ghoulish_block>,
<aoa3:limonite_block>,
<aoa3:lunar_block>,
<aoa3:lyon_block>,
<aoa3:mystite_block>,
<aoa3:rosite_block>,
<aoa3:shyrestone_block>,
<aoa3:skeletal_ingot_block>,
<aoa3:varsium_block>,
<avaritia:block_resource:2>,
<avaritia:block_resource:1>,
<blue_skies:horizonite_block>,
<calculator:material:2>,
<calculator:material:3>,
<calculator:material:9>,
<cavern:cave_block:3>,
<extrautils2:simpledecorative>,
<extrautils2:simpledecorative:2>,
<bigreactors:blockcyanite>,
<bigreactors:blockblutonium>,
<bigreactors:blockludicrite>,
<galacticraftcore:basic_block_core:12>,
<galacticraftplanets:mars:8>,
<galacticraftplanets:asteroids_block:7>,
<goodnightsleep:zitrite_block>,
<enderio:block_alloy:7>,
<enderio:block_alloy:8>,
<enderio:block_alloy:9>,
<enderio:block_alloy_endergy>,
<enderio:block_alloy_endergy:1>,
<enderio:block_alloy_endergy:2>,
<enderio:block_alloy_endergy:3>,
<enderio:block_alloy_endergy:4>,
<enderio:block_alloy_endergy:5>,
<enderio:block_alloy_endergy:6>,
<extendedcrafting:storage>,
<extendedcrafting:storage:3>,
<extendedcrafting:storage:4>,
<extendedcrafting:storage:5>,
<extendedcrafting:storage:7>,
<extraplanets:mercury:7>,
<extraplanets:mercury:11>,
<extraplanets:ceres:7>,
<extraplanets:jupiter:8>,
<extraplanets:jupiter:13>,
<extraplanets:saturn:7>,
<extraplanets:uranus:4>,
<extraplanets:neptune:7>,
<extraplanets:pluto:7>,
<extraplanets:eris:7>,
<extraplanets:kepler22b:14>,
<extrautils2:simpledecorative:1>,
<plustic:mirionblock>,
<psi:psi_decorative:1>,
<psi:psi_decorative:7>,
<psi:psi_decorative:8>,
<sgcraft:naquadahblock>,
<silentgems:miscblock:4>,
<theaurorian:ceruleanblock>,
<theaurorian:moonstoneblock>,
<thebetweenlands:syrmorite_block>,
<immersiveengineering:storage:5>,
<lightningcraft:metal_block>,
<lightningcraft:metal_block:1>,
<lightningcraft:metal_block:2>,
<lockyzextradimensionsmod:interdimensionalblock>,
<lockyzextradimensionsmod:cloudblock>,
<mekanism:basicblock:2>,
<mekanism:basicblock>,
<mekanism:basicblock:4>,
<midnight:tenebrum_block>,
<midnight:nagrilite_block>,
<mist:niobium_block>,
<moreplanets:illenium_block>,
<moreplanets:glowing_iron_block>,
<moreplanets:diremsium_block>,
<moreplanets:zyptorium_block>,
<mysticalagradditions:storage:1>,
<mysticalagriculture:ingot_storage>,
<mysticalagriculture:ingot_storage:1>,
<mysticalagriculture:ingot_storage:2>,
<mysticalagriculture:ingot_storage:3>,
<mysticalagriculture:ingot_storage:4>,
<mysticalagriculture:ingot_storage:5>,
<mysticalagriculture:ingot_storage:6>,
<plustic:alumiteblock>,
<plustic:osgloglasblock>,
<plustic:osmiridiumblock>,
<zollerngalaxy:cobaltblock>,
<zollerngalaxy:eveniumblock>,
<zollerngalaxy:shinestonecrystal>,
<zollerngalaxy:chargiumblock>,
<zollerngalaxy:fueltoniumblock>,
<zollerngalaxy:amaranthblock>,
<zollerngalaxy:zollerniumblock>,
<zollerngalaxy:perdetriumblock>,
<thermalfoundation:storage:2>,
<thermalfoundation:storage:3>,
<thermalfoundation:storage_alloy:3>,
<thermalfoundation:storage:1>,
<thermalfoundation:storage>,
<thebetweenlands:octine_block>,
<thermalfoundation:storage:4>,
<thermalfoundation:storage:5>,
<thermalfoundation:storage:6>,
<thermalfoundation:storage:7>,
<thermalfoundation:storage:8>,
<thermalfoundation:storage_alloy>,
<thermalfoundation:storage_alloy:1>,
<thermalfoundation:storage_alloy:2>,
<thermalfoundation:storage_alloy:4>,
<thermalfoundation:storage_alloy:5>,
<thermalfoundation:storage_alloy:6>,
<thermalfoundation:storage_alloy:7>,
<tconstruct:metal>,
<tconstruct:metal:1>,
<tconstruct:metal:2>,
<tconstruct:metal:3>,
<tconstruct:metal:4>,
<tconstruct:metal:5>,
<minecraft:lapis_block>,
<tp:reinforced_obsidian>,
<zollerngalaxy:viriblock>,
<minecraft:diamond_block>,
<minecraft:emerald_block>,
<minecraft:redstone_block>,
<psi:psi_decorative:2>,
<zollerngalaxy:shiniumblock>,
<zollerngalaxy:zucriteblock>,
<zollerngalaxy:rhodiumblock>,
<zollerngalaxy:radiumblock>,
<actuallyadditions:block_crystal>,
<actuallyadditions:block_crystal:1>,
<actuallyadditions:block_crystal:2>,
<actuallyadditions:block_crystal:3>,
<actuallyadditions:block_crystal:4>,
<actuallyadditions:block_crystal:5>,
<actuallyadditions:block_crystal_empowered>,
<actuallyadditions:block_crystal_empowered:1>,
<actuallyadditions:block_crystal_empowered:2>,
<actuallyadditions:block_crystal_empowered:3>,
<actuallyadditions:block_crystal_empowered:4>,
<actuallyadditions:block_crystal_empowered:5>,
<industrialforegoing:dryrubber>,
<overloaded:compressed_obsidian>,
<cavern:cave_block:6>,
<silentgems:gemblock:8>,
<silentgems:gemblock:6>,
<silentgems:craftingmaterial>,
<naturesaura:infused_iron_block>,
<thermalfoundation:storage_resource>,
<silentgems:miscblock>,
<silentgems:miscblock:1>,
<silentgems:miscblock:2>,
<cavern:cave_block:1>,
<zollerngalaxy:aquamarineblock>,
<tp:flint_ingot>,
<lockyzextradimensionsmod:alternateblock>,
<tp:flint_block>,
<jaopca:block.certus_quartz>,
<jaopca:block.charged_certus_quartz>,
<avaritia:block_resource:2>
] as IItemStack[];
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_obsidian>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_cobblestone>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_stone>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_netherrack>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_gravel>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_sand>.definition.makeStack(meta);
}
for meta in 1 .. 16 {
	blocks += <overloaded:compressed_dirt>.definition.makeStack(meta);
}

for i, item in ingots {
	factoryRPF.start()
		.duration(10)
	    .perTick(true)
		.inputFE(1000)
	    .perTick(false)
		.inputItems(ingots[i])
		.outputItems(blocks[i])
		.buildAndRegister();
}

for i, item in ingots {
	factoryRPS.start()
		.duration(5)
	    .perTick(true)
		.inputFE(20000)
	    .perTick(false)
		.inputItems(ingots[i])
		.outputItems(blocks[i])
		.buildAndRegister();
}

for i, item in ingots {
	factoryRPT.start()
		.duration(1)
		.inputFE(1000000)
		.inputItems(ingots[i])
		.outputItems(blocks[i])
		.buildAndRegister();
}

for i, item in ingots {
	factoryRPF.start()
		.duration(10)
	    .perTick(true)
		.inputFE(1000)
	    .perTick(false)
		.inputItems(blocks[i])
		.outputItems(ingots[i])
		.buildAndRegister();
}

for i, item in ingots {
	factoryRPS.start()
		.duration(5)
	    .perTick(true)
		.inputFE(20000)
	    .perTick(false)
		.inputItems(blocks[i])
		.outputItems(ingots[i])
		.buildAndRegister();
}

for i, item in ingots {
	factoryRPT.start()
		.duration(1)
		.inputFE(1000000)
		.inputItems(blocks[i])
		.outputItems(ingots[i])
		.buildAndRegister();
}

factoryRPS.start()
	.duration(100)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
	.inputItems(<contenttweaker:machine_parts>*9)
	.outputItems(<contenttweaker:affixed_machine_parts>)
	.buildAndRegister();

factoryRPT.start()
	.duration(20)
	.perTick(true)
	.inputFE(500000)
	.perTick(false)
	.inputItems(<contenttweaker:machine_parts>*9)
	.outputItems(<contenttweaker:affixed_machine_parts>)
	.buildAndRegister();


var definitionF as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:the_factory_mk_1");
var factory_one = definitionF as ControllerDefinition;
factory_one.recipeMap = factoryRPF;

var definitionS as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:the_factory_mk_2");
var factory_two = definitionS as ControllerDefinition;
factory_two.recipeMap = factoryRPS;

var definitionT as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:the_factory_mk_3");
var factory_three = definitionT as ControllerDefinition;
factory_three.recipeMap = factoryRPT;