#loader multiblocked

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.Recipe;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.RecipeMap;

val lightningRPF = RecipeMap("lightning_infuser_mk_1_recipes") as RecipeMap;
RecipeMap.register(lightningRPF);

val lightningRPS = RecipeMap("lightning_infuser_mk_2_recipes") as RecipeMap;
RecipeMap.register(lightningRPS);

val lightningRPT = RecipeMap("lightning_infuser_mk_3_recipes") as RecipeMap;
RecipeMap.register(lightningRPT);

val lightningRPO = RecipeMap("lightning_infuser_mk_4_recipes") as RecipeMap;
RecipeMap.register(lightningRPO);

val lightningRPI = RecipeMap("infinity_infuser_recipes") as RecipeMap;
RecipeMap.register(lightningRPI);

val inferiumBonus as IItemStack = <mysticalagriculture:crafting:29>.withTag({sievedWith: "inferium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 25}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 0}, "item.environmentaltech.ionite_crystal": {degradationChance: 100}, "item.environmentaltech.erodium_crystal": {degradationChance: 10}, "item.environmentaltech.litherite_crystal": {degradationChance: 1}, "item.environmentaltech.pladium_crystal": {degradationChance: 50}}});
val prudentiumBonus as IItemStack = <jaopca:dust.evil_metal>.withTag({sievedWith: "prudentium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 10}, "item.environmentaltech.aethium_crystal": {degradationChance: 100}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 50}, "item.environmentaltech.ionite_crystal": {degradationChance: 50}, "item.environmentaltech.erodium_crystal": {degradationChance: 1}, "item.environmentaltech.litherite_crystal": {degradationChance: 0}, "item.environmentaltech.pladium_crystal": {degradationChance: 25}}});
val intermediumBonus as IItemStack = <bigreactors:dustludicrite>.withTag({sievedWith: "intermedium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 1}, "item.environmentaltech.aethium_crystal": {degradationChance: 50}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 100}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 100}, "item.environmentaltech.ionite_crystal": {degradationChance: 25}, "item.environmentaltech.erodium_crystal": {degradationChance: 0}, "item.environmentaltech.litherite_crystal": {degradationChance: 50}, "item.environmentaltech.pladium_crystal": {degradationChance: 10}}});
val superiumBonus as IItemStack = <jaopca:dust.ultimate>.withTag({sievedWith: "superium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 0}, "item.environmentaltech.aethium_crystal": {degradationChance: 25}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 50}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 100}, "item.environmentaltech.ionite_crystal": {degradationChance: 10}, "item.environmentaltech.erodium_crystal": {degradationChance: 50}, "item.environmentaltech.litherite_crystal": {degradationChance: 100}, "item.environmentaltech.pladium_crystal": {degradationChance: 1}}});
val supremiumBonus as IItemStack = <projecte:item.pe_covalence_dust:2>.withTag({sievedWith: "supremium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 50}, "item.environmentaltech.aethium_crystal": {degradationChance: 10}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 25}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 50}, "item.environmentaltech.ionite_crystal": {degradationChance: 1}, "item.avaritia:endest_pearl": {degradationChance: 100}, "item.environmentaltech.erodium_crystal": {degradationChance: 100}, "item.environmentaltech.pladium_crystal": {degradationChance: 0}}});
val insaniumBonus as IItemStack = <jaopca:dust.infinity>.withTag({sievedWith: "insanium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 100}, "item.resource.infinity_catalyst": {degradationChance: 100}, "item.environmentaltech.aethium_crystal": {degradationChance: 1}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 10}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 25}, "item.environmentaltech.ionite_crystal": {degradationChance: 0}, "item.avaritia:endest_pearl": {degradationChance: 50}, "item.environmentaltech.pladium_crystal": {degradationChance: 50}}});

lightningRPF.start()
	.duration(600)
	.inputLE(10)
	.inputItems(<ore:sand>,<lightningcraft:material:12>)
	.outputItems(<lightningcraft:under_sand>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(10)
	.inputItems(<ore:sand>,<ore:treeSapling>)
	.outputItems(<minecraft:deadbush>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(15)
	.inputItems(<ore:blockGravel>,<ore:sand>,<ore:dirt>,<ore:cofh:potion>)
	.outputItems(<minecraft:clay>*3)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(10)
	.inputItems(<ore:slimeball>,<ore:blockWool>)
	.outputItems(<minecraft:sponge>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(15)
	.inputItems(<minecraft:ice>*4)
	.outputItems(<minecraft:packed_ice>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(10)
	.inputItems(<ore:cobblestone>,<ore:vine>)
	.outputItems(<minecraft:mossy_cobblestone>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(10)
	.inputItems(<minecraft:book>*4,<ore:logWood>)
	.outputItems(<minecraft:bookshelf>*2)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(40)
	.inputItems(<ore:stoneDiorite>*2,<ore:stoneGranite>)
	.outputItems(<minecraft:quartz>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(50)
	.inputItems(<minecraft:coal>*4,<minecraft:coal_block>)
	.outputItems(<minecraft:diamond>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(75)
	.inputItems(<ore:crystalsPrismarine>*4,<ore:blockPrismarineDark>)
	.outputItems(<minecraft:emerald>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(30)
	.inputItems(<minecraft:iron_ingot>,<minecraft:gold_ingot>,<minecraft:diamond>)
	.outputItems(<lightningcraft:ingot>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(265)
	.inputItems(<ore:blockIron>,<ore:blockGold>,<ore:blockDiamond>)
	.outputItems(<lightningcraft:metal_block>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<ore:soulSand>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:soul_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<minecraft:rotten_flesh>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:zombie_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<ore:feather>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:feather_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<minecraft:ender_pearl>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ender_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<minecraft:blaze_rod>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:blaze_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(90)
	.inputItems(<ore:blockPackedIce>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ice_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(85)
	.inputItems(<lightningcraft:ingot>,<lightningcraft:stone_block>*2,<minecraft:ender_eye>*2)
	.outputItems(<lightningcraft:ingot:1>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(40)
	.inputItems(<minecraft:water_bucket>,<lightningcraft:material:5>*4)
	.outputItems(<minecraft:lava_bucket>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(15)
	.inputItems(<minecraft:cobblestone>,<lightningcraft:material:5>)
	.outputItems(<minecraft:netherrack>*2)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(25)
	.inputItems(<minecraft:brick_block>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_brick>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(20)
	.inputItems(<ore:seed>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_wart>*2)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(35)
	.inputItems(<lightningcraft:stone_block>,<lightningcraft:material:5>*2)
	.outputItems(<lightningcraft:stone_block:3>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(100)
	.inputItems(<minecraft:fire_charge>,<lightningcraft:material:5>,<ore:dustDiamond>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(40)
	.inputItems(<lightningcraft:material:13>,<lightningcraft:material:5>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(250)
	.inputItems(<lightningcraft:material:4>,<lightningcraft:material:5>*2,<ore:dustDiamond>,<lightningcraft:material:8>)
	.outputItems(<lightningcraft:material:9>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(50)
	.inputItems(<ore:dustElectricium>,<lightningcraft:material:12>*4)
	.outputItems(<lightningcraft:material:13>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(100)
	.inputItems(<lightningcraft:dust:2>,<lightningcraft:material:13>*4)
	.outputItems(<lightningcraft:material:14>*4)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(50)
	.inputItems(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<lightningcraft:material:5>*2,<minecraft:golden_carrot>*2)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}))
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(25)
	.inputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}),<ore:dustRedstone>*4)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}))
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(160)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>*2,<ore:nuggetNetherStar>,<lightningcraft:material:11>)
	.outputItems(<lightningcraft:ingot:2>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(360)
	.inputItems(<lightningcraft:sky_hammer>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hammer>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(300)
	.inputItems(<lightningcraft:sky_sword>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_sword>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(200)
	.inputItems(<lightningcraft:sky_hoe>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hoe>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(200)
	.inputItems(<enderio:item_material:54>,<enderio:item_material:52>,<galacticraftplanets:item_basic_mars:5>,<moreplates:refined_obsidian_plate>,<moreplates:refined_glowstone_plate>)
	.outputItems(<enderio:item_material:53>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(1000)
	.inputItems(<aoa3:ancient_rock>,<aoa3:smash_statue>,<aoa3:nethengeic_wither_statue>,<aoa3:corallus_statue>,<aoa3:king_bambambam_statue>)
	.outputItems(<aoa3:blank_realmstone>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(2500)
	.inputItems(<draconicevolution:draconium_dust>,<lightningcraft:under_sand>*2,<jaopca:dust.jade>)
	.outputItems(<draconicevolution:draconium_ingot>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(5000)
	.inputItems(<tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}),<draconicevolution:draconium_ingot>*2,<ore:gearDraconium>*2)
	.outputItems(<draconicevolution:draconic_core>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(15000)
	.inputItems(<overloaded:nether_star_block>,<draconicevolution:draconic_core>*2,<tp:colored_glowstone:9>*2)
	.outputItems(<draconicevolution:wyvern_core>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(5000)
	.inputItems(<contenttweaker:swamp_key>,<extraplanets:neptune:10>*4)
	.outputItems(<contenttweaker:neptunic_key>)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(10000)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}),<contenttweaker:divine_large_circuit>)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}))
	.buildAndRegister();

lightningRPF.start()
	.duration(500)
	.inputLE(1000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:lonsdaleite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*64)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(2000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:litherite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*48)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(700)
	.inputLE(4000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:erodium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*32)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(800)
	.inputLE(8000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:kyronite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*24)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(900)
	.inputLE(16000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:pladium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*16)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(1000)
	.inputLE(24000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:ionite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*8)
	.outputItems(<mysticalagriculture:storage>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(500)
	.inputLE(1000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:lonsdaleite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(600)
	.inputLE(2000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:litherite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(700)
	.inputLE(4000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:erodium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(800)
	.inputLE(8000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:kyronite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*32)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(900)
	.inputLE(16000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:pladium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*24)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(1000)
	.inputLE(24000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:ionite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*16)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPF.start()
	.duration(1100)
	.inputLE(32000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:aethium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*8)
	.outputItems(<mysticalagriculture:storage:1>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(20)
	.inputItems(<ore:sand>,<lightningcraft:material:12>)
	.outputItems(<lightningcraft:under_sand>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(20)
	.inputItems(<ore:sand>,<ore:treeSapling>)
	.outputItems(<minecraft:deadbush>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(30)
	.inputItems(<ore:blockGravel>,<ore:sand>,<ore:dirt>,<ore:cofh:potion>)
	.outputItems(<minecraft:clay>*3)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(20)
	.inputItems(<ore:slimeball>,<ore:blockWool>)
	.outputItems(<minecraft:sponge>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(30)
	.inputItems(<minecraft:ice>*4)
	.outputItems(<minecraft:packed_ice>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(20)
	.inputItems(<ore:cobblestone>,<ore:vine>)
	.outputItems(<minecraft:mossy_cobblestone>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(20)
	.inputItems(<minecraft:book>*4,<ore:logWood>)
	.outputItems(<minecraft:bookshelf>*2)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(80)
	.inputItems(<ore:stoneDiorite>*2,<ore:stoneGranite>)
	.outputItems(<minecraft:quartz>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(100)
	.inputItems(<minecraft:coal>*4,<minecraft:coal_block>)
	.outputItems(<minecraft:diamond>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(150)
	.inputItems(<ore:crystalsPrismarine>*4,<ore:blockPrismarineDark>)
	.outputItems(<minecraft:emerald>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(60)
	.inputItems(<minecraft:iron_ingot>,<minecraft:gold_ingot>,<minecraft:diamond>)
	.outputItems(<lightningcraft:ingot>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(530)
	.inputItems(<ore:blockIron>,<ore:blockGold>,<ore:blockDiamond>)
	.outputItems(<lightningcraft:metal_block>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<ore:soulSand>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:soul_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<minecraft:rotten_flesh>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:zombie_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<ore:feather>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:feather_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<minecraft:ender_pearl>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ender_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<minecraft:blaze_rod>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:blaze_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(180)
	.inputItems(<ore:blockPackedIce>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ice_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(170)
	.inputItems(<lightningcraft:ingot>,<lightningcraft:stone_block>*2,<minecraft:ender_eye>*2)
	.outputItems(<lightningcraft:ingot:1>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(80)
	.inputItems(<minecraft:water_bucket>,<lightningcraft:material:5>*4)
	.outputItems(<minecraft:lava_bucket>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(30)
	.inputItems(<minecraft:cobblestone>,<lightningcraft:material:5>)
	.outputItems(<minecraft:netherrack>*2)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(50)
	.inputItems(<minecraft:brick_block>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_brick>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(40)
	.inputItems(<ore:seed>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_wart>*2)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(70)
	.inputItems(<lightningcraft:stone_block>,<lightningcraft:material:5>*2)
	.outputItems(<lightningcraft:stone_block:3>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(200)
	.inputItems(<minecraft:fire_charge>,<lightningcraft:material:5>,<ore:dustDiamond>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(80)
	.inputItems(<lightningcraft:material:13>,<lightningcraft:material:5>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(500)
	.inputItems(<lightningcraft:material:4>,<lightningcraft:material:5>*2,<ore:dustDiamond>,<lightningcraft:material:8>)
	.outputItems(<lightningcraft:material:9>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(100)
	.inputItems(<ore:dustElectricium>,<lightningcraft:material:12>*4)
	.outputItems(<lightningcraft:material:13>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(200)
	.inputItems(<lightningcraft:dust:2>,<lightningcraft:material:13>*4)
	.outputItems(<lightningcraft:material:14>*4)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(100)
	.inputItems(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<lightningcraft:material:5>*2,<minecraft:golden_carrot>*2)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}))
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(50)
	.inputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}),<ore:dustRedstone>*4)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}))
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(320)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>*2,<ore:nuggetNetherStar>,<lightningcraft:material:11>)
	.outputItems(<lightningcraft:ingot:2>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(720)
	.inputItems(<lightningcraft:sky_hammer>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hammer>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(600)
	.inputItems(<lightningcraft:sky_sword>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_sword>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(400)
	.inputItems(<lightningcraft:sky_hoe>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hoe>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(400)
	.inputItems(<enderio:item_material:54>,<enderio:item_material:52>,<galacticraftplanets:item_basic_mars:5>,<moreplates:refined_obsidian_plate>,<moreplates:refined_glowstone_plate>)
	.outputItems(<enderio:item_material:53>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(2000)
	.inputItems(<aoa3:ancient_rock>,<aoa3:smash_statue>,<aoa3:nethengeic_wither_statue>,<aoa3:corallus_statue>,<aoa3:king_bambambam_statue>)
	.outputItems(<aoa3:blank_realmstone>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(5000)
	.inputItems(<draconicevolution:draconium_dust>,<lightningcraft:under_sand>*2,<jaopca:dust.jade>)
	.outputItems(<draconicevolution:draconium_ingot>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(10000)
	.inputItems(<tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}),<draconicevolution:draconium_ingot>*2,<ore:gearDraconium>*2)
	.outputItems(<draconicevolution:draconic_core>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(30000)
	.inputItems(<overloaded:nether_star_block>,<draconicevolution:draconic_core>*2,<tp:colored_glowstone:9>*2)
	.outputItems(<draconicevolution:wyvern_core>)
	.buildAndRegister();

lightningRPS.start()
	.duration(300)
	.inputLE(10000)
	.inputItems(<contenttweaker:swamp_key>,<extraplanets:neptune:10>*4)
	.outputItems(<contenttweaker:neptunic_key>)
	.buildAndRegister();
	
lightningRPS.start()
	.duration(300)
	.inputLE(20000)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}),<contenttweaker:divine_large_circuit>)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}))
	.buildAndRegister();
	
lightningRPS.start()
	.duration(300)
	.inputLE(20000)
	.inputItems(<industrialforegoing:mob_slaughter_factory>, <draconicevolution:draconic_core>*2, <calculator:endforgedsword>, <calculator:reinforcedfurnace>)
	.outputItems(<draconicevolution:grinder>)
	.buildAndRegister();

lightningRPS.start()
	.duration(400)
	.inputLE(2000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:lonsdaleite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*96)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(500)
	.inputLE(4000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:litherite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*64)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(600)
	.inputLE(8000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:erodium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*48)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(700)
	.inputLE(16000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:kyronite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*32)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(800)
	.inputLE(24000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:pladium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*24)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(900)
	.inputLE(8000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:ionite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*16)
	.outputItems(<mysticalagriculture:storage>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(400)
	.inputLE(2000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:lonsdaleite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(500)
	.inputLE(4000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:litherite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(600)
	.inputLE(8000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:erodium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(700)
	.inputLE(16000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:kyronite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(800)
	.inputLE(24000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:pladium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(900)
	.inputLE(32000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:ionite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*24)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(1000)
	.inputLE(40000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:aethium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*16)
	.outputItems(<mysticalagriculture:storage:1>*128)
	.buildAndRegister();

lightningRPS.start()
	.duration(500)
	.inputLE(2000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:lonsdaleite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(600)
	.inputLE(4000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:litherite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(700)
	.inputLE(8000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:erodium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(800)
	.inputLE(16000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:kyronite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(900)
	.inputLE(24000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:pladium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(1000)
	.inputLE(32000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:ionite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*24)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(1100)
	.inputLE(40000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:aethium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*16)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPS.start()
	.duration(1200)
	.inputLE(50000)
	.inputItems(degradeChance(intermediumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),intermediumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*8)
	.outputItems(<mysticalagriculture:storage:2>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(30)
	.inputItems(<ore:sand>,<lightningcraft:material:12>)
	.outputItems(<lightningcraft:under_sand>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(30)
	.inputItems(<ore:sand>,<ore:treeSapling>)
	.outputItems(<minecraft:deadbush>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(45)
	.inputItems(<ore:blockGravel>,<ore:sand>,<ore:dirt>,<ore:cofh:potion>)
	.outputItems(<minecraft:clay>*3)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(30)
	.inputItems(<ore:slimeball>,<ore:blockWool>)
	.outputItems(<minecraft:sponge>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(45)
	.inputItems(<minecraft:ice>*4)
	.outputItems(<minecraft:packed_ice>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(30)
	.inputItems(<ore:cobblestone>,<ore:vine>)
	.outputItems(<minecraft:mossy_cobblestone>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(30)
	.inputItems(<minecraft:book>*4,<ore:logWood>)
	.outputItems(<minecraft:bookshelf>*2)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(120)
	.inputItems(<ore:stoneDiorite>*2,<ore:stoneGranite>)
	.outputItems(<minecraft:quartz>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(150)
	.inputItems(<minecraft:coal>*4,<minecraft:coal_block>)
	.outputItems(<minecraft:diamond>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(225)
	.inputItems(<ore:crystalsPrismarine>*4,<ore:blockPrismarineDark>)
	.outputItems(<minecraft:emerald>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(90)
	.inputItems(<minecraft:iron_ingot>,<minecraft:gold_ingot>,<minecraft:diamond>)
	.outputItems(<lightningcraft:ingot>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(795)
	.inputItems(<ore:blockIron>,<ore:blockGold>,<ore:blockDiamond>)
	.outputItems(<lightningcraft:metal_block>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<ore:soulSand>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:soul_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<minecraft:rotten_flesh>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:zombie_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<ore:feather>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:feather_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<minecraft:ender_pearl>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ender_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<minecraft:blaze_rod>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:blaze_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(270)
	.inputItems(<ore:blockPackedIce>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ice_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(255)
	.inputItems(<lightningcraft:ingot>,<lightningcraft:stone_block>*2,<minecraft:ender_eye>*2)
	.outputItems(<lightningcraft:ingot:1>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(120)
	.inputItems(<minecraft:water_bucket>,<lightningcraft:material:5>*4)
	.outputItems(<minecraft:lava_bucket>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(45)
	.inputItems(<minecraft:cobblestone>,<lightningcraft:material:5>)
	.outputItems(<minecraft:netherrack>*2)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(75)
	.inputItems(<minecraft:brick_block>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_brick>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(60)
	.inputItems(<ore:seed>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_wart>*2)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(105)
	.inputItems(<lightningcraft:stone_block>,<lightningcraft:material:5>*2)
	.outputItems(<lightningcraft:stone_block:3>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(300)
	.inputItems(<minecraft:fire_charge>,<lightningcraft:material:5>,<ore:dustDiamond>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(120)
	.inputItems(<lightningcraft:material:13>,<lightningcraft:material:5>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(750)
	.inputItems(<lightningcraft:material:4>,<lightningcraft:material:5>*2,<ore:dustDiamond>,<lightningcraft:material:8>)
	.outputItems(<lightningcraft:material:9>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(150)
	.inputItems(<ore:dustElectricium>,<lightningcraft:material:12>*4)
	.outputItems(<lightningcraft:material:13>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(300)
	.inputItems(<lightningcraft:dust:2>,<lightningcraft:material:13>*4)
	.outputItems(<lightningcraft:material:14>*4)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(150)
	.inputItems(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<lightningcraft:material:5>*2,<minecraft:golden_carrot>*2)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}))
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(75)
	.inputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}),<ore:dustRedstone>*4)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}))
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(480)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>*2,<ore:nuggetNetherStar>,<lightningcraft:material:11>)
	.outputItems(<lightningcraft:ingot:2>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(1080)
	.inputItems(<lightningcraft:sky_hammer>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hammer>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(900)
	.inputItems(<lightningcraft:sky_sword>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_sword>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(600)
	.inputItems(<lightningcraft:sky_hoe>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hoe>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(600)
	.inputItems(<enderio:item_material:54>,<enderio:item_material:52>,<galacticraftplanets:item_basic_mars:5>,<moreplates:refined_obsidian_plate>,<moreplates:refined_glowstone_plate>)
	.outputItems(<enderio:item_material:53>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(3000)
	.inputItems(<aoa3:ancient_rock>,<aoa3:smash_statue>,<aoa3:nethengeic_wither_statue>,<aoa3:corallus_statue>,<aoa3:king_bambambam_statue>)
	.outputItems(<aoa3:blank_realmstone>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(7500)
	.inputItems(<draconicevolution:draconium_dust>,<lightningcraft:under_sand>*2,<jaopca:dust.jade>)
	.outputItems(<draconicevolution:draconium_ingot>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(15000)
	.inputItems(<tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}),<draconicevolution:draconium_ingot>*2,<ore:gearDraconium>*2)
	.outputItems(<draconicevolution:draconic_core>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(45000)
	.inputItems(<overloaded:nether_star_block>,<draconicevolution:draconic_core>*2,<tp:colored_glowstone:9>*2)
	.outputItems(<draconicevolution:wyvern_core>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(15000)
	.inputItems(<contenttweaker:swamp_key>,<extraplanets:neptune:10>*4)
	.outputItems(<contenttweaker:neptunic_key>)
	.buildAndRegister();

lightningRPT.start()
	.duration(200)
	.inputLE(1500)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>,<minecraft:emerald>)
	.outputItems(<lightningcraft:material:11>)
	.buildAndRegister();
	
lightningRPT.start()
	.duration(200)
	.inputLE(30000)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}),<contenttweaker:divine_large_circuit>)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}))
	.buildAndRegister();
	
lightningRPT.start()
	.duration(200)
	.inputLE(30000)
	.inputItems(<industrialforegoing:mob_slaughter_factory>, <draconicevolution:draconic_core>*2, <calculator:endforgedsword>, <calculator:reinforcedfurnace>)
	.outputItems(<draconicevolution:grinder>)
	.buildAndRegister();

lightningRPT.start()
	.duration(300)
	.inputLE(4000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:lonsdaleite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*128)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(400)
	.inputLE(8000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:litherite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*96)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(500)
	.inputLE(16000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:erodium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*64)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(600)
	.inputLE(24000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:kyronite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*48)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(700)
	.inputLE(32000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:pladium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*32)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(800)
	.inputLE(40000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:ionite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*24)
	.outputItems(<mysticalagriculture:storage>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(300)
	.inputLE(4000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:lonsdaleite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*256)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(400)
	.inputLE(8000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:litherite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(500)
	.inputLE(16000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:erodium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(600)
	.inputLE(24000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:kyronite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(700)
	.inputLE(32000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:pladium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(800)
	.inputLE(40000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:ionite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*32)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(900)
	.inputLE(50000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:aethium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*24)
	.outputItems(<mysticalagriculture:storage:1>*256)
	.buildAndRegister();

lightningRPT.start()
	.duration(400)
	.inputLE(4000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:lonsdaleite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*256)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(500)
	.inputLE(8000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:litherite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(600)
	.inputLE(16000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:erodium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(700)
	.inputLE(24000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:kyronite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(800)
	.inputLE(32000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:pladium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(900)
	.inputLE(40000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:ionite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*32)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(1000)
	.inputLE(50000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:aethium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*24)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(1100)
	.inputLE(75000)
	.inputItems(degradeChance(intermediumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),intermediumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*16)
	.outputItems(<mysticalagriculture:storage:2>*128)
	.buildAndRegister();

lightningRPT.start()
	.duration(400)
	.inputLE(8000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:litherite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(500)
	.inputLE(16000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:erodium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(600)
	.inputLE(24000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:kyronite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(700)
	.inputLE(32000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:pladium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(800)
	.inputLE(40000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:ionite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*32)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(900)
	.inputLE(50000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:aethium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*24)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(1000)
	.inputLE(75000)
	.inputItems(degradeChance(superiumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),superiumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*16)
	.outputItems(<mysticalagriculture:storage:3>*64)
	.buildAndRegister();

lightningRPT.start()
	.duration(1100)
	.inputLE(100000) //TODO Too high
	.inputItems(degradeChance(superiumBonus,<contenttweaker:conglomerate_crystal>),superiumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*8)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(50)
	.inputItems(<ore:sand>,<lightningcraft:material:12>)
	.outputItems(<lightningcraft:under_sand>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(50)
	.inputItems(<ore:sand>,<ore:treeSapling>)
	.outputItems(<minecraft:deadbush>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(75)
	.inputItems(<ore:blockGravel>,<ore:sand>,<ore:dirt>,<ore:cofh:potion>)
	.outputItems(<minecraft:clay>*3)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(50)
	.inputItems(<ore:slimeball>,<ore:blockWool>)
	.outputItems(<minecraft:sponge>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(75)
	.inputItems(<minecraft:ice>*4)
	.outputItems(<minecraft:packed_ice>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(50)
	.inputItems(<ore:cobblestone>,<ore:vine>)
	.outputItems(<minecraft:mossy_cobblestone>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(50)
	.inputItems(<minecraft:book>*4,<ore:logWood>)
	.outputItems(<minecraft:bookshelf>*2)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(200)
	.inputItems(<ore:stoneDiorite>*2,<ore:stoneGranite>)
	.outputItems(<minecraft:quartz>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(250)
	.inputItems(<minecraft:coal>*4,<minecraft:coal_block>)
	.outputItems(<minecraft:diamond>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(375)
	.inputItems(<ore:crystalsPrismarine>*4,<ore:blockPrismarineDark>)
	.outputItems(<minecraft:emerald>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(150)
	.inputItems(<minecraft:iron_ingot>,<minecraft:gold_ingot>,<minecraft:diamond>)
	.outputItems(<lightningcraft:ingot>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1325)
	.inputItems(<ore:blockIron>,<ore:blockGold>,<ore:blockDiamond>)
	.outputItems(<lightningcraft:metal_block>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<ore:soulSand>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:soul_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<minecraft:rotten_flesh>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:zombie_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<ore:feather>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:feather_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<minecraft:ender_pearl>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ender_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<minecraft:blaze_rod>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:blaze_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(450)
	.inputItems(<ore:blockPackedIce>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ice_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(425)
	.inputItems(<lightningcraft:ingot>,<lightningcraft:stone_block>*2,<minecraft:ender_eye>*2)
	.outputItems(<lightningcraft:ingot:1>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(200)
	.inputItems(<minecraft:water_bucket>,<lightningcraft:material:5>*4)
	.outputItems(<minecraft:lava_bucket>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(75)
	.inputItems(<minecraft:cobblestone>,<lightningcraft:material:5>)
	.outputItems(<minecraft:netherrack>*2)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(125)
	.inputItems(<minecraft:brick_block>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_brick>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(100)
	.inputItems(<ore:seed>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_wart>*2)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(175)
	.inputItems(<lightningcraft:stone_block>,<lightningcraft:material:5>*2)
	.outputItems(<lightningcraft:stone_block:3>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(500)
	.inputItems(<minecraft:fire_charge>,<lightningcraft:material:5>,<ore:dustDiamond>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(200)
	.inputItems(<lightningcraft:material:13>,<lightningcraft:material:5>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1250)
	.inputItems(<lightningcraft:material:4>,<lightningcraft:material:5>*2,<ore:dustDiamond>,<lightningcraft:material:8>)
	.outputItems(<lightningcraft:material:9>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(250)
	.inputItems(<ore:dustElectricium>,<lightningcraft:material:12>*4)
	.outputItems(<lightningcraft:material:13>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(500)
	.inputItems(<lightningcraft:dust:2>,<lightningcraft:material:13>*4)
	.outputItems(<lightningcraft:material:14>*4)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(250)
	.inputItems(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<lightningcraft:material:5>*2,<minecraft:golden_carrot>*2)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}))
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(125)
	.inputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}),<ore:dustRedstone>*4)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}))
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(800)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>*2,<ore:nuggetNetherStar>,<lightningcraft:material:11>)
	.outputItems(<lightningcraft:ingot:2>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1800)
	.inputItems(<lightningcraft:sky_hammer>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hammer>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1500)
	.inputItems(<lightningcraft:sky_sword>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_sword>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1000)
	.inputItems(<lightningcraft:sky_hoe>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hoe>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(1000)
	.inputItems(<enderio:item_material:54>,<enderio:item_material:52>,<galacticraftplanets:item_basic_mars:5>,<moreplates:refined_obsidian_plate>,<moreplates:refined_glowstone_plate>)
	.outputItems(<enderio:item_material:53>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(5000)
	.inputItems(<aoa3:ancient_rock>,<aoa3:smash_statue>,<aoa3:nethengeic_wither_statue>,<aoa3:corallus_statue>,<aoa3:king_bambambam_statue>)
	.outputItems(<aoa3:blank_realmstone>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(12500)
	.inputItems(<draconicevolution:draconium_dust>,<lightningcraft:under_sand>*2,<jaopca:dust.jade>)
	.outputItems(<draconicevolution:draconium_ingot>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(25000)
	.inputItems(<tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}),<draconicevolution:draconium_ingot>*2,<ore:gearDraconium>*2)
	.outputItems(<draconicevolution:draconic_core>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(75000)
	.inputItems(<overloaded:nether_star_block>,<draconicevolution:draconic_core>*2,<tp:colored_glowstone:9>*2)
	.outputItems(<draconicevolution:wyvern_core>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(25000)
	.inputItems(<contenttweaker:swamp_key>,<extraplanets:neptune:10>*4)
	.outputItems(<contenttweaker:neptunic_key>)
	.buildAndRegister();

lightningRPO.start()
	.duration(50)
	.inputLE(2500)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>,<minecraft:emerald>)
	.outputItems(<lightningcraft:material:11>)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(80000)
	.inputItems(<lightningcraft:lightning_cell:2>,<lightningcraft:lightning_cell:2>,<lightningcraft:lightning_cell:2>,<lightningcraft:lightning_cell:2>,<lightningcraft:lightning_cell:2>,<avaritia:block_resource:1>)
	.outputItems(<lightningcraft:lightning_cell:3>)
	.buildAndRegister();
	
lightningRPO.start()
	.duration(50)
	.inputLE(50000)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}),<contenttweaker:divine_large_circuit>)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}))
	.buildAndRegister();
	
lightningRPO.start()
	.duration(50)
	.inputLE(50000)
	.inputItems(<industrialforegoing:mob_slaughter_factory>, <draconicevolution:draconic_core>*2, <calculator:endforgedsword>, <calculator:reinforcedfurnace>)
	.outputItems(<draconicevolution:grinder>)
	.buildAndRegister();

lightningRPO.start()
	.duration(200)
	.inputLE(8000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:lonsdaleite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*256)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(300)
	.inputLE(16000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:litherite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*128)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(400)
	.inputLE(24000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:erodium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*96)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(500)
	.inputLE(32000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:kyronite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*64)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(40000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:pladium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*48)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(700)
	.inputLE(50000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:ionite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*32)
	.outputItems(<mysticalagriculture:storage>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(200)
	.inputLE(8000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:lonsdaleite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*512)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(300)
	.inputLE(16000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:litherite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*256)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(400)
	.inputLE(24000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:erodium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*128)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(500)
	.inputLE(32000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:kyronite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(40000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:pladium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(700)
	.inputLE(50000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:ionite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(800)
	.inputLE(75000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:aethium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:1>*512)
	.buildAndRegister();

lightningRPO.start()
	.duration(300)
	.inputLE(8000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:lonsdaleite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*512)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(400)
	.inputLE(16000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:litherite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*256)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(500)
	.inputLE(24000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:erodium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*128)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(32000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:kyronite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(700)
	.inputLE(40000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:pladium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(800)
	.inputLE(50000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:ionite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(900)
	.inputLE(75000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:aethium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(1000)
	.inputLE(100000) //TODO Too high
	.inputItems(degradeChance(intermediumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),intermediumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*24)
	.outputItems(<mysticalagriculture:storage:2>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(400)
	.inputLE(16000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:litherite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*256)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(500)
	.inputLE(24000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:erodium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*128)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(32000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:kyronite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(700)
	.inputLE(40000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:pladium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(800)
	.inputLE(50000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:ionite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(900)
	.inputLE(75000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:aethium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(1000)
	.inputLE(100000) //TODO Too high
	.inputItems(degradeChance(superiumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),superiumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*24)
	.outputItems(<mysticalagriculture:storage:3>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(1100)
	.inputLE(150000) //TODO Too high
	.inputItems(degradeChance(superiumBonus,<contenttweaker:conglomerate_crystal>),superiumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*16)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPO.start()
	.duration(400)
	.inputLE(24000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:erodium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*128)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(500)
	.inputLE(32000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:kyronite_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*96)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(600)
	.inputLE(40000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:pladium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*64)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(700)
	.inputLE(50000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:ionite_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*48)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(800)
	.inputLE(75000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:aethium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*32)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(900)
	.inputLE(100000) //TODO Too high
	.inputItems(degradeChance(supremiumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),supremiumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*24)
	.outputItems(<mysticalagriculture:storage:4>*64)
	.buildAndRegister();

lightningRPO.start()
	.duration(1000)
	.inputLE(150000) //TODO Too high
	.inputItems(degradeChance(supremiumBonus,<contenttweaker:conglomerate_crystal>),supremiumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*16)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPO.start()
	.duration(1100)
	.inputLE(200000) //TODO Too high
	.inputItems(degradeChance(supremiumBonus,<avaritia:endest_pearl>),supremiumBonus)
	.inputItems(<avaritia:endest_pearl>*8)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(250)
	.inputItems(<ore:sand>,<lightningcraft:material:12>)
	.outputItems(<lightningcraft:under_sand>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(250)
	.inputItems(<ore:sand>,<ore:treeSapling>)
	.outputItems(<minecraft:deadbush>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(375)
	.inputItems(<ore:blockGravel>,<ore:sand>,<ore:dirt>,<ore:cofh:potion>)
	.outputItems(<minecraft:clay>*3)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(250)
	.inputItems(<ore:slimeball>,<ore:blockWool>)
	.outputItems(<minecraft:sponge>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(375)
	.inputItems(<minecraft:ice>*4)
	.outputItems(<minecraft:packed_ice>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(250)
	.inputItems(<ore:cobblestone>,<ore:vine>)
	.outputItems(<minecraft:mossy_cobblestone>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(250)
	.inputItems(<minecraft:book>*4,<ore:logWood>)
	.outputItems(<minecraft:bookshelf>*2)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1000)
	.inputItems(<ore:stoneDiorite>*2,<ore:stoneGranite>)
	.outputItems(<minecraft:quartz>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1250)
	.inputItems(<minecraft:coal>*4,<minecraft:coal_block>)
	.outputItems(<minecraft:diamond>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1875)
	.inputItems(<ore:crystalsPrismarine>*4,<ore:blockPrismarineDark>)
	.outputItems(<minecraft:emerald>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(750)
	.inputItems(<minecraft:iron_ingot>,<minecraft:gold_ingot>,<minecraft:diamond>)
	.outputItems(<lightningcraft:ingot>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(6625)
	.inputItems(<ore:blockIron>,<ore:blockGold>,<ore:blockDiamond>)
	.outputItems(<lightningcraft:metal_block>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<ore:soulSand>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:soul_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<minecraft:rotten_flesh>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:zombie_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<ore:feather>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:feather_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<minecraft:ender_pearl>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ender_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<minecraft:blaze_rod>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:blaze_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2250)
	.inputItems(<ore:blockPackedIce>*4,<minecraft:stone_sword>)
	.outputItems(<lightningcraft:ice_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2125)
	.inputItems(<lightningcraft:ingot>,<lightningcraft:stone_block>*2,<minecraft:ender_eye>*2)
	.outputItems(<lightningcraft:ingot:1>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1000)
	.inputItems(<minecraft:water_bucket>,<lightningcraft:material:5>*4)
	.outputItems(<minecraft:lava_bucket>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(375)
	.inputItems(<minecraft:cobblestone>,<lightningcraft:material:5>)
	.outputItems(<minecraft:netherrack>*2)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(625)
	.inputItems(<minecraft:brick_block>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_brick>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(500)
	.inputItems(<ore:seed>,<lightningcraft:material:5>)
	.outputItems(<minecraft:nether_wart>*2)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(875)
	.inputItems(<lightningcraft:stone_block>,<lightningcraft:material:5>*2)
	.outputItems(<lightningcraft:stone_block:3>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2500)
	.inputItems(<minecraft:fire_charge>,<lightningcraft:material:5>,<ore:dustDiamond>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1000)
	.inputItems(<lightningcraft:material:13>,<lightningcraft:material:5>,<ore:blockObsidian>)
	.outputItems(<lightningcraft:material:6>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(6250)
	.inputItems(<lightningcraft:material:4>,<lightningcraft:material:5>*2,<ore:dustDiamond>,<lightningcraft:material:8>)
	.outputItems(<lightningcraft:material:9>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1250)
	.inputItems(<ore:dustElectricium>,<lightningcraft:material:12>*4)
	.outputItems(<lightningcraft:material:13>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(2500)
	.inputItems(<lightningcraft:dust:2>,<lightningcraft:material:13>*4)
	.outputItems(<lightningcraft:material:14>*4)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(1250)
	.inputItems(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<lightningcraft:material:5>*2,<minecraft:golden_carrot>*2)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}))
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(625)
	.inputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}),<ore:dustRedstone>*4)
	.outputItems(<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}))
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(4000)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>*2,<ore:nuggetNetherStar>,<lightningcraft:material:11>)
	.outputItems(<lightningcraft:ingot:2>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(9000)
	.inputItems(<lightningcraft:sky_hammer>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hammer>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(7500)
	.inputItems(<lightningcraft:sky_sword>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_sword>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(5000)
	.inputItems(<lightningcraft:sky_hoe>,<ore:dustMystic>*4)
	.outputItems(<lightningcraft:mystic_hoe>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(5000)
	.inputItems(<enderio:item_material:54>,<enderio:item_material:52>,<galacticraftplanets:item_basic_mars:5>,<moreplates:refined_obsidian_plate>,<moreplates:refined_glowstone_plate>)
	.outputItems(<enderio:item_material:53>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(25000)
	.inputItems(<aoa3:ancient_rock>,<aoa3:smash_statue>,<aoa3:nethengeic_wither_statue>,<aoa3:corallus_statue>,<aoa3:king_bambambam_statue>)
	.outputItems(<aoa3:blank_realmstone>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(62500)
	.inputItems(<draconicevolution:draconium_dust>,<lightningcraft:under_sand>*2,<jaopca:dust.jade>)
	.outputItems(<draconicevolution:draconium_ingot>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(125000)
	.inputItems(<tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}),<draconicevolution:draconium_ingot>*2,<ore:gearDraconium>*2)
	.outputItems(<draconicevolution:draconic_core>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(375000)
	.inputItems(<overloaded:nether_star_block>,<draconicevolution:draconic_core>*2,<tp:colored_glowstone:9>*2)
	.outputItems(<draconicevolution:wyvern_core>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(125000)
	.inputItems(<contenttweaker:swamp_key>,<extraplanets:neptune:10>*4)
	.outputItems(<contenttweaker:neptunic_key>)
	.buildAndRegister();

lightningRPI.start()
	.duration(5)
	.inputLE(12500)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>,<minecraft:emerald>)
	.outputItems(<lightningcraft:material:11>)
	.buildAndRegister();
	
lightningRPI.start()
	.duration(5)
	.inputLE(250000)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}),<contenttweaker:divine_large_circuit>)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}))
	.buildAndRegister();
	
lightningRPI.start()
	.duration(5)
	.inputLE(250000)
	.inputItems(<industrialforegoing:mob_slaughter_factory>, <draconicevolution:draconic_core>*2, <calculator:endforgedsword>, <calculator:reinforcedfurnace>)
	.outputItems(<draconicevolution:grinder>)
	.buildAndRegister();

lightningRPI.start()
	.duration(100)
	.inputLE(16000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:lonsdaleite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*512)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(200)
	.inputLE(24000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:litherite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*256)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(32000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:erodium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*128)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(40000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:kyronite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*96)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(50000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:pladium_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*64)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(75000)
	.inputItems(degradeChance(inferiumBonus,<environmentaltech:ionite_crystal>),inferiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*48)
	.outputItems(<mysticalagriculture:storage>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(100)
	.inputLE(16000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:lonsdaleite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*1024)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(200)
	.inputLE(24000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:litherite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*512)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(32000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:erodium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*256)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(40000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:kyronite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(50000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:pladium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(75000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:ionite_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(100000)
	.inputItems(degradeChance(prudentiumBonus,<environmentaltech:aethium_crystal>),prudentiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:1>*1024)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(16000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:lonsdaleite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:lonsdaleite_crystal>*1024)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(24000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:litherite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*512)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(32000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:erodium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*256)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(40000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:kyronite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(50000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:pladium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(800)
	.inputLE(75000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:ionite_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(900)
	.inputLE(100000)
	.inputItems(degradeChance(intermediumBonus,<environmentaltech:aethium_crystal>),intermediumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(1000)
	.inputLE(150000)
	.inputItems(degradeChance(intermediumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),intermediumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*32)
	.outputItems(<mysticalagriculture:storage:2>*512)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(24000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:litherite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:litherite_crystal>*512)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(32000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:erodium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*256)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(40000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:kyronite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(50000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:pladium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(75000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:ionite_crystal>),superiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(800)
	.inputLE(100000)
	.inputItems(degradeChance(superiumBonus,<environmentaltech:aethium_crystal>),superiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(900)
	.inputLE(150000)
	.inputItems(degradeChance(superiumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),superiumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*32)
	.outputItems(<mysticalagriculture:storage:3>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(1000)
	.inputLE(200000)
	.inputItems(degradeChance(superiumBonus,<contenttweaker:conglomerate_crystal>),superiumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*24)
	.outputItems(<mysticalagriculture:storage:3>*384)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(32000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:erodium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:erodium_crystal>*256)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(40000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:kyronite_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*128)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(50000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:pladium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*96)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(75000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:ionite_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*64)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(100000)
	.inputItems(degradeChance(supremiumBonus,<environmentaltech:aethium_crystal>),supremiumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*48)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(800)
	.inputLE(150000)
	.inputItems(degradeChance(supremiumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),supremiumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*32)
	.outputItems(<mysticalagriculture:storage:4>*128)
	.buildAndRegister();

lightningRPI.start()
	.duration(900)
	.inputLE(200000)
	.inputItems(degradeChance(supremiumBonus,<contenttweaker:conglomerate_crystal>),supremiumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*24)
	.outputItems(<mysticalagriculture:storage:4>*192)
	.buildAndRegister();

lightningRPI.start()
	.duration(1000)
	.inputLE(300000)
	.inputItems(degradeChance(supremiumBonus,<avaritia:endest_pearl>),supremiumBonus)
	.inputItems(<avaritia:endest_pearl>*16)
	.outputItems(<mysticalagriculture:storage:4>*192)
	.buildAndRegister();

lightningRPI.start()
	.duration(300)
	.inputLE(40000)
	.inputItems(degradeChance(insaniumBonus,<environmentaltech:kyronite_crystal>),insaniumBonus)
	.inputItems(<environmentaltech:kyronite_crystal>*256)
	.outputItems(<mysticalagradditions:storage>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(50000)
	.inputItems(degradeChance(insaniumBonus,<environmentaltech:pladium_crystal>),insaniumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*128)
	.outputItems(<mysticalagradditions:storage>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(500)
	.inputLE(75000)
	.inputItems(degradeChance(insaniumBonus,<environmentaltech:ionite_crystal>),insaniumBonus)
	.inputItems(<environmentaltech:ionite_crystal>*96)
	.outputItems(<mysticalagradditions:storage>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(600)
	.inputLE(100000)
	.inputItems(degradeChance(insaniumBonus,<environmentaltech:aethium_crystal>),insaniumBonus)
	.inputItems(<environmentaltech:aethium_crystal>*64)
	.outputItems(<mysticalagradditions:storage>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(150000)
	.inputItems(degradeChance(insaniumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),insaniumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*48)
	.outputItems(<mysticalagradditions:storage>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(800)
	.inputLE(200000)
	.inputItems(degradeChance(insaniumBonus,<contenttweaker:conglomerate_crystal>),insaniumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*24)
	.outputItems(<mysticalagradditions:storage>*96)
	.buildAndRegister();

lightningRPI.start()
	.duration(900)
	.inputLE(300000)
	.inputItems(degradeChance(insaniumBonus,<avaritia:endest_pearl>),insaniumBonus)
	.inputItems(<avaritia:endest_pearl>*16)
	.outputItems(<mysticalagradditions:storage>*96)
	.buildAndRegister();

lightningRPI.start()
	.duration(1000)
	.inputLE(400000)
	.inputItems(degradeChance(insaniumBonus,<avaritia:resource:5>),insaniumBonus)
	.inputItems(<avaritia:resource:5>)
	.outputItems(<mysticalagradditions:storage:1>*1024)
	.buildAndRegister();

var definitionF as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:lightning_infuser_mk_1");
var lightning_one = definitionF as ControllerDefinition;
lightning_one.recipeMap = lightningRPF;

var definitionS as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:lightning_infuser_mk_2");
var lightning_two = definitionS as ControllerDefinition;
lightning_two.recipeMap = lightningRPS;

var definitionT as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:lightning_infuser_mk_3");
var lightning_three = definitionT as ControllerDefinition;
lightning_three.recipeMap = lightningRPT;

var definitionO as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:lightning_infuser_mk_4");
var lightning_four = definitionO as ControllerDefinition;
lightning_four.recipeMap = lightningRPO;

var definitionI as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:infinity_infuser");
var lightning_five = definitionI as ControllerDefinition;
lightning_five.recipeMap = lightningRPI;

function degradeChance(bonus as IItemStack, crystal as IItemStack) as float {
	val data as IData = bonus.tag;
	val degradationData as IData = data.degradationData;
	if(isNull(degradationData)) {
		return 1 as float;
	}
	val itemDegredation as IData = degradationData.memberGet(crystal.name);
	if(isNull(itemDegredation)) {
		return 1 as float;
	}
	return (itemDegredation.degradationChance.asFloat()/(100 as float)) as float;
}