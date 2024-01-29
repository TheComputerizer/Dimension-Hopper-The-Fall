#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Globals as Global;
import scripts.crafttweaker.early.util.Lambdas as Caller;
import scripts.crafttweaker.early.util.Stacks as Stack;

static modRemovals as string[] = [
	"chambers",
	"industrialforegoing",
	"mekanism",
	"moreplates",
	"mysticalagradditions",
	"mysticalagriculture",
	"rftools",
	"thermalfoundation"
] as string[];

static arrayRemovals as IItemStack[][] = [
	//globals
	Global.boots,
	Global.conduits,
	Global.chestplates,
	Global.helmets,
	Global.joapcaBlocks,
	Global.leggings,

	//oredict
	<ore:blockConstructionAlloy>.itemArray,

	//materials
	Stack.commonMetas("material", {
			"appliedenergistics2":[32,33,34,35,36,37,388,54,55,56,57],
			"calculator":[9],
			"enderio":[0,1,11,12,13,22,55,66,73],
			"extendedcrafting":[32767],
			"immersiveengineering":[1,27],
			"opencomputers":[6,7,8,9],
			"psi":[3,4],
			"silentgems":[0,30],
			"tconstruct":[14],
			"thermalfoundation":[32,33,69,357,320,322,323,324,325,353,356,513,514,515]}, 
		{"enderio":"item_-","silentgems":"crafting-","tconstruct":"-s"}),

	//actuallyadditions
	Stack.append("actuallyadditions:block_", ["atomic_reconstructor", "coal_generator", "crystal", "empowerer", 
		"furnace_solar", "heat_collector", "leaf_generator", "oil_generator"]),
	Stack.append("actuallyadditions:block_giant_chest", ["", "_large", "_medium"]),
	Stack.append("actuallyadditions:item_boots_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_chest_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_helm_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_pants_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),

	//aoa3
	Stack.append("aoa3:lunar_", ["block", "ingot"]),

	//botania
	Stack.append("botania:", ["speedup", "supertravel", "travel"], 0, "belt"),
	Stack.append("botania:", ["balance", "holy", "invisibility", "unholy"], 0, "cloak"),
	Stack.append("botania:", ["aura", "dodge", "magnet", "mana", "pixie", "reach", "swap"], 0, "ring"),
	Stack.append("botania:", ["cloud", "ice", "lava", "supercloud", "superlava"], 0, "pendant"),
	Stack.append("botania:terrasteel", ["boots", "chest", "helm", "helmreveal", "legs"]),

	//dimdoors
	Stack.append("dimdoors:rift_", ["remover", "signature"]),

	//draconicevolution
	Stack.append("draconicevolution:draconic_", ["block", "core"]),
	Stack.append("draconicevolution:wyvern_", ["core", "helm", "chest", "legs"]),

	//enderio
	Stack.append("enderio:block_", ["alloy", "alloy_endergy", "tank"], 32767),
	Stack.append("enderio:block_", ["alloy_smelter", "enchanter", "powered_spawner", "reinforced_obsidian", "sag_mill", 
		"slice_and_splice", "soul_binder", "vat", "wired_charger"]),
	Stack.append("enderio:block_", ["combustion", "ender", "franken_zombie", "lava", "stirling", "zombie"], 0, "_generator"),
	Stack.append("enderio:block_enhanced_", ["alloy_smelter", "combustion_generator", "sag_mill", "vat", "wired_charger"]),
	Stack.append("enderio:block_simple_", ["alloy_smelter", "furnace", "sag_mill", "stirling_generator", "wired_charger"]),
	Stack.append("enderio:item_", ["basic_capacitor", "endergy_conduit", "liquid_conduit", "power_conduit"], 32767),
	Stack.append("enderio:item_capacitor_", ["crystalline", "energetic_silver", "grainy", "melodic", "silver", "stellar",
		"totemic", "vivid"]),

	//enderstorage
	Stack.append("enderstorage:ender_", ["storage", "pouch"], 32767),

	//environmentaltech
	Stack.incrementals("environmentaltech:nano_cont_ranged_", [1,2,3,4,5,6]),
	Stack.incrementals("environmentaltech:void_botanic_miner_cont_", [1,2,3,4,5,6]),
	Stack.incrementals("environmentaltech:void_ore_miner_cont_", [1,2,3,4,5,6]),
	Stack.incrementals("environmentaltech:void_res_miner_cont_", [1,2,3,4,5,6]),

	//extendedcrafting
	Stack.append("extendedcrafting:table_", ["advanced", "elite", "ultimate"]),

	//extraplanets
	Stack.incrementals("extraplanets:tier", [3,4,5], 32767, "_thermal_padding"),
	Stack.append("extraplanets:tier1_space_suit_", ["boots", "chest", "legings", "helmet"], 32767),
	Stack.append("extraplanets:tier1_un_prepared_space_suit_", ["chest", "legings"]),

	//forestry
	Stack.append("forestry:", ["miner", "hunter", "builder", "adventurer"], 0, "_bag"),
	Stack.append("forestry:engine_", ["biogas", "clockwork", "peat"]),

	//galacticraftcore
	Stack.metas(<galacticraftcore:machine2>, [0,4]),
	Stack.metas(<galacticraftcore:oxygen_compressor>, [0,1,2,3,4]),
	Stack.metas(<galacticraftcore:solar>, [0,4]),
	Stack.metas(<galacticraftcore:machine_tiered>, [4,12]),

	//genetics
	Stack.metas(<genetics:misc>, [0,4,8,9]),

	//goodnightsleep
	Stack.append("goodnightsleep:", ["luxurious", "strange", "wretched"], 0, "_bed_item"),

	//immersiveengineering
	Stack.append("immersiveengineering:wooden_", ["decoration", "device1"]),
	Stack.metas(<immersiveengineering:wooden_device0>, [0,2]),

	//lockyzextradimensionsmod
	Stack.append("lockyzextradimensionsmod:alternate", ["block", "gem"]),
	Stack.append("lockyzextradimensionsmod:interdimensional", ["block", "ingot"]),

	//minecraft
	Stack.append("minecraft:", ["diamond", "emerald", "gold", "iron", "lapis"], 0, "_block"),
	Stack.append("minecraft:", ["gold", "iron"], 0, "_ingot"),
	Stack.append("minecraft:diamond", ["", "_chestplate"]),
	Stack.append("minecraft:flint", ["", "_and_steel"]),
	Stack.append("minecraft:nether_", ["brick", "star"]),

	//overloaded
	Stack.append("overloaded:compressed_", ["cobblestone", "dirt", "gravel", "obsidian", "netherrack", "sand", "stone"], 32767),
	Stack.append("overloaded:energy_", ["core", "extractor"]),
	Stack.append("overloaded:hyper_energy_", ["receiver", "sender"]),
	Stack.append("overloaded:hyper_fluid_", ["receiver", "sender"]),
	Stack.append("overloaded:hyper_item_", ["receiver", "sender"]),
	Stack.append("overloaded:infinite_", ["barrel", "capacitor", "tank"]),
	Stack.append("overloaded:item_", ["core", "interface"]),

	//portalgun
	Stack.append("portalgun:item_", ["portalgun", "miniature_black_hole"]),

	//projecte
	Stack.append("projecte:item.pe_", ["klein_star", "philosophers_stone", "tome", 'transmutation_tablet']),

	//silentgems
	Stack.append("silentgems:gem", ["", "block", "shard"], 32767),

	//solarflux
	Stack.append("solarflux:solar_panel_", ["1", "2", "3", "4", "5", "6", "7", "8", "draconic", "wyvern"]),
	Stack.append("solarflux:", ["blank", "block_charging", "capacity", "dispersive", "efficiency", "furnace", "transfer_rate", 
		"traversal"], 0, "_upgrade"),

	//storagedrawers
	Stack.append("storagedrawers:upgrade_", ["conversion", "one_stack", "redstone", "status", "storage", "template", "void"], 32767),

	//thebetweenlands
	Stack.append("thebetweenlands:", ["octine", "syrmorite"], 0, "_block"),

	//thermalfoundation
	Stack.append("thermalfoundation:storage", ["", "_alloy"], 32767),

	//thermalexpansion
	Stack.metas(<thermalexpansion:frame>, [0,64,128]),

	//tp
	Stack.append("tp:stone_", ["boots", "chestplate", "helmet", "leggings"]),

	//translocators
	Stack.metas(<translocators:translocator_part>, [0,1]),

	//vc
	Stack.append("vc:item_", ["logic_chip", "airship_engine"]),

	//zollerngalaxy
	Stack.append("zollerngalaxy:", ["amaranth", "azurite", "zollernium"], 0, "_pickaxe"),
	Stack.append("zollerngalaxy:aquamarine", ["", "block"])
] as IItemStack[][];

static itemRemovals as IItemStack[] = [
	//oredict
	<ore:ingotBrickSeared>.firstItem,

	//actuallyadditions
	<actuallyadditions:block_crystal_empowered:*>,
	<actuallyadditions:item_drill:3>,
	<actuallyadditions:item_food:10>,

	//aeadditions
	<aeadditions:storage.component:*>,
	<aeadditions:vibrantchamberfluid>,

	//aether
	<aether:aether_teleporter>,

	//aoa3
	<aoa3:carved_rune_power>,

	//appliedenergistics2
	<appliedenergistics2:chest>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:grindstone>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:vibration_chamber>,

	//aroma1997sdimension
	<aroma1997sdimension:miningmultitool>,

	//atum
	<atum:scarab>,

	//avaritia
	<avaritia:resource:*>,
	<avaritia:block_resource:*>,
	<avaritia:extreme_crafting_table>,
	<avaritia:infinity_pants>,

	//avaritiatweaks
	<avaritiatweaks:gaia_block>,

	//bedrockcraft
	<bedrockcraft:bedrock_breaker>,

	//bonsaitrees
	<bonsaitrees:bonsaipot:*>,

	//botania
	<botania:divacharm>,
	<botania:fertilizer>,
	<botania:grasshorn>,
	<botania:itemfinder>,
	<botania:lens>,
	<botania:manaresource:*>,
	<botania:manasteelboots>,
	<botania:manatablet>,
	<botania:storage:*>,
	<botania:thirdeye>,

	//calculator
	<calculator:algorithmseparator>,
	<calculator:calculatorscreen>,
	<calculator:powercube>,

	//cavern
	<cavern:cave_block:*>,
	<cavern:cave_item>,

	//conarm
	<conarm:resist_mat>,

	//cookingforblockheads
	<cookingforblockheads:oven>,

	//darkutils
	<darkutils:trap_tile:*>,

	//draconicevolution
	<draconicevolution:draconium_block>,
	<draconicevolution:fusion_crafting_core>,
	<draconicevolution:generator>,
	<draconicevolution:grinder>,

	//enderio
	<enderio:item_stellar_alloy_pickaxe>,

	//environmentaltech
	<environmentaltech:litherite_crystal>,

	//eplus
	<eplus:advanced_table>,

	//erebus
	<erebus:altar_offering>,

	//exchangers
	<exchangers:eio_endergy_exchanger_core_tier2>,

	//extendedcrafting
	<extendedcrafting:compressor>,
	<extendedcrafting:crafting_core>,
	<extendedcrafting:interface>,
	<extendedcrafting:storage:*>,

	//extraplanets
	<extraplanets:oxygen_tank_extremely_heavy_full:*>,
	<extraplanets:neptune:7>,
	<extraplanets:thermal_cloth:*>,
	<extraplanets:tier8_items:5>,

	//extratrees
	<extratrees:machine:4>,

	//extrautils2
	<extrautils2:flattransfernode:*>,
	<extrautils2:indexer>,
	<extrautils2:indexerremote>,
	<extrautils2:machine>,
	<extrautils2:ingredients:2>,
	<extrautils2:pipe>,
	<extrautils2:resonator>,
	<extrautils2:teleporter:1>,

	//forestry
	<forestry:apiary>,
	<forestry:carpenter>,
	<forestry:database>,
	<forestry:fabricator>,
	<forestry:frame_impregnated>,
	<forestry:scoop>,
	<forestry:squeezer>,
	<forestry:sturdy_machine>,

	//gaiadimension
	<gaiadimension:keystone_block>,
	<gaiadimension:mega_storage_crate>,
	<gaiadimension:restructurer_idle>,

	//galacticraftcore
	<galacticraftcore:basic_block_core:12>,
	<galacticraftcore:collector>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:machine>,
	<galacticraftcore:magnetic_table>,
	<galacticraftcore:refinery>,

	//galacticraftplanets
	<galacticraftplanets:asteroids_block:7>,

	//genetics
	<genetics:lab_machine:*>,
	<genetics:machine:*>,
	<genetics:adv_machine>,

	//goodnightsleep
	<goodnightsleep:zitrite_block>,

	//huntingdim
	<huntingdim:frame>,

	//immersiveengineering
	<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
	<immersiveengineering:tool>,

	//industrialforegoing
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:pitiful_fuel_generator>,

	//integrateddynamics
	<integrateddynamics:part_machine_reader_item>,

	//lightningcraft
	<lightningcraft:ingot>,
	<lightningcraft:metal_block:*>,
	<lightningcraft:plate:*>,

	//lockyzextradimensionsmod
	<lockyzextradimensionsmod:dimensionflint_trigger>,

	//magicbees
	<magicbees:manasteelscoop>,

	//mekanismgenerators
	<mekanismgenerators:generator:*>,
	<mekanismgenerators:reactorglass>,

	//minecraft
	<minecraft:bedrock>,
	<minecraft:bread>,
	<minecraft:brewing_stand>,
	<minecraft:cauldron>,
	<minecraft:clock>,
	<minecraft:dye:4>,
	<minecraft:emerald>,
	<minecraft:ender_eye>,
	<minecraft:end_portal_frame>,
	<minecraft:piston>,

	//mist
	<mist:filter_coal>,
	<mist:filter_coal_block>,

	//moreplanets
	<moreplanets:tinted_glass>,

	//multiblocked
	<multiblocked:multiblock_builder>,

	//natura
	<natura:respawn_obelisk>,

	//naturesaura
	<naturesaura:gold_powder>,
	<naturesaura:infused_iron_block>,

	//netherex
	<netherex:dull_mirror>,

	//openblocks
	<openblocks:xp_shower>,

	//overloaded
	<overloaded:fluid_core>,
	<overloaded:linking_card>,
	<overloaded:nether_star_block>,
	<overloaded:settings_editor>,

	//plustic
	<plustic:centrifuge:*>,

	//projecte
	<projecte:item.pe_covalence_dust:2>,
	<projecte:item.pe_matter:*>,
	<projecte:transmutation_table>,

	//projectex
	<projectex:arcane_tablet>,
	<projectex:collector>,
	<projectex:matter:*>,
	<projectex:personal_link>,

	//qualitytools
	<qualitytools:reforging_station>,

	//quark
	<quark:reed_block>,

	//randomthings
	<randomthings:timeinabottle>,

	//silentgems
	<silentgems:chaospylon:1>,
	<silentgems:glowrosefertilizer>,
	<silentgems:miscblock:*>,

	//solarflux
	<solarflux:mirror>,

	//tconstruct
	<tconstruct:metal:3>,
	<tconstruct:seared_furnace_controller>,

	//teslacorelib
	<teslacorelib:machine_case>,

	//theaurorian
	<theaurorian:aurorianstone>,
	<theaurorian:scrapper>,

	//thermaldynamics
	<thermaldynamics:duct_0:*>,

	//thermalexpansion
	<thermalexpansion:augment:337>,
	<thermalexpansion:device:*>,
	<thermalexpansion:dynamo:*>,
	<thermalexpansion:machine:*>,

	//tinker_io
	<tinker_io:upg>,

	//tp
	<tp:chainmail_part>,
	<tp:flint_block>,
	<tp:pouch>,
	<tp:reinforced_obsidian>,

	//xlfoodmod
	<xlfoodmod:cheese>,

	//xreliquary
	<xreliquary:midas_touchstone>,

	//zollerngalaxy
	<zollerngalaxy:stargate_tier10>,
	<zollerngalaxy:staticamber>,
] as IItemStack[];

function run() {
    Caller.callString("vanilla",modRemovals);
	Caller.callArray("vanilla",arrayRemovals);
	Caller.call("vanilla",itemRemovals);
	furnace.removeAll();
}