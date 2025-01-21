#loader multiblocked

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDHelper as MBD;

static maps as RecipeMap[] = MBD.initRecipeMaps("lightning_infuser",5);

//This is stupid but until all of the recipes are converted from the old format it needs to be here

val lightningRPF as RecipeMap = maps[0];
val lightningRPS as RecipeMap = maps[1];
val lightningRPT as RecipeMap = maps[2];
val lightningRPO as RecipeMap = maps[3];
val lightningRPI as RecipeMap = maps[4];

val inferiumBonus as IItemStack = <mysticalagriculture:crafting:29>.withTag({sievedWith: "inferium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 25}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 0}, "item.environmentaltech.ionite_crystal": {degradationChance: 100}, "item.environmentaltech.erodium_crystal": {degradationChance: 10}, "item.environmentaltech.litherite_crystal": {degradationChance: 1}, "item.environmentaltech.pladium_crystal": {degradationChance: 50}}});
val prudentiumBonus as IItemStack = <bigreactors:dustludicrite>.withTag({sievedWith: "prudentium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 10}, "item.environmentaltech.aethium_crystal": {degradationChance: 100}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 50}, "item.environmentaltech.ionite_crystal": {degradationChance: 50}, "item.environmentaltech.erodium_crystal": {degradationChance: 1}, "item.environmentaltech.litherite_crystal": {degradationChance: 0}, "item.environmentaltech.pladium_crystal": {degradationChance: 25}}});
val intermediumBonus as IItemStack = <jaopca:dust.evil_metal>.withTag({sievedWith: "intermedium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 1}, "item.environmentaltech.aethium_crystal": {degradationChance: 50}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 100}, "item.environmentaltech.lonsdaleite_crystal": {degradationChance: 100}, "item.environmentaltech.ionite_crystal": {degradationChance: 25}, "item.environmentaltech.erodium_crystal": {degradationChance: 0}, "item.environmentaltech.litherite_crystal": {degradationChance: 50}, "item.environmentaltech.pladium_crystal": {degradationChance: 10}}});
val superiumBonus as IItemStack = <jaopca:dust.ultimate>.withTag({sievedWith: "superium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 0}, "item.environmentaltech.aethium_crystal": {degradationChance: 25}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 50}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 100}, "item.environmentaltech.ionite_crystal": {degradationChance: 10}, "item.environmentaltech.erodium_crystal": {degradationChance: 50}, "item.environmentaltech.litherite_crystal": {degradationChance: 100}, "item.environmentaltech.pladium_crystal": {degradationChance: 1}}});
val supremiumBonus as IItemStack = <projecte:item.pe_covalence_dust:2>.withTag({sievedWith: "supremium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 50}, "item.environmentaltech.aethium_crystal": {degradationChance: 10}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 25}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 50}, "item.environmentaltech.ionite_crystal": {degradationChance: 1}, "item.avaritia:endest_pearl": {degradationChance: 100}, "item.environmentaltech.erodium_crystal": {degradationChance: 100}, "item.environmentaltech.pladium_crystal": {degradationChance: 0}}});
val insaniumBonus as IItemStack = <jaopca:dust.infinity>.withTag({sievedWith: "insanium", degradationData: {"item.environmentaltech.kyronite_crystal": {degradationChance: 100}, "item.resource.infinity_catalyst": {degradationChance: 100}, "item.environmentaltech.aethium_crystal": {degradationChance: 1}, "item.contenttweaker.genetically_unstable_chaos_crystal": {degradationChance: 10}, "item.contenttweaker.conglomerate_crystal": {degradationChance: 25}, "item.environmentaltech.ionite_crystal": {degradationChance: 0}, "item.avaritia:endest_pearl": {degradationChance: 50}, "item.environmentaltech.pladium_crystal": {degradationChance: 50}}});

static orderedDegredations as IItemStack[] = [
    <environmentaltech:lonsdaleite_crystal>,
    <environmentaltech:litherite_crystal>,
    <environmentaltech:erodium_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:aethium_crystal>,
    <contenttweaker:genetically_unstable_chaos_crystal>,
    <contenttweaker:conglomerate_crystal>,
    <avaritia:endest_pearl>,
    <avaritia:resource:5>
];

static sieveScale as int[] = [ 
	1000,   2000,   4000,
	8000,   16000,  24000,
	32000,  40000,  50000,
	75000,  100000, 150000,
	200000, 300000, 400000
];

//						  inputs[]    [output]    [LE] [time]               I SWAPPED LE AND TIME
static standardRecipes as IIngredient[][IItemStack][int][int] = {
	600: { 
		10: { 
			<lightningcraft:under_sand>: [ <ore:sand>, <lightningcraft:material:12> ], // Undersand
			<minecraft:deadbush>: [ <ore:sand>, <ore:treeSapling> ], // Dead Bush
			<minecraft:sponge>: [ <ore:slimeball>, <ore:blockWool> ], // Sponge
			<minecraft:packed_ice>: [ <minecraft:ice>*4 ], // Packed Ice
			<minecraft:mossy_cobblestone>: [ <ore:cobblestone>, <ore:vine> ], // Moss Stone
			<minecraft:bookshelf>*2: [ <minecraft:book>*4, <ore:logWood> ] // Oak Bookshelf
		},
		15: {
			<minecraft:clay>*3: [ <ore:blockGravel>, <ore:sand>, <ore:dirt>, <ore:cofh:potion> ], // Clay (Block)
			<minecraft:netherrack>*2: [ <minecraft:cobblestone>, <lightningcraft:material:5> ] // Netherrack
		},
		20: {
			<minecraft:nether_wart>*2: [ <ore:seed>, <lightningcraft:material:5> ] //Nether Wart
		},
		25: {
			<minecraft:nether_brick>: [ <minecraft:brick_block>, <lightningcraft:material:5> ], // Nether Brick (Block)
			<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_extended"}): [ <minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}), <ore:dustRedstone>*4 ] // Potion of Demon Warding (25:00)
		},
		30: {
			<lightningcraft:ingot>: [ <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:diamond> ] // Electricium Ingot
		},
		35: {
			<lightningcraft:stone_block:3>: [ <lightningcraft:stone_block>, <lightningcraft:material:5>*2 ] // Demonstone
		},
		40: {
			<minecraft:quartz>: [ <ore:stoneDiorite>*2, <ore:stoneGranite> ], // Nether Quartz
			<minecraft:lava_bucket>: [ <minecraft:water_bucket>, <lightningcraft:material:5>*4 ], //Lava Bucket
			<lightningcraft:material:6>: [ <lightningcraft:material:13>, <lightningcraft:material:5>, <ore:blockObsidian> ] // Underworld Charge (secondary)
		},
		50: {
			<minecraft:diamond>: [ <minecraft:coal>*4, <minecraft:coal_block> ], // Diamond
			<lightningcraft:material:13>: [ <ore:dustElectricium>, <lightningcraft:material:12>*4 ], // Empowered Underpowder
			<minecraft:potion>.withTag({Potion: "lightningcraft:demon_warding_normal"}): [ <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <lightningcraft:material:5>*2, <minecraft:golden_carrot>*2 ] // Potion of Demon Warding (15:00)
		},
		75: {
			<minecraft:emerald>: [ <ore:crystalsPrismarine>*4, <ore:blockPrismarineDark> ] // Emerald
		},
		85: {
			<lightningcraft:ingot:1>: [ <lightningcraft:ingot>, <lightningcraft:stone_block>*2, <minecraft:ender_eye>*2 ] //Skyfather Ingot
		},
		90: {
			<lightningcraft:soul_sword>: [ <ore:soulSand>*4, <minecraft:stone_sword> ], // Soul Sword
			<lightningcraft:zombie_sword>: [ <minecraft:rotten_flesh>*4, <minecraft:stone_sword> ], // Undead Sword
			<lightningcraft:feather_sword>: [ <ore:feather>*4, <minecraft:stone_sword> ], // Winged Sword
			<lightningcraft:ender_sword>: [ <minecraft:ender_pearl>*4, <minecraft:stone_sword> ], // Ender Sword
			<lightningcraft:blaze_sword>: [ <minecraft:blaze_rod>*4, <minecraft:stone_sword> ], // Blazing Sword
			<lightningcraft:ice_sword>: [ <ore:blockPackedIce>*4, <minecraft:stone_sword> ] // Glacial Sword
		},
		100: {
			<lightningcraft:material:6>: [ <minecraft:fire_charge>, <lightningcraft:material:5>, <ore:dustDiamond>, <ore:blockObsidian> ], // Underworld Charge
			<lightningcraft:material:14>*4: [ <lightningcraft:dust:2>, <lightningcraft:material:13>*4 ] // Divine Underpowder
		},
		160: {
			<lightningcraft:ingot:2>: [ <lightningcraft:ingot:1>, <lightningcraft:material:5>*2, <ore:nuggetNetherStar>, <lightningcraft:material:11> ] // Mystic Ingot
		},
		200: {
			<lightningcraft:mystic_hoe>: [ <lightningcraft:sky_hoe>, <ore:dustMystic>*4 ], // Mystic Hoe
			<enderio:item_material:53>: [ <enderio:item_material:54>, <enderio:item_material:52>, <galacticraftplanets:item_basic_mars:5>, <moreplates:refined_obsidian_plate>, <moreplates:refined_glowstone_plate> ] // Soul Machine Chassis
		},
		250: {
			<lightningcraft:material:9>: [ <lightningcraft:material:4>, <lightningcraft:material:5>*2, <ore:dustDiamond>, <lightningcraft:material:8> ] // Ensorcelled Core
		},
		265: {
			<lightningcraft:metal_block>: [ <ore:blockIron>, <ore:blockGold>, <ore:blockDiamond> ] // Block of Electricium
		},
		300: {
			<lightningcraft:mystic_sword>: [ <lightningcraft:sky_sword>, <ore:dustMystic>*4 ] // Mystic Sword
		},
		360: {
			<lightningcraft:mystic_hammer>: [ <lightningcraft:sky_hammer>, <ore:dustMystic>*4 ] // Mystic Hammer
		},
		1000: {
			<aoa3:blank_realmstone>: [ <aoa3:ancient_rock>, <aoa3:smash_statue>, <aoa3:nethengeic_wither_statue>, <aoa3:corallus_statue>, <aoa3:king_bambambam_statue> ] // Blank Realmstone
		},
		2500: {
			<draconicevolution:draconium_ingot>: [ <draconicevolution:draconium_dust>, <lightningcraft:under_sand>*2, <jaopca:dust.jade> ] // Draconium Ingot
		},
		5000: {
			<draconicevolution:draconic_core>: [ <tombstone:impregnated_diamond>.withTag({entity_type: "lightningcraft:underworld_creeper"}), <draconicevolution:draconium_ingot>*2, <ore:gearDraconium>*2 ], // Draconic Core
			<contenttweaker:neptunic_key>: [ <contenttweaker:swamp_key>, <extraplanets:neptune:10>*4 ] // Neptunic Key
		},
		10000: {
			<dimhoppertweaks:skill_credit>.withTag({amount: 10, skill: "research"}): [ <dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 15}), <contenttweaker:divine_large_circuit> ] // Skill Credit [Research] (10 SP)
		},
		15000: {
			<draconicevolution:wyvern_core>: [ <overloaded:nether_star_block>, <draconicevolution:draconic_core>*2, <tp:colored_glowstone:9>*2 ] // Wyvern Core
		}
	}
};

//																^
//TODO convert all the old format recipes | into the new format |
//										  v

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
	.inputLE(1500)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>,<minecraft:emerald>)
	.outputItems(<lightningcraft:material:11>)
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
	.inputLE(12500)
	.inputItems(<lightningcraft:ingot:1>,<lightningcraft:material:5>,<minecraft:emerald>)
	.outputItems(<lightningcraft:material:11>)
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
	.outputItems(<mysticalagradditions:storage:1>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(400)
	.inputLE(50000)
	.inputItems(degradeChance(insaniumBonus,<environmentaltech:pladium_crystal>),insaniumBonus)
	.inputItems(<environmentaltech:pladium_crystal>*128)
	.outputItems(<mysticalagradditions:storage:1>*64)
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
	.outputItems(<mysticalagradditions:storage>*256)
	.buildAndRegister();

lightningRPI.start()
	.duration(700)
	.inputLE(150000)
	.inputItems(degradeChance(insaniumBonus,<contenttweaker:genetically_unstable_chaos_crystal>),insaniumBonus)
	.inputItems(<contenttweaker:genetically_unstable_chaos_crystal>*48)
	.outputItems(<mysticalagradditions:storage:1>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(800)
	.inputLE(200000)
	.inputItems(degradeChance(insaniumBonus,<contenttweaker:conglomerate_crystal>),insaniumBonus)
	.inputItems(<contenttweaker:conglomerate_crystal>*24)
	.outputItems(<mysticalagradditions:storage:1>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(900)
	.inputLE(300000)
	.inputItems(degradeChance(insaniumBonus,<avaritia:endest_pearl>),insaniumBonus)
	.inputItems(<avaritia:endest_pearl>*16)
	.outputItems(<mysticalagradditions:storage:1>*64)
	.buildAndRegister();

lightningRPI.start()
	.duration(1000)
	.inputLE(400000)
	.inputItems(degradeChance(insaniumBonus,<avaritia:resource:5>),insaniumBonus)
	.inputItems(<avaritia:resource:5>)
	.outputItems(<extendedcrafting:storage:4>*256)
	.buildAndRegister();

function basicPow(base as int, exp as int) as int {
    var res = 1;
    for i in 0 .. exp {
      res*=base;
    }
    return res;
}

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

function registerStandard() {
	for time, leMap in standardRecipes { //time = total number of ticks for the recipe (in Mk 1)
		for le, items in leMap { //le = total LE cost of recipe (in Mk 1)
			for output, inputs in items { //output = IItemStack output | inputs = IIngredient[] inputs
				standard(time,le,inputs,output);
			}
		}
	}
}

function run() {
	registerStandard();
	MBD.setRecipeMaps(maps,"lightning_infuser");
}

function sieved(bonus as IItemStack, output as IItemStack, outputCount as int, firstTier as int, firstIndex as int, firstTime as int, powerIndex as int, lastIndex as int = firstIndex+7) {
	for tier in 0 .. 6 {
		val powerFactor = tier-(1);
		val timeFactor = 100*powerFactor;
		val count = outputCount*basicPow(2,tier-firstTier);
		for j in firstIndex .. lastIndex+1 {
			val progress = j-firstIndex;
			val time = firstTime-timeFactor+(100*progress);
			val power = sieveScale[powerIndex+powerFactor+progress];
			val crystal as IItemStack = orderedDegredations[j];
			val chance as float = degradeChance(bonus,crystal);
			var actualCount = count as double;
			if((crystal in <contenttweaker:conglomerate_crystal>) || (crystal in <avaritia:endest_pearl>)) {
				actualCount*=(1.5 as double);
			} else if(crystal in <avaritia:resource:5>) {
				actualCount*=(4 as double);
			}
			MBD.wrap(maps[tier],function(builder as RecipeBuilder) as RecipeBuilder {
				return builder.duration(time).inputLE(power).inputItems(chance,bonus).inputItems(crystal).outputItems(output*(actualCount as int));
			});
		}
	}
}

function standard(baseDuration as int, basePower as int, inputs as IIngredient[], output as IItemStack) {
	var duration = baseDuration as double;
	var power = basePower as double;
	for i in 1 .. 6 { //The scaling isn't direct so I guess if/else chaining it is
		if(i==1) {
			duration = baseDuration;
			power = basePower;
		} else if(i==2) {
			duration = baseDuration/2 as double;
			power = basePower*2 as double;
		} else if(i==3) {
			duration = baseDuration/3 as double;
			power = basePower*3 as double;
		} else if(i==4) {
			duration = baseDuration/5 as double;
			power = basePower*5 as double;
		} else {
			duration = baseDuration/50 as double;
			power = basePower*25 as double;
		}
		MBD.lightningInfusion(maps[(i)-(1)],duration as int,power as int,inputs,output);
	}
}