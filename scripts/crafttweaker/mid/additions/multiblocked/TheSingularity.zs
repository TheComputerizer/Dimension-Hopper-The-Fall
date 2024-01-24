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

val singularityRP = RecipeMap("singularity_recipes") as RecipeMap;
RecipeMap.register(singularityRP);

val singularities = [
<extendedcrafting:singularity:35>,
<extendedcrafting:singularity:48>,
<extendedcrafting:singularity:49>,
<extendedcrafting:singularity:50>,
<extendedcrafting:singularity:64>,
<extendedcrafting:singularity:65>,
<extendedcrafting:singularity:66>,
<extendedcrafting:singularity_ultimate>,
<jaopca:avaritia_singularity.amaranth>,
<extendedcrafting:singularity>,
<extendedcrafting:singularity:1>,
<extendedcrafting:singularity:2>,
<extendedcrafting:singularity:3>,
<extendedcrafting:singularity:4>,
<extendedcrafting:singularity:5>,
<extendedcrafting:singularity:6>,
<extendedcrafting:singularity:7>,
<extendedcrafting:singularity:16>,
<extendedcrafting:singularity:17>,
<extendedcrafting:singularity:18>,
<extendedcrafting:singularity:19>,
<extendedcrafting:singularity:20>,
<extendedcrafting:singularity:21>,
<extendedcrafting:singularity:22>,
<extendedcrafting:singularity:23>,
<extendedcrafting:singularity:24>,
<extendedcrafting:singularity:25>,
<extendedcrafting:singularity:26>,
<extendedcrafting:singularity:27>,
<extendedcrafting:singularity:28>,
<extendedcrafting:singularity:29>,
<extendedcrafting:singularity:30>,
<extendedcrafting:singularity:31>,
<extendedcrafting:singularity:32>,
<extendedcrafting:singularity:33>,
<extendedcrafting:singularity:34>,
<jaopca:avaritia_singularity.ammolite>,
<jaopca:avaritia_singularity.aquamarine>,
<jaopca:avaritia_singularity.aqua_middle_gem>,
<jaopca:avaritia_singularity.ascendium>,
<jaopca:avaritia_singularity.azurite>,
<jaopca:avaritia_singularity.beryl>,
<jaopca:avaritia_singularity.black_diamond>,
<jaopca:avaritia_singularity.blue_diamond>,
<jaopca:avaritia_singularity.blue_gem>,
<jaopca:avaritia_singularity.carbon>,
<jaopca:avaritia_singularity.chargium>,
<jaopca:avaritia_singularity.crystal>,
<jaopca:avaritia_singularity.draconium>,
<jaopca:avaritia_singularity.etrium>,
<jaopca:avaritia_singularity.evenium>,
<jaopca:avaritia_singularity.fueltonium>,
<jaopca:avaritia_singularity.magnesium>,
<jaopca:avaritia_singularity.mercury>,
<jaopca:avaritia_singularity.niobium>,
<jaopca:avaritia_singularity.octine>,
<jaopca:avaritia_singularity.osmium>,
<jaopca:avaritia_singularity.palladium>,
<jaopca:avaritia_singularity.plutonium>,
<jaopca:avaritia_singularity.radium>,
<jaopca:avaritia_singularity.shinium>,
<jaopca:avaritia_singularity.syrmorite>,
<jaopca:avaritia_singularity.virinium>,
<jaopca:avaritia_singularity.zollernium>,
<jaopca:avaritia_singularity.agate>,
<jaopca:avaritia_singularity.alexandrite>,
<jaopca:avaritia_singularity.amber>,
<jaopca:avaritia_singularity.amethyst>,
<jaopca:avaritia_singularity.ametrine>,
<jaopca:avaritia_singularity.dimensional_shard>
] as IItemStack[];

val blocks = [
<thermalfoundation:storage:7>,
<thermalfoundation:storage_alloy:5>,
<thermalfoundation:storage_alloy:6>,
<thermalfoundation:storage_alloy:7>,
<tconstruct:metal:1>,
<tconstruct:metal>,
<tconstruct:metal:2>,
<extendedcrafting:storage:4>,
<zollerngalaxy:amaranthblock>,
<minecraft:coal_block>,
<minecraft:iron_block>,
<minecraft:lapis_block>,
<minecraft:redstone_block>,
<minecraft:glowstone>,
<minecraft:gold_block>,
<minecraft:diamond_block>,
<minecraft:emerald_block>,
<thermalfoundation:storage:4>,
<thermalfoundation:storage>,
<thermalfoundation:storage:1>,
<thermalfoundation:storage_alloy:3>,
<zollerngalaxy:zincblock>,
<tconstruct:metal:5>,
<thermalfoundation:storage:2>,
<thermalfoundation:storage:3>,
<thermalfoundation:storage_alloy>,
<thermalfoundation:storage:5>,
<thermalfoundation:storage_alloy:4>,
<thermalfoundation:storage_alloy:1>,
<thermalfoundation:storage_alloy:2>,
<thermalfoundation:storage:8>,
<extraplanets:pluto:7>,
<galacticraftplanets:asteroids_block:7>,
<immersiveengineering:storage:5>,
<ceramics:clay_hard:7>,
<thermalfoundation:storage:6>,
<silentgems:gemblocksuperlight:11>,
<silentgems:gemblocksuper:8>,
<thebetweenlands:aqua_middle_gem_block>,
<jaopca:block.ascendium>,
<zollerngalaxy:azuriteblock>,
<silentgems:gemblocksuperdark:4>,
<silentgems:gemblocksuperdark:14>,
<jaopca:block.blue_diamond>,
<extraplanets:neptune:11>,
<extraplanets:mercury:11>,
<zollerngalaxy:chargiumblock>,
<extraplanets:uranus:4>,
<draconicevolution:draconium_block>,
<zollerngalaxy:perdetriumblock>,
<zollerngalaxy:eveniumblock>,
<zollerngalaxy:fueltoniumblock>,
<extraplanets:saturn:7>,
<extraplanets:mercury:7>,
<mist:niobium_block>,
<thebetweenlands:octine_block>,
<mekanism:basicblock>,
<extraplanets:jupiter:8>,
<zollerngalaxy:plutoniumblock>,
<zollerngalaxy:radiumblock>,
<zollerngalaxy:shiniumblock>,
<thebetweenlands:syrmorite_block>,
<zollerngalaxy:compressedviriniumblock>,
<zollerngalaxy:zollerniumblock>,
<silentgems:gemblocksuper:12>,
<silentgems:gemblocksuperdark:15>,
<silentgems:gemblocksuper:3>,
<silentgems:gemblocksuper:11>,
<silentgems:gemblocksuperdark:13>,
<jaopca:block.dimensional_shard>
] as IItemStack[];

for i, stuff in singularities {
	singularityRP.start()
	.duration(200)
	.perTick(true)
	.inputFE(50000000)
	.perTick(false)
	.inputItems(blocks[i]*10,<moreplanets:black_hole_fragments>)
	.inputFluids(<liquid:dark_water>*32000)
	.outputItems(singularities[i])
	.buildAndRegister();
}

//endest pearl
singularityRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(13333333)
	.perTick(false)
	.inputItems(<contenttweaker:conglomerate_crystal>,<rftools:infused_enderpearl>*16,<avaritia:resource:4>*4,<extendedcrafting:storage:7>*4,<enderio:item_material:16>*4)
	.inputFluids(<liquid:enderium>*9216)
	.outputItems(<avaritia:endest_pearl>)
	.buildAndRegister();

//cosmic meatballs
singularityRP.start()
	.duration(100)
	.perTick(true)
	.inputFE(13333333)
	.perTick(false)
	.inputItems(<avaritia:resource:2>*4)
	.inputFluids(<liquid:if.protein>*32000)
	.outputItems(<avaritia:cosmic_meatballs>)
	.buildAndRegister();

//infinity catalyst
singularityRP.start()
	.duration(1000)
	.perTick(true)
	.inputFE(1000000000)
	.perTick(false)
	.inputItems(<moreplanets:black_hole_fragments>*64,<enderio:block_infinity:2>*5,<appliedenergistics2:material:48>*5,<avaritia:resource:7>,<avaritia:cosmic_meatballs>,<avaritia:ultimate_stew>,<avaritia:endest_pearl>,<jaopca:avaritia_singularity.radium>,<jaopca:avaritia_singularity.dimensional_shard>,<extendedcrafting:singularity_ultimate>)
	.inputFluids(<liquid:genetic_chaos_fluid>*50000)
	.outputItems(<avaritia:resource:5>)
	.buildAndRegister();

//final singularity
singularityRP.start()
	.duration(2000)
	.perTick(true)
	.inputFE(2000000000)
	.perTick(false)
	.inputItems(<contenttweaker:dimensional_singularity>,<projectex:final_star>,<bedrockcraft:origin_pearl>,<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 31}),<bedrockcraft:bedrock_rose>)
	.inputFluids(<liquid:genetic_chaos_fluid>*250000)
	.outputItems(<contenttweaker:final_singularity>)
	.buildAndRegister();

//dimensional singularity
singularityRP.start()
	.duration(1500)
	.perTick(true)
	.inputFE(1500000000)
	.perTick(false)
	.inputItems(<avaritia:block_resource:1>*10,<overloaded:compressed_cobblestone:15>*10,<overloaded:compressed_sand:15>*10,<overloaded:compressed_stone:15>*10,<overloaded:compressed_obsidian:15>*10,<overloaded:compressed_netherrack:15>*10,<overloaded:compressed_dirt:15>*10,<overloaded:compressed_gravel:15>*10)
	.inputFluids(<liquid:genetic_chaos_fluid>*100000)
	.outputItems(<contenttweaker:dimensional_singularity>)
	.buildAndRegister();

//100 SP research skill credit
singularityRP.start()
	.duration(2000)
	.perTick(true)
	.inputFE(2000000000)
	.perTick(false)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 30}), <avaritia:resource:5>)
	.inputFluids(<liquid:genetic_chaos_fluid>*50000)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 100, skill: "research"}))
	.buildAndRegister();

var definition as ComponentDefinition = MBDRegistry.getDefinition("dimensionhopper:the_singularity");
var the_singularity = definition as ControllerDefinition;
the_singularity.recipeMap = singularityRP;