#loader preinit

import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;

val input = IMachineSlot.newItemStackSlot("input_item", 47663, false, "natura:blocks/sand/heat_sand", 64);
val output = IMachineSlot.newItemStackSlot("output_item", 6100760, false, "natura:blocks/glass/glass_heat", 64);

IMachineRegistry.createNewMachine(
	"heat_furnace",
	2000000000, 
	20000000, 
	[input], 
	[output], 
	"natura:blocks/sand/heat_sand",
	"natura:blocks/glass/glass_heat",
	13396779
);

val inputb = IMachineSlot.newItemStackSlot("input_item_blackhole", 0, false, "moreplanets:items/black_hole_fragments", 64);
val outputb = IMachineSlot.newItemStackSlot("output_item_blackhole", 0, false, "moreplanets:items/black_hole_fragments", 64);
val fluid = IMachineSlot.newFluidSlot("input_dark_matter_fluid", 1000);

IMachineRegistry.createNewMachine(
	"black_heart_replicator",
	2000000000, 
	20000000,
	[inputb,fluid],
	[outputb],
	"moreplanets:items/black_hole_fragments",
	"moreplanets:items/black_hole_fragments",
	0
);