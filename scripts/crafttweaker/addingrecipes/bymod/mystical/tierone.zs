import mods.extendedcrafting.TableCrafting;
import mods.naturesaura.TreeRitual;

//wood seeds
TableCrafting.addShaped(1, <mysticalagriculture:wood_seeds>, [
	[<ore:crystalLonsdaleite>, <ore:logWood>, <ore:crystalLonsdaleite>], 
	[<ore:logWood>, <mysticalagriculture:crafting:17>, <ore:logWood>], 
	[<ore:crystalLonsdaleite>, <ore:logWood>, <ore:crystalLonsdaleite>]
]);

//dirt seeds
TableCrafting.addShaped(1, <mysticalagriculture:dirt_seeds>, [
	[<ore:crystalLonsdaleite>, <overloaded:compressed_dirt>, <ore:crystalLonsdaleite>], 
	[<overloaded:compressed_dirt>, <mysticalagriculture:crafting:17>, <overloaded:compressed_dirt>], 
	[<ore:crystalLonsdaleite>, <overloaded:compressed_dirt>, <ore:crystalLonsdaleite>]
]);

//stone seeds
TableCrafting.addShaped(1, <mysticalagriculture:stone_seeds>, [
	[<ore:crystalLonsdaleite>, <overloaded:compressed_stone:2>, <ore:crystalLonsdaleite>], 
	[<overloaded:compressed_stone:2>, <mysticalagriculture:crafting:17>, <overloaded:compressed_stone:2>], 
	[<ore:crystalLonsdaleite>, <overloaded:compressed_stone:2>, <ore:crystalLonsdaleite>]
]);

//water seeds
TableCrafting.addShaped(1, <mysticalagriculture:water_seeds>, [
	[<ore:crystalLonsdaleite>, <overloaded:infinite_water_source>, <ore:crystalLonsdaleite>], 
	[<overloaded:infinite_water_source>, <mysticalagriculture:crafting:17>, <overloaded:infinite_water_source>], 
	[<ore:crystalLonsdaleite>, <overloaded:infinite_water_source>, <ore:crystalLonsdaleite>]
]);

//ice seeds
TableCrafting.addShaped(1, <mysticalagriculture:ice_seeds>, [
	[<ore:crystalLonsdaleite>, <cavern:slippery_ice>, <ore:crystalLonsdaleite>], 
	[<cavern:slippery_ice>, <mysticalagriculture:crafting:17>, <cavern:slippery_ice>], 
	[<ore:crystalLonsdaleite>, <cavern:slippery_ice>, <ore:crystalLonsdaleite>]
]);

//nature seeds
TableCrafting.addShaped(1, <mysticalagriculture:nature_seeds>, [
	[<ore:crystalLonsdaleite>, <mysticalagriculture:crafting:6>, <ore:crystalLonsdaleite>], 
	[<mysticalagriculture:crafting:6>, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:6>], 
	[<ore:crystalLonsdaleite>, <mysticalagriculture:crafting:6>, <ore:crystalLonsdaleite>]
]);

//nature cluster
TreeRitual.addRecipe("naturecluster", <integrateddynamics:menril_sapling>, <mysticalagriculture:crafting:6>, 200, [<minecraft:cactus>, <botania:felpumpkin>, <tp:compressed_sugar_cane>, <minecraft:hay_block>]);

//nature essence crafts

//nature cluster
recipes.addShaped("natrueessence1", <mysticalagriculture:crafting:6>, [
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>]
]);

//brown mushroom
recipes.addShaped("natrueessence2", <minecraft:brown_mushroom>, [
[<mysticalagriculture:nature_essence>, null, null],
[null, <mysticalagriculture:dirt_essence>, null],
[null, null, <mysticalagriculture:nature_essence>]
]);

//red mushroom
recipes.addShaped("natrueessence3", <minecraft:brown_mushroom>, [
[null, null, <mysticalagriculture:nature_essence>],
[null, <mysticalagriculture:dirt_essence>, null],
[<mysticalagriculture:nature_essence>, null, null]
]);

//lilypad
recipes.addShaped("natrueessence4", <minecraft:waterlily>*8, [
[<mysticalagriculture:nature_essence>, null, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>]
]);

//vines
recipes.addShaped("natrueessence5", <minecraft:vine>*8, [
[<mysticalagriculture:nature_essence>, null, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, null, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:nature_essence>, null, <mysticalagriculture:nature_essence>]
]);

//grass
recipes.addShaped("natrueessence6", <minecraft:grass>*16, [
[<mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>]
]);

//moss stone
recipes.addShaped("natrueessence7", <minecraft:mossy_cobblestone>*16, [
[<mysticalagriculture:nature_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:nature_essence>],
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>],
[<mysticalagriculture:nature_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:nature_essence>]
]);

//mycelium
recipes.addShaped("natrueessence8", <minecraft:mycelium>*4, [
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>]
]);

//nether mycelium
recipes.addShaped("natrueessence9", <biomesoplenty:grass:8>*4, [
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nature_essence>, <mysticalagriculture:nether_essence>],
[<mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>, <mysticalagriculture:nether_essence>]
]);

//water essence crafts

//water bucket
recipes.addShaped("wateressence1", <minecraft:water_bucket>, [
[<mysticalagriculture:iron_essence>, <mysticalagriculture:water_essence>, <mysticalagriculture:iron_essence>],
[null, <mysticalagriculture:iron_essence>, null]
]);

//ice essence crafts

//ice
recipes.addShaped("iceessence1", <minecraft:ice>*16, [
[<mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>],
[<mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>],
[<mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>, <mysticalagriculture:ice_essence>]
]);

//wood essence crafts

//oak wood
recipes.addShaped("woodessence1", <minecraft:log>*16, [
[<mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>],
[<mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>],
[<mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>, <mysticalagriculture:wood_essence>]
]);

//dirt essence crafts

//dirt
recipes.addShaped("dirtessence1", <minecraft:dirt>*2, [
[<mysticalagriculture:dirt_essence>]
]);

//comp dirt 1
recipes.addShaped("dirtessence2", <overloaded:compressed_dirt>*2, [
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>]
]);

//comp dirt 2
recipes.addShaped("dirtessence3", <overloaded:compressed_dirt:1>*2, [
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>],
[<mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>, <mysticalagriculture:dirt_essence>]
]);

//stone essence crafts

//stone
recipes.addShaped("stoneessence1", <minecraft:stone>*2, [
[<mysticalagriculture:stone_essence>]
]);

//comp stone 1
recipes.addShaped("stoneessence2", <overloaded:compressed_stone>*2, [
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>],
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>]
]);

//comp stone 2
recipes.addShaped("stoneessence3", <overloaded:compressed_stone:1>*2, [
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>],
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>],
[<mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>, <mysticalagriculture:stone_essence>]
]);