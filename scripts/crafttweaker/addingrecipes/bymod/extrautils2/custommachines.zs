import crafttweaker.item.IIngredient;
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;

val heatFurnace as IMachine = IMachineRegistry.getMachine("heat_furnace");
val blackHeartReplicator as IMachine = IMachineRegistry.getMachine("black_heart_replicator");


//heat glass
heatFurnace.addRecipe({"input_item": <natura:nether_heat_sand>} as IIngredient[string], 
	{"output_item": <natura:nether_glass:1>} as IIngredient[string], 2000000000, 100);

//minature black hole
blackHeartReplicator.addRecipe({"input_item_blackhole": <moreplanets:black_hole_fragments>,"input_dark_matter_fluid": <liquid:genetic_chaos_fluid>*250} as IIngredient[string], 
	{"output_item_blackhole": <moreplanets:black_hole_fragments>*2} as IIngredient[string], 2000000000, 100);

//dragonheart
blackHeartReplicator.addRecipe({"input_item_blackhole": <draconicevolution:dragon_heart>,"input_dark_matter_fluid": <liquid:genetic_chaos_fluid>*250} as IIngredient[string], 
	{"output_item_blackhole": <draconicevolution:dragon_heart>*2} as IIngredient[string], 2000000000, 100);