import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;

val input = IMachineSlot.newItemStackSlot("input_item", 47663, false, "natura:nether_heat_sand", 64);
val output = IMachineSlot.newItemStackSlot("output_item", 6100760, false, "natura:nether_glass:1", 64);

val hf = extrautilities2.Tweaker.IMachineRegistry.createNewMachine(
	"heat_furnace",
	2000000000, 
	20000000, 
	[input], 
	[output], 
	"natura:nether_heat_sand",
	"natura:nether_glass:1",
	13396779
);

val inputb = IMachineSlot.newItemStackSlot("input_item_blackhole", 0, false, "moreplanets:black_hole_fragments", 64);
val outputb = IMachineSlot.newItemStackSlot("output_item_blackhole", 0, false, "moreplanets:black_hole_fragments", 64);
val fluid = IMachineSlot.newFluidSlot("input_dark_matter_fluid", 1000);

val bhr = extrautilities2.Tweaker.IMachineRegistry.createNewMachine(
	"black_heart_replicator",
	2000000000, 
	20000000,
	[inputb,fluid],
	[outputb],
	"moreplanets:black_hole_fragments",
	"moreplanets:black_hole_fragments",
	0
);

//heat glass
hf.addRecipe({"input_item": <natura:nether_heat_sand>} as IIngredient[string], {"output_item": <natura:nether_glass:1>} as IIngredient[string], 2000000000, 100);

var replicatorinputblackhole as IIngredient[string] = {"input_item_blackhole": <moreplanets:black_hole_fragments>} as IIngredient[string];
replicatorinputblackhole["input_dark_matter_fluid"] = <liquid:genetic_chaos_fluid>*250;
//minature black hole
bhr.addRecipe(replicatorinputblackhole, {"output_item_blackhole": <moreplanets:black_hole_fragments>*2} as IIngredient[string], 2000000000, 100);
var replicatorinputheart as IIngredient[string] = {"input_item_blackhole": <draconicevolution:dragon_heart>} as IIngredient[string];
replicatorinputheart["input_dark_matter_fluid"] = <liquid:genetic_chaos_fluid>*250;
//dragonheart
bhr.addRecipe(replicatorinputheart, {"output_item_blackhole": <draconicevolution:dragon_heart>*2} as IIngredient[string], 2000000000, 100);