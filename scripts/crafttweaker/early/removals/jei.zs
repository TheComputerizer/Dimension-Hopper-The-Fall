#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;
import scripts.crafttweaker.early.util.Stacks as Stack;

static arrayRemovals as IItemStack[][] = [
    //materials
    Stack.commonMetas("material", {
            "erebus":[42,43,44,45,46],
            "extendedcrafting":[140],
            "thermalfoundation":[96]},
        {"erebus":"-s"}),

    //actuallyadditions
    Stack.append("actuallyadditions:block_", ["furnace_double", "grinder", "grinder_double"]),

    //artisanautomation
    Stack.append("artisanautomation:upgrade_auto_", ["export", "import"], 0, "_items"),

    //artisanworktables
    Stack.metas(<artisanworktables:workshop>, [0,14]),
    Stack.metas(<artisanworktables:workstation>, [0,14]),
    Stack.metas(<artisanworktables:worktable>, [0,14]),

    //botania
    Stack.append("botania:elementium", ["boots", "chest", "helm", "helmreveal", "legs"]),
    Stack.append("botania:manasteel", ["boots", "chest", "helm", "helmreveal", "legs"]),

    //chambers
    Stack.append("chambers:", ["anvil", "fluid", "soul_anvil"], 0, "_chamber"),

    //enderio
    Stack.append("enderio:block_", ["crafter", "farm_station", "simple_crafter"]),
    Stack.append("enderio:block_dark_", ["paper_anvil", "steel_anvil"], 32767),
    Stack.append("enderio:item_end_steel_", ["pickaxe", "sword"]),

    //environmentaltech
    Stack.incrementals("environmentaltech:lightning_cont_", [1,2,3,4,5,6]),
    Stack.append("environmentaltech:solar_cell_", ["aethium", "erodium", "ionite", "kyronite", "litherite", "pladium"]),
    Stack.incrementals("environmentaltech:solar_cont_", [1,2,3,4,5,6]),

    //extraplanets
    Stack.incrementals("extraplanets:item_tier", [5,6,8,9,10], 32767, "_rocket"),
    Stack.metas(<extraplanets:item_tier7_rocket>, [1,2,3]),
    Stack.metas(<extraplanets:item_tier10_electric_rocket>, [1,2,3]),
    Stack.incrementals("extraplanets:tier", [4,5,6,7,8,9,10], 1, "_items"),

	//extrautils2
    Stack.append("extrautils2:compressed", ["cobblestone", "dirt", "gravel", "netherrack", "sand"], 32767),

    //forestry
    Stack.metas(<forestry:resource_storage>, [1,3]),

    //gaiadimension
    Stack.append("gaiadimension:gaia_stone_furnace_", ["idle", "lit"]),

    //galacticraftcore
    Stack.metas(<galacticraftcore:basic_item>, [3,4,5]),
    Stack.metas(<galacticraftcore:rocket_t1>, [1,2,3]),

    //galacticraftplanets
    Stack.incrementals("galacticraftplanets:rocket_t", [2,3], 32767),

    //industrialforegoing
    Stack.append("industrialforegoing:laser_", ["base", "drill"]),

    //integratedcrafting
    Stack.append("integratedcrafting:part_", ["crafting_writer", "interface_crafting"], 0, "_item"),

    //lightningcraft
    Stack.append("lightningcraft:elec_", ["boots", "chest", "helm", "legs"]),
    Stack.append("lightningcraft:mystic_", ["boots", "chest", "helm", "legs"]),
    Stack.append("lightningcraft:sky_", ["axe", "boots", "chest", "helm", "legs", "pick", "shovel"]),

    //lockyzextradimensionsmod
    Stack.append("lockyzextradimensionsmod:alternate", ["armourbody", "armourboots", "armourhelmet", "armourlegs", "pickaxe"]),
    Stack.append("lockyzextradimensionsmod:interdimensional", ["armourbody", "armourboots", "armourhelmet", "armourlegs", "pickaxe"]),

    //magicbees
    Stack.incrementals("magicbees:backpack_thaumaturge_t", [1,2]),

    //mekanism
    Stack.metas(<mekanism:machineblock>, [5,6,7,10,11,13]),
    Stack.metas(<mekanism:machineblock3>, [5,6]),

    //mysticalagriculture
    Stack.append("mysticalagriculture:", ["alumite", "amber", "ardite", "apatite", "basalz", "blaze", "blitz", "blizz", "chicken", "cobalt",
        "cow", "creeper", "enderman", "experience", "fiery_ingot", "fluix", "ghast", "guardian", "ironwood", "jade", "knightmetal", 
        "knightslime", "malachite", "obsidian", "peridot", "pig", "rabbit", "redstone", "redstone_alloy", "ruby", "sapphire", "sheep", 
        "skeleton", "soularium", "spider", "steeleaf", "tanzanite", "topaz", "zombie"], 0, "_seeds"),

    //openblocks
    Stack.append("openblocks:auto_", ["anvil", "enchantment_table"]),

    //projecte
    Stack.incrementals("projecte:collector_mk", [1,2,3]),
    Stack.incrementals("projecte:condenser_mk", [1,2]),
    Stack.append("projecte:dm_", ["furnace", "pedestal"]),
    Stack.incrementals("projecte:item.pe_dm_armor_", [0,1,2,3]),
    Stack.incrementals("projecte:item.pe_gem_armor_", [0,1,2,3]),
    Stack.incrementals("projecte:item.pe_rm_armor_", [0,1,2,3]),
    Stack.incrementals("projecte:relay_mk", [1,2,3]),

    //theaurorian
    Stack.append("theaurorian:aurorianfurnace", ["", "chimney", "lit"]),

    //thermaldynamics
    Stack.metas(<thermaldynamics:duct_0>, [7,8]),

    //thermalfoundation
    Stack.append("thermalfoundation:tome_", ["experience", "lexicon"]),

    //tp
    Stack.append("tp:", ["charcoal", "iron_furnace", "netherstar"], 0, "_block"),

    //zollerngalaxy
    Stack.incrementals("zollerngalaxy:stargate_tier", [1,2,3,4,5,6,7,8,9,918]),
    Stack.append("zollerngalaxy:zinc", ["ingot", "block"])
] as IItemStack[][];

static itemRemovals as IItemStack[] = [
    //actuallyadditions
    <actuallyadditions:block_misc:5>,

    //aether
    <aether:holystone_furnace>,

    //aroma1997sdimension
    <aroma1997sdimension:dimensionchanger>,

    //atum
    <atum:kiln>,
    <atum:kiln_fake>,
    <atum:limestone_furnace>,

    //avaritia
    <avaritia:neutron_collector>,
    <avaritia:neutronium_compressor>,

    //blue_skies
    <blue_skies:horizonite_pickaxe>,

    //botania
    <botania:craftinghalo>,
    <botania:flighttiara:*>,
    <botania:goddesscharm>,
    <botania:knockbackbelt>,
    <botania:miningring>,
    <botania:quartz>,
    <botania:waterring>,

    //cavern
    <cavern:cave_block:1>,

    //chisel
    <chisel:block_charcoal>,

    //draconicevolution
    <draconicevolution:draconium_chest>,

    //enderio
    <enderio:item_dark_steel_sword>,

    //erebuc
    <erebus:umber_furnace>,

    //extendedcrafting
    <extendedcrafting:storage:2>,

    //extraplanets
    <extraplanets:ingot_lead>,

    //extrautils2
    <extrautils2:analogcrafter>,
    <extrautils2:chickenring:1>,
    <extrautils2:crafter>,
    <extrautils2:terraformer:*>,
    <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),

    //forestry
    <forestry:centrifuge>,
    <forestry:charcoal>,
    <forestry:gear_copper>,

    //gaiadimension
    <gaiadimension:restructurer_lit>,

    //galacitraftcore
    <galacticraftcore:basic_block_core:9>,
    <galacticraftcore:emergency_kit>,
    <galacticraftcore:engine:1>,
    <galacticraftcore:machine:12>,
    <galacticraftcore:rocket_workbench>,

    //galacticraftplanets
    <galacticraftplanets:basic_item_venus:1>,
    <galacticraftplanets:geothermal_generator>,
    <galacticraftplanets:titanium_pickaxe>,

    //immersiveengineering
    <immersiveengineering:storage>,

    //industrialforegoing
    <industrialforegoing:pitiful_fuel_generator>,
    <industrialforegoing:resourceful_furnace>,

    //integrateddynamics
    <integrateddynamics:coal_generator>,

    //lightningcraft
    <lightningcraft:golf_club_gold>,
    <lightningcraft:lightning_infuser>,
    <lightningcraft:plate>,
    <lightningcraft:lightning_furnace>,
    <lightningcraft:lightning_crusher>,

    //lockyzextradimensionsmod
    <lockyzextradimensionsmod:flintblock>,

    //mekanism
    <mekanism:basicblock:3>,

    //midnight
    <midnight:midnight_furnace>,

    //minecraft
    <minecraft:anvil:*>,
    <minecraft:enchanting_table:*>,
    <minecraft:furnace:*>,
    <minecraft:furnace_minecart>,

    //mist
    <mist:furnace>,

    //mob_grinding_utils
    <mob_grinding_utils:dark_oak_stone>,
    <mob_grinding_utils:mob_swab>,
    <mob_grinding_utils:null_sword>,
    <mob_grinding_utils:saw_upgrade:*>,

    //moreplanets
    <moreplanets:infected_furnace>,
    <moreplanets:terrastone_furnace>,

    //moreavaritia
    <moreavaritia:balancedinfinitysword>,

    //natura
    <natura:flint_and_blaze>,
    <natura:netherrack_furnace>,

    //portalgun
    <portalgun:item_dust_ender_pearl>,

    //projecte
    <projecte:alchemical_chest>,
    <projecte:item.pe_alchemical_bag:*>,
    <projecte:rm_furnace>,

    //projectex
    <projectex:alchemy_table>,
    <projectex:knowledge_sharing_book>,
    <projectex:stone_table>,

    //randomthings
    <randomthings:blazeandsteel>,

    //rftools
    <rftools:syringe>,

    //silentgems
    <silentgems:food>,

    //tconstruct
    <tconstruct:slime_boots>,

    //thermalfoundation
    <thermalfoundation:rockwool:*>,

    //tinker_io
    <tinker_io:crushed_ore>,
    <tinker_io:ore_crusher>,
    <tinker_io:upg:6>,

    //tp
    <tp:wooden_shears>,
    <tp:wub_ingot>,

    //twilightforest
    <twilightforest:block_storage:2>,
    <twilightforest:cinder_furnace>,
    <twilightforest:steeleaf_pickaxe>,
    <twilightforest:fiery_pickaxe>,

    //xreliquary
    <xreliquary:alkahestry_tome:*>,
    <xreliquary:twilight_cloak>,
    
    //zollerngalaxy
    <zollerngalaxy:bedrockbreaker>,
    <zollerngalaxy:evenium_pickaxe>,
    <zollerngalaxy:lapisingot>
] as IItemStack[];

static itemHiders as IItemStack[] = [
    //erebus
    <erebus:umber_furnace_active>,

    //tconstruct
    <tconstruct:clay_cast>
] as IItemStack[];

//category removals
static categories as string[] = [
    "atum.kiln",
    "Avatitia.Compressor",
    "extendedcrafting:compressor",
    "extraplanets.rocketT4","extraplanets.rocketT5","extraplanets.rocketT6","extraplanets.rocketT7","extraplanets.rocketT8","extraplanets.rocketT9","extraplanets.rocketT10","extraplanets.rocketT10Electric",
    "ORE_WASHER","ORE_FERMENTER",
    "jeresources.enchantment",
    "lightningcraft.crusher_recipe_category","lightningcraft.infusion_recipe_category",
    "tinker_io:fuel_input_machine","tinker_io:smart_output",
] as string[];

function run() {
    Caller.callString("jei",categories);
    Caller.callArray("jei",arrayRemovals);
    Caller.call("jei",itemRemovals);
    Caller.call("jei",itemHiders,1);
}