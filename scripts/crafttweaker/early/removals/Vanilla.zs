#priority 500
#reloadable

import crafttweaker.item.IItemStack;

import scripts.crafttweaker.early.util.GlobalHelper as Helper;
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
	//globals---------------------------------------------------------------------------------------------------------------
	Helper.getRemovalItems("boots",Global.boots),
	Helper.getRemovalItems("chest",Global.chestplates),
	Helper.getRemovalItems("conduit",Global.conduits),
	Helper.getRemovalItems("helm",Global.helmets),
	Helper.getRemovalItems("jaopca:block",Global.joapcaBlocks),

	//oredict---------------------------------------------------------------------------------------------------------------
	<ore:blockConstructionAlloy>.itemArray,

	//materials-------------------------------------------------------------------------------------------------------------
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

	//actuallyadditions-----------------------------------------------------------------------------------------------------
	Stack.append("actuallyadditions:block_", ["atomic_reconstructor", "coal_generator", "crystal", "empowerer", 
		"furnace_solar", "heat_collector", "leaf_generator", "oil_generator"]),
	Stack.append("actuallyadditions:block_giant_chest", ["", "_large", "_medium"]),
	Stack.append("actuallyadditions:item_boots_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_chest_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_helm_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),
	Stack.append("actuallyadditions:item_pants_crystal_", ["black", "blue", "green", "light_blue", "red", "white"]),

	//aoa3------------------------------------------------------------------------------------------------------------------
	Stack.append("aoa3:lunar_", ["block", "ingot"]),

	//botania---------------------------------------------------------------------------------------------------------------
	Stack.append("botania:", ["speedup", "supertravel", "travel"], 0, "belt"),
	Stack.append("botania:", ["balance", "holy", "invisibility", "unholy"], 0, "cloak"),
	Stack.append("botania:", ["aura", "dodge", "magnet", "mana", "pixie", "reach", "swap"], 0, "ring"),
	Stack.append("botania:", ["cloud", "ice", "lava", "supercloud", "superlava"], 0, "pendant"),
	Stack.append("botania:terrasteel", ["boots", "chest", "helm", "helmreveal", "legs"]),

	//botania_tweaks--------------------------------------------------------------------------------------------------------
	Stack.incrementals("botania_tweaks:compressed_tiny_potato_", [1, 2, 3, 4, 5, 6, 7, 8]),

	//dimdoors--------------------------------------------------------------------------------------------------------------
	Stack.append("dimdoors:rift_", ["remover", "signature"]),

	//draconicevolution-----------------------------------------------------------------------------------------------------
	Stack.append("draconicevolution:draconic_", ["block", "core"]),
	Stack.append("draconicevolution:wyvern_", ["core", "helm", "chest", "legs"]),

	//enderio---------------------------------------------------------------------------------------------------------------
	Stack.append("enderio:block_", ["alloy", "alloy_endergy", "tank"], 32767),
	Stack.append("enderio:block_", ["alloy_smelter", "powered_spawner", "reinforced_obsidian", "sag_mill", 
		"slice_and_splice", "soul_binder", "vat", "wired_charger"]),
	Stack.append("enderio:block_", ["combustion", "ender", "franken_zombie", "lava", "stirling", "zombie"], 0, 
		"_generator"),
	Stack.append("enderio:block_enhanced_", ["alloy_smelter", "combustion_generator", "sag_mill", "vat", "wired_charger"]),
	Stack.append("enderio:block_simple_", ["alloy_smelter", "furnace", "sag_mill", "stirling_generator", "wired_charger"]),
	Stack.append("enderio:item_", ["basic_capacitor", "endergy_conduit", "liquid_conduit", "power_conduit"], 32767),
	Stack.append("enderio:item_capacitor_", ["crystalline", "energetic_silver", "grainy", "melodic", "silver", "stellar",
		"totemic", "vivid"]),

	//enderstorage----------------------------------------------------------------------------------------------------------
	Stack.append("enderstorage:ender_", ["storage", "pouch"], 32767),

	//environmentaltech-----------------------------------------------------------------------------------------------------
	Stack.incrementals("environmentaltech:void_botanic_miner_cont_", [1,2,3,4,5,6]),
	Stack.incrementals("environmentaltech:void_ore_miner_cont_", [1,2,3,4,5,6]),
	Stack.incrementals("environmentaltech:void_res_miner_cont_", [1,2,3,4,5,6]),

	//extendedcrafting------------------------------------------------------------------------------------------------------
	Stack.append("extendedcrafting:table_", ["advanced", "elite", "ultimate"]),

	//extraplanets----------------------------------------------------------------------------------------------------------
	Stack.incrementals("extraplanets:tier", [3,4,5], 32767, "_thermal_padding"),
	Stack.append("extraplanets:tier1_space_suit_", ["boots", "chest", "legings", "helmet"], 32767),
	Stack.append("extraplanets:tier1_un_prepared_space_suit_", ["chest", "legings"]),

	//forestry--------------------------------------------------------------------------------------------------------------
	Stack.append("forestry:", ["miner", "hunter", "builder", "adventurer"], 0, "_bag"),
	Stack.append("forestry:engine_", ["biogas", "clockwork", "peat"]),

	//galacticraftcore------------------------------------------------------------------------------------------------------
	Stack.metas(<galacticraftcore:machine2>, [0,4]),
	Stack.metas(<galacticraftcore:oxygen_compressor>, [0,1,2,3,4]),
	Stack.metas(<galacticraftcore:solar>, [0,4]),
	Stack.metas(<galacticraftcore:machine>, [0,4]),

	//genetics--------------------------------------------------------------------------------------------------------------
	Stack.metas(<genetics:misc>, [0,4,8,9]),

	//goodnightsleep--------------------------------------------------------------------------------------------------------
	Stack.append("goodnightsleep:", ["luxurious", "strange", "wretched"], 0, "_bed_item"),

	//immersiveengineering--------------------------------------------------------------------------------------------------
	Stack.append("immersiveengineering:wooden_", ["decoration", "device1"]),
	Stack.metas(<immersiveengineering:wooden_device0>, [0,2]),

	//lightningcraft--------------------------------------------------------------------------------------------------------
	Stack.metas(<lightningcraft:air_terminal>, [0,1,2,3,4,5,6,7,8,9]),

	//lockyzextradimensionsmod----------------------------------------------------------------------------------------------
	Stack.append("lockyzextradimensionsmod:alternate", ["block", "gem"]),
	Stack.append("lockyzextradimensionsmod:interdimensional", ["block", "ingot"]),

	//minecraft-------------------------------------------------------------------------------------------------------------
	Stack.append("minecraft:", ["diamond", "emerald", "gold", "iron", "lapis"], 0, "_block"),
	Stack.append("minecraft:", ["gold", "iron"], 0, "_ingot"),
	Stack.append("minecraft:diamond", ["", "_chestplate"]),
	Stack.append("minecraft:flint", ["", "_and_steel"]),
	Stack.append("minecraft:nether_", ["brick", "star"]),

	//mysticalagriculture---------------------------------------------------------------------------------------------------
	Stack.metas(<mysticalagriculture:storage>,[0,1,2,3,4]),

	//natura----------------------------------------------------------------------------------------------------------------
	Stack.metaRange(<natura:empty_bowls>.definition,[0,3]), //Empy Bowls

	//overloaded------------------------------------------------------------------------------------------------------------
	Stack.append("overloaded:compressed_", ["cobblestone", "dirt", "gravel", "obsidian", "netherrack", "sand", "stone"], 
		32767),
	Stack.append("overloaded:energy_", ["core", "extractor"]),
	Stack.append("overloaded:hyper_energy_", ["receiver", "sender"]),
	Stack.append("overloaded:hyper_fluid_", ["receiver", "sender"]),
	Stack.append("overloaded:hyper_item_", ["receiver", "sender"]),
	Stack.append("overloaded:infinite_", ["barrel", "capacitor", "tank"]),
	Stack.append("overloaded:item_", ["core", "interface"]),

	//portalgun-------------------------------------------------------------------------------------------------------------
	Stack.append("portalgun:item_", ["portalgun", "miniature_black_hole"]),

	//projecte--------------------------------------------------------------------------------------------------------------
	Stack.append("projecte:item.pe_", ["klein_star", "philosophers_stone", "tome", 'transmutation_tablet']),

	//silentgems------------------------------------------------------------------------------------------------------------
	Stack.append("silentgems:gem", ["", "block", "shard"], 32767),

	//solarflux-------------------------------------------------------------------------------------------------------------
	Stack.append("solarflux:solar_panel_", ["1", "2", "3", "4", "5", "6", "7", "8", "draconic", "wyvern"]),
	Stack.append("solarflux:", ["blank", "block_charging", "capacity", "dispersive", "efficiency", "furnace", 
		"transfer_rate", "traversal"], 0, "_upgrade"),

	//storagedrawers--------------------------------------------------------------------------------------------------------
	Stack.append("storagedrawers:upgrade_", ["conversion", "one_stack", "redstone", "status", "storage", "template", 
		"void"], 32767),

	//thebetweenlands-------------------------------------------------------------------------------------------------------
	Stack.append("thebetweenlands:", ["octine", "syrmorite"], 0, "_block"),

	//thermalfoundation-----------------------------------------------------------------------------------------------------
	Stack.append("thermalfoundation:storage", ["", "_alloy"], 32767),

	//thermalexpansion------------------------------------------------------------------------------------------------------
	Stack.metas(<thermalexpansion:frame>, [0,64,128]),

	//tp--------------------------------------------------------------------------------------------------------------------
	Stack.append("tp:stone_", ["boots", "chestplate", "helmet", "leggings"]),

	//translocators---------------------------------------------------------------------------------------------------------
	Stack.metas(<translocators:translocator_part>, [0,1]),

	//vc--------------------------------------------------------------------------------------------------------------------
	Stack.append("vc:item_", ["logic_chip", "airship_engine"]),

	//zollerngalaxy---------------------------------------------------------------------------------------------------------
	Stack.append("zollerngalaxy:", ["amaranth", "azurite", "zollernium"], 0, "_pickaxe"),
	Stack.append("zollerngalaxy:aquamarine", ["", "block"])
] as IItemStack[][];

static itemRemovals as IItemStack[] = [
	//oredict---------------------------------------------------------------------------------------------------------------
	<ore:ingotBrickSeared>.firstItem,

	//actuallyadditions-----------------------------------------------------------------------------------------------------
	<actuallyadditions:block_crystal_empowered:*>,
	<actuallyadditions:item_drill:3>,
	<actuallyadditions:item_food:10>,

	//aeadditions-----------------------------------------------------------------------------------------------------------
	<aeadditions:storage.component:*>,
	<aeadditions:vibrantchamberfluid>,

	//aether----------------------------------------------------------------------------------------------------------------
	<aether:aether_teleporter>,

	//aoa3------------------------------------------------------------------------------------------------------------------
	<aoa3:carved_rune_power>,

	//appliedenergistics2---------------------------------------------------------------------------------------------------
	<appliedenergistics2:chest>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:grindstone>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:vibration_chamber>,

	//aroma1997sdimension---------------------------------------------------------------------------------------------------
	<aroma1997sdimension:miningmultitool>,

	//atum------------------------------------------------------------------------------------------------------------------
	<atum:scarab>,

	//avaritia--------------------------------------------------------------------------------------------------------------
	<avaritia:resource:*>,
	<avaritia:block_resource:*>,
	<avaritia:extreme_crafting_table>,
	<avaritia:infinity_pants>,

	//avaritiatweaks--------------------------------------------------------------------------------------------------------
	<avaritiatweaks:gaia_block>,

	//bedrockcraft----------------------------------------------------------------------------------------------------------
	<bedrockcraft:bedrock_breaker>,

	//bigreactors-----------------------------------------------------------------------------------------------------------
	<bigreactors:blockblutonium>,
	<bigreactors:blockludicrite>,
	<bigreactors:blocksteel>,
	<bigreactors:ingotblutonium>,
	<bigreactors:ingotludicrite>,

	//biomesoplenty---------------------------------------------------------------------------------------------------------
	<biomesoplenty:terrarium>,
	<biomesoplenty:terrarium:9>,

	//bonsaitrees-----------------------------------------------------------------------------------------------------------
	<bonsaitrees:bonsaipot:*>,

	//botania---------------------------------------------------------------------------------------------------------------
	<botania:divacharm>,
	<botania:fertilizer>,
	<botania:grasshorn>,
	<botania:grassseeds:3>,
	<botania:itemfinder>,
	<botania:lens>,
	<botania:manaresource:*>,
	<botania:manasteelboots>,
	<botania:manatablet>,
	<botania:storage:*>,
	<botania:thirdeye>,

	//calculator------------------------------------------------------------------------------------------------------------
	<calculator:algorithmseparator>,
	<calculator:calculatorscreen>,
	<calculator:powercube>,

	//cavern----------------------------------------------------------------------------------------------------------------
	<cavern:cave_block:*>,
	<cavern:cave_item>,

	//conarm----------------------------------------------------------------------------------------------------------------
	<conarm:resist_mat>,

	//cookingforblockheads--------------------------------------------------------------------------------------------------
	<cookingforblockheads:oven>,

	//darkutils-------------------------------------------------------------------------------------------------------------
	<darkutils:trap_tile:*>,

	//draconicevolution-----------------------------------------------------------------------------------------------------
	<draconicevolution:chaos_shard:*>,
	<draconicevolution:draconium_block>,
	<draconicevolution:fusion_crafting_core>,
	<draconicevolution:generator>,
	<draconicevolution:grinder>,

	//enderio---------------------------------------------------------------------------------------------------------------
	<enderio:block_dark_steel_anvil>,
	<enderio:item_material:77>,
	<enderio:item_stellar_alloy_pickaxe>,

	//environmentaltech-----------------------------------------------------------------------------------------------------
	<environmentaltech:litherite_crystal>,

	//eplus-----------------------------------------------------------------------------------------------------------------
	<eplus:advanced_table>,

	//erebus----------------------------------------------------------------------------------------------------------------
	<erebus:altar_offering>,

	//exchangers------------------------------------------------------------------------------------------------------------
	<exchangers:eio_endergy_exchanger_core_tier2>,

	//extendedcrafting------------------------------------------------------------------------------------------------------
	<extendedcrafting:crafting_core>,
	<extendedcrafting:interface>,
	<extendedcrafting:storage:*>,

	//extraplanets----------------------------------------------------------------------------------------------------------
	<extraplanets:anti_radiation>,
	<extraplanets:jupiter:13>,
	<extraplanets:kepler22b:14>,
	<extraplanets:neptune:7>,
	<extraplanets:oxygen_tank_extremely_heavy_full:*>,
	<extraplanets:thermal_cloth:*>,
	<extraplanets:tier8_items:5>,

	//extratrees------------------------------------------------------------------------------------------------------------
	<extratrees:machine:4>,

	//extrautils2-----------------------------------------------------------------------------------------------------------
	<extrautils2:flattransfernode:*>,
	<extrautils2:indexer>,
	<extrautils2:indexerremote>,
	<extrautils2:machine>,
	<extrautils2:ingredients:2>,
	<extrautils2:pipe>,
	<extrautils2:resonator>,
	<extrautils2:teleporter:1>,

	//forestry--------------------------------------------------------------------------------------------------------------
	<forestry:apiary>,
	<forestry:carpenter>,
	<forestry:database>,
	<forestry:fabricator>,
	<forestry:frame_impregnated>,
	<forestry:scoop>,
	<forestry:squeezer>,
	<forestry:sturdy_machine>,

	//gaiadimension---------------------------------------------------------------------------------------------------------
	<gaiadimension:keystone_block>,
	<gaiadimension:mega_storage_crate>,
	<gaiadimension:restructurer_idle>,
	<gaiadimension:scaynyx_bucket>,

	//galacticraftcore------------------------------------------------------------------------------------------------------
	<galacticraftcore:basic_block_core:10>,
	<galacticraftcore:basic_block_core:11>,
	<galacticraftcore:basic_block_core:12>,
	<galacticraftcore:collector>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:machine_tiered:4>,
	<galacticraftcore:magnetic_table>,
	<galacticraftcore:refinery>,

	//galacticraftplanets---------------------------------------------------------------------------------------------------
	<galacticraftplanets:asteroids_block:7>,
	<galacticraftplanets:venus:12>,

	//genetics--------------------------------------------------------------------------------------------------------------
	<genetics:lab_machine:*>,
	<genetics:machine:*>,
	<genetics:adv_machine>,

	//goodnightsleep--------------------------------------------------------------------------------------------------------
	<goodnightsleep:zitrite_block>,

	//huntingdim------------------------------------------------------------------------------------------------------------
	<huntingdim:frame>,

	//immersiveengineering--------------------------------------------------------------------------------------------------
	<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
	<thermalfoundation:material:802>,
	<immersiveengineering:storage:*>,
	<immersiveengineering:tool>,

	//industrialforegoing---------------------------------------------------------------------------------------------------
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:pitiful_fuel_generator>,

	//integrateddynamics----------------------------------------------------------------------------------------------------
	<integrateddynamics:part_machine_reader_item>,

	//lightningcraft--------------------------------------------------------------------------------------------------------
	<lightningcraft:ingot>,
	<lightningcraft:metal_block:*>,
	<lightningcraft:plate:*>,

	//lockyzextradimensionsmod----------------------------------------------------------------------------------------------
	<lockyzextradimensionsmod:dimensionflint_trigger>,

	//magicbees-------------------------------------------------------------------------------------------------------------
	<magicbees:manasteelscoop>,

	//mekanismgenerators----------------------------------------------------------------------------------------------------
	<mekanismgenerators:generator:*>,
	<mekanismgenerators:reactorglass>, //Reactor Glass

	//minecraft-------------------------------------------------------------------------------------------------------------
	<minecraft:bedrock>, //Bedrock
	<minecraft:bread>, //Bread
	<minecraft:brewing_stand>, //Brewing Stand
	<minecraft:cauldron>, //Cauldron
	<minecraft:clock>, //Clock
	<minecraft:dye:4>,
	<minecraft:emerald>, //Emerald
    <minecraft:enchanting_table:*>, //Enchanting Table
	<minecraft:ender_eye>,
	<minecraft:end_portal_frame>,
	<minecraft:piston>, //Piston

	//mist------------------------------------------------------------------------------------------------------------------
	<mist:filter_coal>,
	<mist:filter_coal_block>,

	//moreplanets-----------------------------------------------------------------------------------------------------------
	<moreplanets:tinted_glass>,

	//multiblocked----------------------------------------------------------------------------------------------------------
	<multiblocked:multiblock_builder>,

	//musictriggers---------------------------------------------------------------------------------------------------------
	Stack.blankDisc(),

	//natura----------------------------------------------------------------------------------------------------------------
	<natura:respawn_obelisk>, //Inactive Respawn Obelisk

	//naturesaura-----------------------------------------------------------------------------------------------------------
	<naturesaura:ender_crate>, //Ender Crate
	<naturesaura:gold_fiber>, //Brilliant Fiber
	<naturesaura:gold_powder>, //Gold Powder
	<naturesaura:infused_iron_block>, //Infused Iron Block

	//netherex--------------------------------------------------------------------------------------------------------------
	<netherex:dull_mirror>, //Dull Mirror

	//openblocks------------------------------------------------------------------------------------------------------------
	<openblocks:xp_shower>, //XP Shower

	//overloaded------------------------------------------------------------------------------------------------------------
	<overloaded:fluid_core>, //Fluid Core
	<overloaded:linking_card>, //Hyper Linking Card
	<overloaded:nether_star_block>, //Nether Star Block
	<overloaded:settings_editor>, //Multi-Armor Settings Editor

	//plustic---------------------------------------------------------------------------------------------------------------
	<plustic:centrifuge:*>, //Centrifuge Core & Centrifuge Tank
	<plustic:invarblock>, //Invar Block

	//projecte--------------------------------------------------------------------------------------------------------------
	<projecte:item.pe_covalence_dust:2>, //High Covalence Dust
	<projecte:item.pe_matter:*>, //Dark Matter & Red Matter
	<projecte:transmutation_table>, //Transmutation Table

	//projectex-------------------------------------------------------------------------------------------------------------
	<projectex:arcane_tablet>, //Arcane Transmutation Tablet
	<projectex:collector>, //Basic Collector [MK1]
	<projectex:matter:*>, //Matter after Red Matter
	<projectex:personal_link>, //Personal EMC Link

	//qualitytools----------------------------------------------------------------------------------------------------------
	<qualitytools:reforging_station>, //Reforging Station

	//quark-----------------------------------------------------------------------------------------------------------------
	<quark:reed_block>, //Reed
	<quark:turf>, //Turf Block

	//randomthings----------------------------------------------------------------------------------------------------------
	<randomthings:timeinabottle>, //Time in a bottle

	//scanner---------------------------------------------------------------------------------------------------------------
	<scanner:scanner>, //Scanner

	//silentgems------------------------------------------------------------------------------------------------------------
	<silentgems:chaospylon:1>, //Burner Chaos Pylon
	<silentgems:glowrosefertilizer>, //Glow Rose Fertilizer
	<silentgems:miscblock:*>, //Chaos & Essence blocks

	//solarflux-------------------------------------------------------------------------------------------------------------
	<solarflux:mirror>, //Mirror

	//tconstruct------------------------------------------------------------------------------------------------------------
	<tconstruct:metal:3>, //Block of Knightslime
	<tconstruct:seared_furnace_controller>, //Seared Furnace Controller

	//teslacorelib----------------------------------------------------------------------------------------------------------
	<teslacorelib:machine_case>, //Machine Case

	//theaurorian-----------------------------------------------------------------------------------------------------------
	<theaurorian:aurorianstone>, //Aurorian Stone
	<theaurorian:scrapaurorianite>, //Aurorianite Scrap
	<theaurorian:scrapcrystalline>, //Crystalline Scrap
	<theaurorian:scrapumbra>, //Umbra Scrap
	<theaurorian:scrapper>, //Scrapper
	<theaurorian:moonlightforge>, //Moonlight Forge

	//thermaldynamics-------------------------------------------------------------------------------------------------------
	<thermaldynamics:duct_0:*>, //Fluxducts

	//thermalexpansion------------------------------------------------------------------------------------------------------
	<thermalexpansion:augment:337>, //Augment: Gearworking Die
	<thermalexpansion:augment:369>, //Augment: Alchemical Retort
	<thermalexpansion:device:*>, //Blue thermal machines
	<thermalexpansion:dynamo:*>, //Dynamos
	<thermalexpansion:machine:*>, //Gray thermal machines

	//tinker_io-------------------------------------------------------------------------------------------------------------
	<tinker_io:upg>, //Base Upgrade

	//tombstone-------------------------------------------------------------------------------------------------------------
	<tombstone:fishing_rod_of_misadventure>, //Fishing Rod of Misadventure
	<tombstone:voodoo_poppet>, //Voodoo Poppet

	//tp--------------------------------------------------------------------------------------------------------------------
	<tp:chainmail_part>, //Chainmail Part
	<tp:flint_block>, //Compressed Flint Block
	<tp:pouch>, //Big Pouch
	<tp:reinforced_obsidian>, //Reinforced Obsidian
	<tp:steel_block>, //Steel Block

	//travelersbackpack-----------------------------------------------------------------------------------------------------
	<travelersbackpack:travelers_backpack>, //Traveler's Backpack

	//xlfoodmod-------------------------------------------------------------------------------------------------------------
	<xlfoodmod:cheese>, //Cheese

	//xreliquary------------------------------------------------------------------------------------------------------------
	<xreliquary:midas_touchstone>, //Midas Touchstone

	//zollerngalaxy---------------------------------------------------------------------------------------------------------
	<zollerngalaxy:stargate_tier10>, //Stargate (Protocol Ten)
	<zollerngalaxy:staticamber> //Static Amber
] as IItemStack[];

function run() {
    Caller.callString("vanilla",modRemovals);
	Caller.callArray("vanilla",arrayRemovals);
	Caller.call("vanilla",itemRemovals);
	furnace.removeAll();
}
