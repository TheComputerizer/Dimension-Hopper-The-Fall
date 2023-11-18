#reloadable

import mods.immersiveengineering.ArcFurnace;

ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);

ArcFurnace.addRecipe(<aether:gravitite_plate>*2, <aether:gravitite_ore>, <immersiveengineering:material:7>, 200, 2048);

// Neptunium Recycling
ArcFurnace.addRecipe(<aquaculture:loot:1>, <aquaculture:neptunium_pickaxe>, <minecraft:string>, 200, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>, <aquaculture:neptunium_shovel>, <minecraft:string>, 200, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>, <aquaculture:neptunium_axe>, <minecraft:string>, 200, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>, <aquaculture:neptunium_hoe>, <minecraft:string>, 200, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>, <aquaculture:neptunium_sword>, <minecraft:string>, 200, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>*2, <aquaculture:neptunium_helmet>, <minecraft:string>, 400, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>*4, <aquaculture:neptunium_chestplate>, <minecraft:string>, 800, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>*3, <aquaculture:neptunium_leggings>, <minecraft:string>, 600, 2048);
ArcFurnace.addRecipe(<aquaculture:loot:1>*2, <aquaculture:neptunium_boots>, <minecraft:string>, 400, 2048);

// Zinc
ArcFurnace.removeRecipe(<zollerngalaxy:zincingot>);
ArcFurnace.addRecipe(<zollerngalaxy:zincingot>, <zollerngalaxy:zincdust>, null, 100, 512);
ArcFurnace.addRecipe(<zollerngalaxy:zincingot>, <ore:oreZinc>, <immersiveengineering:material:7>, 200, 512);