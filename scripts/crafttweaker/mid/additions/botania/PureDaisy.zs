#reloadable

import mods.botania.PureDaisy;

for meta in 0 .. 14 {
	val obsidian=<overloaded:compressed_obsidian>.definition.makeStack(meta);
	val stone=<overloaded:compressed_stone>.definition.makeStack(meta+2);
	PureDaisy.addRecipe(obsidian, stone, (150+(meta+1)*50));
}

//Agate Logs
PureDaisy.addRecipe(<gaiadimension:thick_glitter_block>, <gaiadimension:pink_agate_log>, 100);
PureDaisy.addRecipe(<gaiadimension:pink_agate_log>, <gaiadimension:blue_agate_log>, 100);
PureDaisy.addRecipe(<gaiadimension:blue_agate_log>, <gaiadimension:green_agate_log>, 100);
PureDaisy.addRecipe(<gaiadimension:green_agate_log>, <gaiadimension:purple_agate_log>, 100);
PureDaisy.addRecipe(<gaiadimension:purple_agate_log>, <gaiadimension:thick_glitter_block>, 100);