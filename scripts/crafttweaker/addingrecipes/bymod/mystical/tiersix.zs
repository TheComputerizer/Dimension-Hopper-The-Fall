import crafttweaker.item.IItemStack;
import mods.extendedcrafting.CombinationCrafting;

val seeds = [
	<mysticalagradditions:dragon_egg_seeds>,
	<mysticalagradditions:nether_star_seeds>,
	<mysticalagradditions:awakened_draconium_seeds>
] as IItemStack[];

val blocks = [
	<minecraft:dragon_egg>,
	<overloaded:nether_star_block>,
	<draconicevolution:draconic_block>
] as IItemStack[];

for i, seed in seeds {
	CombinationCrafting.addRecipe(seeds[i], 1000000000, 50000000, <mysticalagradditions:insanium:1>, [blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], 
	blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], blocks[i], <extendedcrafting:storage:4>]);
}

//neutronium
CombinationCrafting.addRecipe(<mysticalagradditions:neutronium_seeds>, 10000000000, 500000000, <mysticalagradditions:insanium:1>, [<avaritia:block_resource>, <avaritia:block_resource>,
	<avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, 
	<avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, 
	<avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, <avaritia:block_resource>, 
	<avaritia:block_resource>, <avaritia:block_resource:1>]);

val essences = [
	<mysticalagradditions:dragon_egg_essence>,
	<mysticalagradditions:nether_star_essence>,
	<mysticalagradditions:awakened_draconium_essence>,
	<mysticalagradditions:neutronium_essence>
] as IItemStack[];

val crafts = [
	<mysticalagradditions:stuff:2>,
	<lightningcraft:material>,
	<draconicevolution:nugget:1>,
	<avaritia:resource:2>
] as IItemStack[];

for i, thing in essences {
	CombinationCrafting.addRecipe(crafts[i], 100000000, 50000000, <projecte:item.pe_klein_star>, [essences[i], essences[i], essences[i], essences[i], essences[i], essences[i], essences[i], essences[i]]);
}