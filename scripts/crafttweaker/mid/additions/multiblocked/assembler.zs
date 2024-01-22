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

var definition as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:assembler");

val assemblerRP = RecipeMap("assembler_recipes") as RecipeMap;
RecipeMap.register(assemblerRP);

//tree fluid extractor
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<overloaded:compressed_stone:2>*4,<thermalfoundation:material:32>*4,<thermalfoundation:material:24>*2,<randomthings:plate_extraction>,<thermaldynamics:servo>)
    .outputItems(<industrialforegoing:tree_fluid_extractor>)
    .buildAndRegister();

//latex processing unit
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<moreplates:redstone_alloy_plate>*2,<thermalfoundation:material:32>*4,<thermalfoundation:material:24>*2,<openblocks:tank>,<thermaldynamics:duct_16>)
	.inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:latex_processing_unit>)
    .buildAndRegister();

//resource fisher
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>*4,<thermalfoundation:material:32>*4,<thermalfoundation:material:24>*2,<xreliquary:rod_of_lyssa>,<adhooks:pudge_hook>)
	.inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:water_resources_collector>)
    .buildAndRegister();

//spores recreator
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:mycelium>,<biomesoplenty:grass:8>,<midnight:midnight_mycelium>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:spores_recreator>)
    .buildAndRegister();

//animal rancher
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:bucket>,<aether:arkenium_shears>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:animal_resource_harvester>)
    .buildAndRegister();

//animal feeder
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:wheat>,<minecraft:carrot>,<minecraft:beef>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:animal_stock_increaser>)
    .buildAndRegister();

//animal baby separator
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<opencomputers:upgrade:20>,<minecraft:slime_ball>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:animal_independence_selector>)
    .buildAndRegister();

//animal grower
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:wheat>,<minecraft:carrot>,<minecraft:beef>,<actuallyadditions:item_growth_ring>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:animal_growth_increaser>)
    .buildAndRegister();

//plant sower
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:wheat_seeds>,<minecraft:melon_seeds>,<actuallyadditions:item_misc:24>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:crop_sower>)
    .buildAndRegister();

//plant fertilizer
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<minecraft:dye:15>,<silentgems:glowrosefertilizer>,<botania:fertilizer>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:crop_enrich_material_injector>)
    .buildAndRegister();

//plant gatherer
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<calculator:sickle>,<moreplates:emerald_plate>,<actuallyadditions:block_giant_chest_large>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:crop_recolector>)
    .buildAndRegister();

//hydrator
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<cookingforblockheads:sink>,<thermalexpansion:device>,<thebetweenlands:compost_block>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:hydrator>)
    .buildAndRegister();

//mob detector
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<botania:manadetector>,<enderio:block_alloy:3>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:mob_detector>)
    .buildAndRegister();

//mob crusher
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<extrautils2:spike_diamond>,<calculator:flawlessassembly>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:mob_relocator>)
    .buildAndRegister();

//bioreactor
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<randomthings:ingredient:3>,<botania:livingwood>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:bioreactor>)
    .buildAndRegister();

//protein reactor
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<theaurorian:strangemeat>,<botania:livingwood>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:protein_reactor>)
    .buildAndRegister();

//dye mixer
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<actuallyadditions:item_color_lens>,<randomthings:dyeingmachine>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:dye_mixer>)
    .buildAndRegister();

//fluid crafter
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<openblocks:tank>,<minecraft:bucket>)
    .inputFluids(<liquid:latex>*1000)
    .outputItems(<industrialforegoing:fluid_crafter>)
    .buildAndRegister();

//material stonework factory
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(300)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<calculator:endforgedpickaxe>,<thermalexpansion:machine>)
    .inputFluids(<liquid:latex>*4000)
    .outputItems(<industrialforegoing:material_stonework_factory>)
    .buildAndRegister();

//hopping bonsai pot
assemblerRP.start()
	.duration(200)
	.perTick(true)
	.inputFE(1000)
	.perTick(false)
    .inputItems(<bonsaitrees:bonsaipot>,<minecraft:hopper>,<natura:blaze_hopper>,<naturesaura:grated_chute>,<naturesaura:hopper_upgrade>,<botania:floatingspecialflower>.withTag({type: "hopperhock"}),<darkutils:ender_hopper>,<openblocks:vacuum_hopper>,<enderio:block_impulse_hopper>)
    .inputFluids(<liquid:clay>*2880)
    .outputItems(<bonsaitrees:bonsaipot:1>)
    .buildAndRegister();

//protein generator
assemblerRP.start()
	.duration(900)
	.perTick(true)
	.inputFE(600)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<theaurorian:strangemeat>,<botania:livingwood>,<galacticraftcore:item_basic_moon:2>)
    .inputFluids(<liquid:if.protein>*1000)
    .outputItems(<industrialforegoing:protein_generator>)
    .buildAndRegister();

//zombie generator
assemblerRP.start()
	.duration(900)
	.perTick(true)
	.inputFE(600)
	.perTick(false)
    .inputItems(<moreplates:electrical_steel_plate>,<enderio:block_fused_quartz>,<enderio:item_material:40>,<galacticraftcore:item_basic_moon:2>)
    .inputFluids(<liquid:nutrient_distillation>*1000)
    .outputItems(<enderio:block_zombie_generator>)
    .buildAndRegister();

//frank'n'zombie generator
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(750)
	.perTick(false)
    .inputItems(<moreplates:soularium_plate>,<enderio:block_fused_quartz>,<enderio:item_material:42>,<enderio:block_zombie_generator>,<galacticraftcore:item_basic_moon:2>)
    .inputFluids(<liquid:nutrient_distillation>*1000)
    .outputItems(<enderio:block_franken_zombie_generator>)
    .buildAndRegister();

//ender generator
assemblerRP.start()
	.duration(900)
	.perTick(true)
	.inputFE(1500)
	.perTick(false)
    .inputItems(<moreplates:soularium_plate>,<enderio:block_fused_quartz>,<enderio:item_material:43>,<enderio:block_franken_zombie_generator>,<galacticraftcore:item_basic_moon:2>)
    .inputFluids(<liquid:ender_distillation>*1000)
    .outputItems(<enderio:block_ender_generator>)
    .buildAndRegister();

//factory core mk 1
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
    .inputItems(<thermalexpansion:device:10>,<mekanism:speedupgrade>,<artisanautomation:upgrade_speed>,<enderio:item_extract_speed_upgrade>,<opencomputers:upgrade:20>)
    .inputFluids(<liquid:empoweredoil>*8000)
    .outputItems(<contenttweaker:factory_core_one>)
    .buildAndRegister();

//factory core mk 2
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(100000)
	.perTick(false)
    .inputItems(<contenttweaker:factory_core_one>,<mekanism:speedupgrade>,<artisanautomation:upgrade_speed>,<enderio:item_extract_speed_upgrade>,<opencomputers:upgrade:20>)
    .inputFluids(<liquid:empoweredoil>*8000)
    .outputItems(<contenttweaker:factory_core_two>)
    .buildAndRegister();

//factory core mk 3
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(1000000)
	.perTick(false)
    .inputItems(<contenttweaker:factory_core_two>,<mekanism:speedupgrade>,<artisanautomation:upgrade_speed>,<enderio:item_extract_speed_upgrade>,<opencomputers:upgrade:20>)
    .inputFluids(<liquid:empoweredoil>*8000)
    .outputItems(<contenttweaker:factory_core_three>)
    .buildAndRegister();

//oil core mk 1
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
    .inputItems(<galacticraftcore:refinery>,<thermalfoundation:material:1024>,<thermalfoundation:material:833>,<mist:filter_coal_block>)
    .inputFluids(<liquid:superhot_magma>*8000)
    .outputItems(<contenttweaker:oil_core_one>)
    .buildAndRegister();

//oil core mk 2
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(100000)
	.perTick(false)
    .inputItems(<contenttweaker:oil_core_one>,<extrabees:honey_comb:3>,<thermalfoundation:material:1024>,<thermalfoundation:material:833>,<mist:filter_coal_block>)
    .inputFluids(<liquid:superhot_magma>*8000)
    .outputItems(<contenttweaker:oil_core_two>)
    .buildAndRegister();

//oil core mk 3
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(1000000)
	.perTick(false)
    .inputItems(<contenttweaker:oil_core_two>,<extrabees:honey_comb:3>,<thermalfoundation:material:1024>,<thermalfoundation:material:833>,<mist:filter_coal_block>)
    .inputFluids(<liquid:superhot_magma>*8000)
    .outputItems(<contenttweaker:oil_core_three>)
    .buildAndRegister();

//psionic core mk 1
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
    .inputItems(<naturesaura:generator_limit_remover>,<psi:cad_assembly:3>,<psi:cad_assembly:4>,<botania:manaresource:14>,<botania:rune:8>)
    .inputFluids(<liquid:mana>*8000)
    .outputItems(<contenttweaker:psionic_core_one>)
    .buildAndRegister();

//psionic core mk 2
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(100000)
	.perTick(false)
    .inputItems(<contenttweaker:psionic_core_one>,<psi:cad_assembly:3>,<psi:cad_assembly:4>,<botania:manaresource:14>,<botania:rune:8>)
    .inputFluids(<liquid:mana>*8000)
    .outputItems(<contenttweaker:psionic_core_two>)
    .buildAndRegister();

//psionic core mk 3
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(1000000)
	.perTick(false)
    .inputItems(<contenttweaker:psionic_core_two>,<psi:cad_assembly:3>,<psi:cad_assembly:4>,<botania:manaresource:14>,<botania:rune:8>)
    .inputFluids(<liquid:mana>*8000)
    .outputItems(<contenttweaker:psionic_core_three>)
    .buildAndRegister();

//mob slaughter factory
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(15000)
	.perTick(false)
    .inputItems(<industrialforegoing:mob_relocator>,<actuallyadditions:block_player_interface>,<mob_grinding_utils:saw>,<aoa3:sticky_slime>,<aoa3:pink_haven_leaves>,<aoa3:pink_coral>,<industrialforegoing:plastic>)
    .inputFluids(<liquid:latex>*10000)
    .outputItems(<industrialforegoing:mob_slaughter_factory>)
    .buildAndRegister();

//fluid sieving machine
assemblerRP.start()
	.duration(600)
	.perTick(true)
	.inputFE(150)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<thermalfoundation:material:32>,<thermalfoundation:material:24>,<tconstruct:slime_congealed>,<tconstruct:slime_congealed:1>,<tconstruct:slime_congealed:2>,<tconstruct:slime_congealed:4>)
    .inputFluids(<liquid:if.pink_slime>*10000)
    .outputItems(<industrialforegoing:ore_sieve>)
    .buildAndRegister();

//machine parts
assemblerRP.start()
	.duration(200)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
    .inputItems(<aoa3:scrap_metal>*4)
    .outputItems(<contenttweaker:machine_parts>)
    .buildAndRegister();

//black hole tank
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(1666667)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>, <openblocks:tank>, <moreplanets:black_hole_fragments>)
    .outputItems(<industrialforegoing:black_hole_tank>)
    .buildAndRegister();

//range addon +1
assemblerRP.start()
	.duration(40)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(100)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*3,<enderio:item_material:64>,<overloaded:compressed_cobblestone:1>*3)
    .outputItems(<industrialforegoing:range_addon>)
    .buildAndRegister();

//range addon +2
assemblerRP.start()
	.duration(60)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(200)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>,<industrialforegoing:range_addon>,<actuallyadditions:item_crystal_empowered:1>*3)
    .outputItems(<industrialforegoing:range_addon:1>)
    .buildAndRegister();

//range addon +3
assemblerRP.start()
	.duration(80)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(300)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>,<industrialforegoing:range_addon:1>,<moreplates:empowered_enori_gear>)
    .outputItems(<industrialforegoing:range_addon:2>)
    .buildAndRegister();

//range addon +4
assemblerRP.start()
	.duration(100)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(400)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:2>,<jaopca:block.charged_certus_quartz>)
    .outputItems(<industrialforegoing:range_addon:3>)
    .buildAndRegister();

//range addon +5
assemblerRP.start()
	.duration(120)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(500)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:3>,<calculator:material:9>)
    .outputItems(<industrialforegoing:range_addon:4>)
    .buildAndRegister();

//range addon +6
assemblerRP.start()
	.duration(140)
	.perTick(true)
	.inputFluids(<liquid:latex>*5)
	.inputFE(600)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:4>,<thermalfoundation:coin:101>*6)
    .outputItems(<industrialforegoing:range_addon:5>)
    .buildAndRegister();

//range addon +7
assemblerRP.start()
	.duration(200)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1000)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*3,<industrialforegoing:range_addon:5>,<gaiadimension:chalcedony_block>)
    .outputItems(<industrialforegoing:range_addon:6>)
    .buildAndRegister();

//range addon +8
assemblerRP.start()
	.duration(220)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1100)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*3,<industrialforegoing:range_addon:6>,<botany:ceramic:25>)
    .outputItems(<industrialforegoing:range_addon:7>)
    .buildAndRegister();

//range addon +9
assemblerRP.start()
	.duration(240)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1200)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*3,<industrialforegoing:range_addon:7>,<silentgems:craftingmaterial:30>)
    .outputItems(<industrialforegoing:range_addon:8>)
    .buildAndRegister();

//range addon +10
assemblerRP.start()
	.duration(260)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1300)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*4,<industrialforegoing:range_addon:8>,<silentgems:gemsuper:8>)
    .outputItems(<industrialforegoing:range_addon:9>)
    .buildAndRegister();

//range addon +11
assemblerRP.start()
	.duration(280)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1400)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*4,<industrialforegoing:range_addon:9>,<moreplates:empowered_diamatine_gear>)
    .outputItems(<industrialforegoing:range_addon:10>)
    .buildAndRegister();

//range addon +12
assemblerRP.start()
	.duration(300)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(1500)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*4,<industrialforegoing:range_addon:10>,<moreplates:empowered_emeradic_gear>)
    .outputItems(<industrialforegoing:range_addon:11>)
    .buildAndRegister();

//adult filter
assemblerRP.start()
	.duration(200)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(500)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon>,<xlfoodmod:fried_egg>*3,<gaiadimension:chalcedony>*3)
    .outputItems(<industrialforegoing:adult_filter>)
    .buildAndRegister();

//leaf shearing addon
assemblerRP.start()
	.duration(200)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(500)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon>,<blue_skies:ventium_shears>,<gaiadimension:chalcedony>*3)
    .outputItems(<industrialforegoing:leaf_shearing>)
    .buildAndRegister();

//energy field provider
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(25000)
	.perTick(false)
    .inputItems(<teslacorelib:machine_case>,<industrialforegoing:plastic>,<moreplates:reinforced_iron_plate>,<moreplates:reinforced_iron_gear>,<randomthings:spectrecharger:2>,<extrautils2:interactionproxy>)
    .inputFluids(<liquid:latex>*5000)
    .outputItems(<industrialforegoing:energy_field_provider>)
    .buildAndRegister();

//energy field addon
assemblerRP.start()
	.duration(300)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(2500)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:6>,<actuallyadditions:item_battery_quadruple>,<silentgems:gemsuper:8>)
    .outputItems(<industrialforegoing:energy_field_addon>)
    .buildAndRegister();

//itemstack pull addon
assemblerRP.start()
	.duration(250)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(750)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:1>,<enderio:item_item_conduit>*2,<industrialforegoing:laser_lens:10>)
    .outputItems(<industrialforegoing:itemstack_transfer_addon_pull>)
    .buildAndRegister();

//itemstack push addon
assemblerRP.start()
	.duration(250)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(750)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:1>,<enderio:item_item_conduit>*2,<industrialforegoing:laser_lens:2>)
    .outputItems(<industrialforegoing:itemstack_transfer_addon_push>)
    .buildAndRegister();

//fluid pull addon
assemblerRP.start()
	.duration(250)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(750)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:1>,<enderio:item_liquid_conduit>*2,<industrialforegoing:laser_lens:11>)
    .outputItems(<industrialforegoing:fluid_transfer_addon_pull>)
    .buildAndRegister();

//fluid push addon
assemblerRP.start()
	.duration(250)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(750)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:1>,<enderio:item_liquid_conduit>*2,<industrialforegoing:laser_lens:3>)
    .outputItems(<industrialforegoing:fluid_transfer_addon_push>)
    .buildAndRegister();

//fortune addon
assemblerRP.start()
	.duration(300)
	.perTick(true)
	.inputFluids(<liquid:latex>*10)
	.inputFE(2000)
	.perTick(false)
    .inputItems(<industrialforegoing:plastic>*2,<industrialforegoing:range_addon:3>,<actuallyadditions:item_drill_upgrade_fortune_ii>,<moreplates:empowered_emeradic_gear>)
    .outputItems(<industrialforegoing:fortune_addon>)
    .buildAndRegister();

//5 research skill credit 
assemblerRP.start()
	.duration(1200)
	.perTick(true)
	.inputFE(10000)
	.perTick(false)
    .inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 8}),<contenttweaker:mek_wall>)
    .outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 5, skill: "research"}))
    .buildAndRegister();

var assembler = definition as ControllerDefinition;
assembler.recipeMap = assemblerRP;