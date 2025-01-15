#loader multiblocked

import crafttweaker.item.IItemDefinition;
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

var blockMap as IItemStack[IItemStack] = {
    <draconicevolution:draconium_ingot>*9:              <draconicevolution:draconium_block>,
    <draconicevolution:draconic_ingot>*9:               <draconicevolution:draconic_block>,
    <enderio:item_alloy_ingot>*9:                       <enderio:block_alloy>,
    <enderio:item_alloy_ingot:1>*9:                     <enderio:block_alloy:1>,
    <enderio:item_alloy_ingot:2>*9:                     <enderio:block_alloy:2>,
    <enderio:item_alloy_ingot:3>*9:                     <enderio:block_alloy:3>,
    <enderio:item_alloy_ingot:4>*9:                     <enderio:block_alloy:4>,
    <enderio:item_alloy_ingot:5>*9:                     <enderio:block_alloy:5>,
    <enderio:item_alloy_ingot:6>*9:                     <enderio:block_alloy:6>,
    <minecraft:gold_ingot>*9:                           <minecraft:gold_block>,
    <minecraft:iron_ingot>*9:                           <minecraft:iron_block>,
    <moreplates:manasteel_plate>*9:                     <botania:storage>,
    <botania:manaresource:4>*9:                         <botania:storage:1>,
    <moreplates:terrasteel_plate>*9:                    <botania:storage:2>,
    <moreplates:gaia_spirit_plate>*9:                   <avaritiatweaks:gaia_block>,
    <aoa3:baronyte_ingot>*9:                            <aoa3:baronyte_block>,
    <aoa3:blazium_ingot>*9:                             <aoa3:blazium_block>,
    <aoa3:elecanium_ingot>*9:                           <aoa3:elecanium_block>,
    <aoa3:emberstone_ingot>*9:                          <aoa3:emberstone_block>,
    <aoa3:ghastly_ingot>*9:                             <aoa3:ghastly_block>,
    <aoa3:ghoulish_ingot>*9:                            <aoa3:ghoulish_block>,
    <aoa3:limonite_ingot>*9:                            <aoa3:limonite_block>,
    <aoa3:lunar_ingot>*9:                               <aoa3:lunar_block>,
    <aoa3:lyon_ingot>*9:                                <aoa3:lyon_block>,
    <aoa3:mystite_ingot>*9:                             <aoa3:mystite_block>,
    <aoa3:rosite_ingot>*9:                              <aoa3:rosite_block>,
    <aoa3:shyrestone_ingot>*9:                          <aoa3:shyrestone_block>,
    <aoa3:skeletal_ingot>*9:                            <aoa3:skeletal_ingot_block>,
    <aoa3:varsium_ingot>*9:                             <aoa3:varsium_block>,
    <blue_skies:horizonite_ingot>*9:                    <blue_skies:horizonite_block>,
    <calculator:enrichedgoldingot>*9:                   <calculator:material:2>,
    <calculator:reinforcedironingot>*9:                 <calculator:material:3>,
    <calculator:redstoneingot>*9:                       <calculator:material:9>,
    <cavern:cave_item:1>*9:                             <cavern:cave_block:3>,
    <extrautils2:ingredients:12>*9:                     <extrautils2:simpledecorative>,
    <extrautils2:ingredients:17>*9:                     <extrautils2:simpledecorative:2>,
    <bigreactors:ingotcyanite>*9:                       <bigreactors:blockcyanite>,
    <bigreactors:ingotblutonium>*9:                     <bigreactors:blockblutonium>,
    <bigreactors:ingotludicrite>*9:                     <bigreactors:blockludicrite>,
    <galacticraftcore:item_basic_moon>*9:               <galacticraftcore:basic_block_core:12>,
    <galacticraftplanets:item_basic_mars:2>*9:          <galacticraftplanets:mars:8>,
    <galacticraftplanets:item_basic_asteroids>*9:       <galacticraftplanets:asteroids_block:7>,
    <goodnightsleep:zitrite_ingot>*9:                   <goodnightsleep:zitrite_block>,
    <enderio:item_alloy_ingot:7>*9:                     <enderio:block_alloy:7>,
    <enderio:item_alloy_ingot:8>*9:                     <enderio:block_alloy:8>,
    <enderio:item_alloy_ingot:9>*9:                     <enderio:block_alloy:9>,
    <enderio:item_alloy_endergy_ingot>*9:               <enderio:block_alloy_endergy>,
    <enderio:item_alloy_endergy_ingot:1>*9:             <enderio:block_alloy_endergy:1>,
    <enderio:item_alloy_endergy_ingot:2>*9:             <enderio:block_alloy_endergy:2>,
    <enderio:item_alloy_endergy_ingot:3>*9:             <enderio:block_alloy_endergy:3>,
    <enderio:item_alloy_endergy_ingot:4>*9:             <enderio:block_alloy_endergy:4>,
    <enderio:item_alloy_endergy_ingot:5>*9:             <enderio:block_alloy_endergy:5>,
    <enderio:item_alloy_endergy_ingot:6>*9:             <enderio:block_alloy_endergy:6>,
    <extendedcrafting:material>*9:                      <extendedcrafting:storage>,
    <extendedcrafting:material:24>*9:                   <extendedcrafting:storage:3>,
    <extendedcrafting:material:32>*9:                   <extendedcrafting:storage:4>,
    <extendedcrafting:material:36>*9:                   <extendedcrafting:storage:5>,
    <extendedcrafting:material:48>*9:                   <extendedcrafting:storage:7>,
    <extraplanets:ingot_mercury>*9:                     <extraplanets:mercury:7>,
    <extraplanets:tier4_items:5>*9:                     <extraplanets:mercury:11>,
    <extraplanets:ingot_uranium>*9:                     <extraplanets:ceres:7>,
    <extraplanets:tier5_items:5>*9:                     <extraplanets:jupiter:8>,
    <extraplanets:tier6_items:5>*9:                     <extraplanets:saturn:7>,
    <extraplanets:tier7_items:5>*9:                     <extraplanets:uranus:4>,
    <extraplanets:tier8_items:5>*9:                     <extraplanets:neptune:7>,
    <extraplanets:tier9_items:5>*9:                     <extraplanets:pluto:7>,
    <extraplanets:tier10_items:5>*9:                    <extraplanets:eris:7>,
    <extrautils2:ingredients:11>*9:                     <extrautils2:simpledecorative:1>,
    <plustic:mirioningot>*9:                            <plustic:mirionblock>,
    <psi:material:1>*9:                                 <psi:psi_decorative:1>,
    <psi:material:3>*9:                                 <psi:psi_decorative:7>,
    <psi:material:4>*9:                                 <psi:psi_decorative:8>,
    <sgcraft:naquadahingot>*9:                          <sgcraft:naquadahblock>,
    <silentgems:craftingmaterial:30>*9:                 <silentgems:miscblock:4>,
    <theaurorian:ceruleaningot>*9:                      <theaurorian:ceruleanblock>,
    <theaurorian:moonstoneingot>*9:                     <theaurorian:moonstoneblock>,
    <thebetweenlands:items_misc:11>*9:                  <thebetweenlands:syrmorite_block>,
    <immersiveengineering:metal:5>*9:                   <immersiveengineering:storage:5>,
    <lightningcraft:ingot>*9:                           <lightningcraft:metal_block>,
    <lightningcraft:ingot:1>*9:                         <lightningcraft:metal_block:1>,
    <lightningcraft:ingot:2>*9:                         <lightningcraft:metal_block:2>,
    <lockyzextradimensionsmod:interdimensionalingot>*9: <lockyzextradimensionsmod:interdimensionalblock>,
    <lockyzextradimensionsmod:cloudingot>*9:            <lockyzextradimensionsmod:cloudblock>,
    <mekanism:ingot>*9:                                 <mekanism:basicblock:2>,
    <mekanism:ingot:1>*9:                               <mekanism:basicblock>,
    <mekanism:ingot:3>*9:                               <mekanism:basicblock:4>,
    <midnight:tenebrum_ingot>*9:                        <midnight:tenebrum_block>,
    <midnight:nagrilite_ingot>*9:                       <midnight:nagrilite_block>,
    <mist:niobium_ingot>*9:                             <mist:niobium_block>,
    <moreplanets:illenium_ingot>*9:                     <moreplanets:illenium_block>,
    <moreplanets:glowing_iron_ingot>*9:                 <moreplanets:glowing_iron_block>,
    <moreplanets:diremsium_ingot>*9:                    <moreplanets:diremsium_block>,
    <moreplanets:zyptorium_ingot>*9:                    <moreplanets:zyptorium_block>,
    <mysticalagradditions:insanium:2>*9:                <mysticalagradditions:storage:1>,
    <mysticalagriculture:crafting:32>*9:                <mysticalagriculture:ingot_storage>,
    <mysticalagriculture:crafting:33>*9:                <mysticalagriculture:ingot_storage:1>,
    <mysticalagriculture:crafting:34>*9:                <mysticalagriculture:ingot_storage:2>,
    <mysticalagriculture:crafting:35>*9:                <mysticalagriculture:ingot_storage:3>,
    <mysticalagriculture:crafting:36>*9:                <mysticalagriculture:ingot_storage:4>,
    <mysticalagriculture:crafting:37>*9:                <mysticalagriculture:ingot_storage:5>,
    <mysticalagriculture:crafting:38>*9:                <mysticalagriculture:ingot_storage:6>,
    <plustic:alumiteingot>*9:                           <plustic:alumiteblock>,
    <plustic:osgloglasingot>*9:                         <plustic:osgloglasblock>,
    <plustic:osmiridiumingot>*9:                        <plustic:osmiridiumblock>,
    <zollerngalaxy:ingotcobalt>*9:                      <zollerngalaxy:cobaltblock>,
    <zollerngalaxy:ingotevenium>*9:                     <zollerngalaxy:eveniumblock>,
    <zollerngalaxy:shinestoneingot>*9:                  <zollerngalaxy:shinestonecrystal>,
    <zollerngalaxy:chargiumingot>*9:                    <zollerngalaxy:chargiumblock>,
    <zollerngalaxy:fueltoniumingot>*9:                  <zollerngalaxy:fueltoniumblock>,
    <zollerngalaxy:amaranthingot>*9:                    <zollerngalaxy:amaranthblock>,
    <zollerngalaxy:zollerniumingot>*9:                  <zollerngalaxy:zollerniumblock>,
    <zollerngalaxy:etriumingot>*9:                      <zollerngalaxy:perdetriumblock>,
    <thermalfoundation:material:130>*9:                 <thermalfoundation:storage:2>,
    <thermalfoundation:material:131>*9:                 <thermalfoundation:storage:3>,
    <thermalfoundation:material:163>*9:                 <thermalfoundation:storage_alloy:3>,
    <thermalfoundation:material:129>*9:                 <thermalfoundation:storage:1>,
    <thermalfoundation:material:128>*9:                 <thermalfoundation:storage>,
    <thebetweenlands:octine_ingot>*9:                   <thebetweenlands:octine_block>,
    <thermalfoundation:material:132>*9:                 <thermalfoundation:storage:4>,
    <thermalfoundation:material:133>*9:                 <thermalfoundation:storage:5>,
    <thermalfoundation:material:134>*9:                 <thermalfoundation:storage:6>,
    <thermalfoundation:material:135>*9:                 <thermalfoundation:storage:7>,
    <thermalfoundation:material:136>*9:                 <thermalfoundation:storage:8>,
    <thermalfoundation:material:160>*9:                 <thermalfoundation:storage_alloy>,
    <thermalfoundation:material:161>*9:                 <thermalfoundation:storage_alloy:1>,
    <thermalfoundation:material:162>*9:                 <thermalfoundation:storage_alloy:2>,
    <thermalfoundation:material:164>*9:                 <thermalfoundation:storage_alloy:4>,
    <thermalfoundation:material:165>*9:                 <thermalfoundation:storage_alloy:5>,
    <thermalfoundation:material:166>*9:                 <thermalfoundation:storage_alloy:6>,
    <thermalfoundation:material:167>*9:                 <thermalfoundation:storage_alloy:7>,
    <tconstruct:ingots>*9:                              <tconstruct:metal>,
    <tconstruct:ingots:1>*9:                            <tconstruct:metal:1>,
    <tconstruct:ingots:2>*9:                            <tconstruct:metal:2>,
    <tconstruct:ingots:3>*9:                            <tconstruct:metal:3>,
    <tconstruct:ingots:4>*9:                            <tconstruct:metal:4>,
    <tconstruct:ingots:5>*9:                            <tconstruct:metal:5>,
    <tp:lapis_ingot>*9:                                 <minecraft:lapis_block>,
    <tp:reinforced_obsidian_ingot>*9:                   <tp:reinforced_obsidian>,
    <zollerngalaxy:ingotviri>*9:                        <zollerngalaxy:viriblock>,
    <minecraft:diamond>*9:                              <minecraft:diamond_block>,
    <minecraft:emerald>*9:                              <minecraft:emerald_block>,
    <minecraft:redstone>*9:                             <minecraft:redstone_block>,
    <psi:material:2>*9:                                 <psi:psi_decorative:2>,
    <zollerngalaxy:shiniumingot>*9:                     <zollerngalaxy:shiniumblock>,
    <zollerngalaxy:zucriteingot>*9:                     <zollerngalaxy:zucriteblock>,
    <zollerngalaxy:rhodiumingot>*9:                     <zollerngalaxy:rhodiumblock>,
    <zollerngalaxy:radiumingot>*9:                      <zollerngalaxy:radiumblock>,
    <actuallyadditions:item_crystal>*9:                 <actuallyadditions:block_crystal>,
    <actuallyadditions:item_crystal:1>*9:               <actuallyadditions:block_crystal:1>,
    <actuallyadditions:item_crystal:2>*9:               <actuallyadditions:block_crystal:2>,
    <actuallyadditions:item_crystal:3>*9:               <actuallyadditions:block_crystal:3>,
    <actuallyadditions:item_crystal:4>*9:               <actuallyadditions:block_crystal:4>,
    <actuallyadditions:item_crystal:5>*9:               <actuallyadditions:block_crystal:5>,
    <actuallyadditions:item_crystal_empowered>*9:       <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:item_crystal_empowered:1>*9:     <actuallyadditions:block_crystal_empowered:1>,
    <actuallyadditions:item_crystal_empowered:2>*9:     <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:item_crystal_empowered:3>*9:     <actuallyadditions:block_crystal_empowered:3>,
    <actuallyadditions:item_crystal_empowered:4>*9:     <actuallyadditions:block_crystal_empowered:4>,
    <actuallyadditions:item_crystal_empowered:5>*9:     <actuallyadditions:block_crystal_empowered:5>,
    <industrialforegoing:tinydryrubber>*9:              <industrialforegoing:dryrubber>,
    <minecraft:obsidian>*9:                             <overloaded:compressed_obsidian>,
    <cavern:cave_item:2>*9:                             <cavern:cave_block:6>,
    <silentgems:gem:8>*9:                               <silentgems:gemblock:8>,
    <silentgems:gem:6>*9:                               <silentgems:gemblock:6>,
    <silentgems:craftingmaterial:3>*9:                  <silentgems:craftingmaterial>,
    <naturesaura:infused_iron>*9:                       <naturesaura:infused_iron_block>,
    <minecraft:coal:1>*9:                               <thermalfoundation:storage_resource>,
    <silentgems:craftingmaterial>*9:                    <silentgems:miscblock>,
    <silentgems:craftingmaterial:1>*9:                  <silentgems:miscblock:1>,
    <silentgems:craftingmaterial:2>*9:                  <silentgems:miscblock:2>,
    <cavern:cave_item>*9:                               <cavern:cave_block:1>,
    <zollerngalaxy:aquamarine>*9:                       <zollerngalaxy:aquamarineblock>,
    <minecraft:flint>*4:                                <tp:flint_ingot>,
    <lockyzextradimensionsmod:alternategem>*9:          <lockyzextradimensionsmod:alternateblock>,
    <tp:flint_ingot>*9:                                 <tp:flint_block>,
    <appliedenergistics2:material>*9:                   <jaopca:block.certus_quartz>,
    <appliedenergistics2:material:1>*9:                 <jaopca:block.charged_certus_quartz>,
    <avaritia:resource:6>*9:                            <avaritia:block_resource:1>,
    <avaritia:resource:1>*9:                            <avaritia:block_resource:2>,
    <botania:tinypotato>*9:                             <botania_tweaks:compressed_tiny_potato_1>,
    <botania_tweaks:compressed_tiny_potato_1>*9:        <botania_tweaks:compressed_tiny_potato_2>,
    <botania_tweaks:compressed_tiny_potato_2>*9:        <botania_tweaks:compressed_tiny_potato_3>,
    <botania_tweaks:compressed_tiny_potato_3>*9:        <botania_tweaks:compressed_tiny_potato_4>,
    <botania_tweaks:compressed_tiny_potato_4>*9:        <botania_tweaks:compressed_tiny_potato_5>,
    <botania_tweaks:compressed_tiny_potato_5>*9:        <botania_tweaks:compressed_tiny_potato_6>,
    <botania_tweaks:compressed_tiny_potato_6>*9:        <botania_tweaks:compressed_tiny_potato_7>,
    <botania_tweaks:compressed_tiny_potato_7>*9:        <botania_tweaks:compressed_tiny_potato_8>,
    <extendedcrafting:material:40>*9:                   <extendedcrafting:storage:6>,
    <draconicevolution:chaos_shard:3>*9:                <draconicevolution:chaos_shard:2>,
    <draconicevolution:chaos_shard:2>*9:                <draconicevolution:chaos_shard:1>,
    <draconicevolution:chaos_shard:1>*9:                <draconicevolution:chaos_shard>,
    <minecraft:cobblestone>*9:                          <overloaded:compressed_cobblestone>,
    <minecraft:sand>*9:                                 <overloaded:compressed_sand>,
    <minecraft:dirt>*9:                                 <overloaded:compressed_dirt>,
    <minecraft:gravel>*9:                               <overloaded:compressed_gravel>,
    <minecraft:stone>*9:                                <overloaded:compressed_stone>,
    <minecraft:netherrack>*9:                           <overloaded:compressed_netherrack>,
    <mysticalagriculture:crafting>*9:                   <mysticalagriculture:storage>,
    <mysticalagriculture:crafting:1>*9:                 <mysticalagriculture:storage:1>,
    <mysticalagriculture:crafting:2>*9:                 <mysticalagriculture:storage:2>,
    <mysticalagriculture:crafting:3>*9:                 <mysticalagriculture:storage:3>,
    <mysticalagriculture:crafting:4>*9:                 <mysticalagriculture:storage:4>,
    <mysticalagradditions:insanium>*9:                  <mysticalagradditions:storage>
};

compressed(blockMap, <overloaded:compressed_obsidian>.definition);
compressed(blockMap, <overloaded:compressed_cobblestone>.definition);
compressed(blockMap, <overloaded:compressed_stone>.definition);
compressed(blockMap, <overloaded:compressed_netherrack>.definition);
compressed(blockMap, <overloaded:compressed_gravel>.definition);
compressed(blockMap, <overloaded:compressed_sand>.definition);
compressed(blockMap, <overloaded:compressed_dirt>.definition);

function compressed(map as IItemStack[IItemStack], def as IItemDefinition) {
    for meta in 0 .. 15 {
        map[def.makeStack(meta)*9] = def.makeStack(meta+1);
    }
}

for ingot, block in blockMap {
    val compressName as string = "compressTo"+block.definition.id+block.metadata;
    val splitName as string = "splitTo"+ingot.definition.id+ingot.metadata;
    factoryRPF.start()
        .name(compressName)
        .duration(10)
        .perTick(true)
        .inputFE(1000)
        .perTick(false)
        .inputItems(ingot)
        .outputItems(block)
        .buildAndRegister();
    factoryRPS.start()
        .name(compressName)
        .duration(5)
        .perTick(true)
        .inputFE(50000)
        .perTick(false)
        .inputItems(ingot)
        .outputItems(block)
        .buildAndRegister();
    factoryRPT.start()
        .name(compressName)
        .duration(1)
        .inputFE(1000000)
        .inputItems(ingot)
        .outputItems(block)
        .buildAndRegister();

    factoryRPF.start()
        .name(splitName)
        .duration(10)
        .perTick(true)
        .inputLE(10)
        .perTick(false)
        .inputItems(block)
        .outputItems(ingot)
        .buildAndRegister();
    factoryRPS.start()
        .name(splitName)
        .duration(5)
        .perTick(true)
        .inputLE(50)
        .perTick(false)
        .inputItems(block)
        .outputItems(ingot)
        .buildAndRegister();
    factoryRPT.start()
        .name(splitName)
        .duration(1)
        .inputLE(1000)
        .inputItems(block)
        .outputItems(ingot)
        .buildAndRegister();
}

factoryRPS.start()
    .name("compressTo"+<contenttweaker:affixed_machine_parts>.definition.id+"0")
    .duration(100)
    .perTick(true)
    .inputFE(10000)
    .perTick(false)
    .inputItems(<contenttweaker:machine_parts>*9)
    .outputItems(<contenttweaker:affixed_machine_parts>)
    .buildAndRegister();

factoryRPT.start()
    .name("compressTo"+<contenttweaker:affixed_machine_parts>.definition.id+"0")
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