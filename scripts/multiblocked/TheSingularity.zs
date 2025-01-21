#loader multiblocked

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDHelper as MBD;

static singularityRPS as RecipeMap = MBD.initRecipeMap("singularity");

val singularityRP as RecipeMap = singularityRPS;

static singularityMap as IIngredient[IItemStack] = {
	<avaritia:singularity:12>:               <thermaldynamics:duct_0:5>*64,
	<extendedcrafting:singularity>:          <minecraft:coal_block>*16,
	<extendedcrafting:singularity:1>:        <minecraft:iron_block>*16,
	<extendedcrafting:singularity:2>:        <minecraft:lapis_block>*16,
	<extendedcrafting:singularity:3>:        <minecraft:redstone_block>*16,
	<extendedcrafting:singularity:4>:        <minecraft:glowstone>*16,
	<extendedcrafting:singularity:5>:        <minecraft:gold_block>*16,
	<extendedcrafting:singularity:6>:        <minecraft:diamond_block>*16,
	<extendedcrafting:singularity:7>:        <minecraft:emerald_block>*16,
	<extendedcrafting:singularity:16>:       <thermalfoundation:storage:4>*16,
	<extendedcrafting:singularity:17>:       <thermalfoundation:storage>*16,
	<extendedcrafting:singularity:18>:       <thermalfoundation:storage:1>*16,
	<extendedcrafting:singularity:19>:       <thermalfoundation:storage_alloy:3>*16,
	<extendedcrafting:singularity:20>:       <zollerngalaxy:zincblock>*16,
	<extendedcrafting:singularity:21>:       <tconstruct:metal:5>*16,
	<extendedcrafting:singularity:22>:       <thermalfoundation:storage:2>*16,
	<extendedcrafting:singularity:23>:       <thermalfoundation:storage:3>*16,
	<extendedcrafting:singularity:24>:       <thermalfoundation:storage_alloy>*16,
	<extendedcrafting:singularity:25>:       <thermalfoundation:storage:5>*16,
	<extendedcrafting:singularity:26>:       <thermalfoundation:storage_alloy:4>*16,
	<extendedcrafting:singularity:27>:       <thermalfoundation:storage_alloy:1>*16,
	<extendedcrafting:singularity:28>:       <thermalfoundation:storage_alloy:2>*16,
	<extendedcrafting:singularity:29>:       <thermalfoundation:storage:8>*16,
	<extendedcrafting:singularity:30>:       <extraplanets:pluto:7>*16,
	<extendedcrafting:singularity:31>:       <galacticraftplanets:asteroids_block:7>*16,
	<extendedcrafting:singularity:32>:       <immersiveengineering:storage:5>*16,
	<extendedcrafting:singularity:33>:       <ceramics:clay_hard:7>*16,
	<extendedcrafting:singularity:34>:       <thermalfoundation:storage:6>*16,
	<extendedcrafting:singularity:35>:       <thermalfoundation:storage:7>*16,
	<extendedcrafting:singularity:48>:       <thermalfoundation:storage_alloy:5>*16,
	<extendedcrafting:singularity:49>:       <thermalfoundation:storage_alloy:6>*16,
	<extendedcrafting:singularity:50>:       <thermalfoundation:storage_alloy:7>*16,
	<extendedcrafting:singularity:64>:       <tconstruct:metal:1>*16,
	<extendedcrafting:singularity:65>:       <tconstruct:metal>*16,
	<extendedcrafting:singularity:66>:       <tconstruct:metal:2>*16,
	<extendedcrafting:singularity_ultimate>: <extendedcrafting:storage:4>*16
};

//fluxed singularity
singularityRP.start()
	.name("singularity"+<avaritia:singularity:12>.definition.id+12)
	.duration(200)
	.perTick(true)
	.inputFE(66666666)
	.perTick(false)
	.inputItems(<thermaldynamics:duct_0:5>*64, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:27>)
	.inputFluids(<liquid:dark_water>*32000)
	.outputItems(<avaritia:singularity:12>)
	.buildAndRegister();

//endest pearl
singularityRP.start()
	.name("singularity"+<avaritia:endest_pearl>.definition.id+"0")
	.duration(100)
	.perTick(true)
	.inputFE(13333333)
	.perTick(false)
	.inputItems(<contenttweaker:conglomerate_crystal>, <rftools:infused_enderpearl>*16,
		<avaritia:resource:4>*4, <extendedcrafting:storage:7>*4, <enderio:item_material:16>*4)
	.inputFluids(<liquid:enderium>*9216)
	.outputItems(<avaritia:endest_pearl>)
	.buildAndRegister();

//cosmic meatballs
singularityRP.start()
	.name("singularity"+<avaritia:cosmic_meatballs>.definition.id+"0")
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
	.name("singularity"+<avaritia:resource>.definition.id+"5")
	.duration(1000)
	.perTick(true)
	.inputFE(1000000000)
	.perTick(false)
	.inputItems(<moreplanets:black_hole_fragments>*64, <enderio:block_infinity:2>*5,
		<appliedenergistics2:material:48>*5, <avaritia:resource:7>, <avaritia:cosmic_meatballs>,
		<avaritia:ultimate_stew>, <avaritia:endest_pearl>, <avaritia:singularity:12>,
		<extendedcrafting:singularity_ultimate>)
	.inputFluids(<liquid:genetic_chaos_fluid>*50000)
	.outputItems(<avaritia:resource:5>)
	.buildAndRegister();

//final singularity
singularityRP.start()
	.name("singularity"+<contenttweaker:final_singularity>.definition.id+"0")
	.duration(2000)
	.perTick(true)
	.inputFE(2000000000)
	.perTick(false)
	.inputItems(<contenttweaker:dimensional_singularity>, <projectex:final_star>,
		<bedrockcraft:origin_pearl>, <dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 31}),
		<bedrockcraft:bedrock_rose>)
	.inputFluids(<liquid:genetic_chaos_fluid>*250000)
	.outputItems(<contenttweaker:final_singularity>)
	.buildAndRegister();

//dimensional singularity
singularityRP.start()
	.name("singularity"+<contenttweaker:dimensional_singularity>.definition.id+"0")
	.duration(1500)
	.perTick(true)
	.inputFE(1500000000)
	.perTick(false)
	.inputItems(<avaritia:block_resource:1>*10, <overloaded:compressed_cobblestone:15>*10,
		<overloaded:compressed_sand:15>*10, <overloaded:compressed_stone:15>*10,
		<overloaded:compressed_obsidian:15>*10, <overloaded:compressed_netherrack:15>*10,
		<overloaded:compressed_dirt:15>*10, <overloaded:compressed_gravel:15>*10)
	.inputFluids(<liquid:genetic_chaos_fluid>*100000)
	.outputItems(<contenttweaker:dimensional_singularity>)
	.buildAndRegister();

//100 SP research skill credit
singularityRP.start()
	.name("singularity"+<dimhoppertweaks:skill_credit>.definition.id+"0")
	.duration(2000)
	.perTick(true)
	.inputFE(2000000000)
	.perTick(false)
	.inputItems(<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 30}), <avaritia:resource:5>)
	.inputFluids(<liquid:genetic_chaos_fluid>*50000)
	.outputItems(<dimhoppertweaks:skill_credit>.withTag({amount: 100, skill: "research"}))
	.buildAndRegister();

function run() {
	//singularities
	for singularity, block in singularityMap {
		MBD.singularity(singularityRPS,""+singularity.metadata,200,50000000,[block, <moreplanets:black_hole_fragments>],<liquid:dark_water>*32000,singularity);
	}

	MBD.setRecipeMap(singularityRPS,"the_singularity");
}