#reloadable

import crafttweaker.item.IItemStack;

recipes.addShaped("blockupdatedetector", <darkutils:update_detector>, [
[<overloaded:compressed_stone>, <darkutils:timer>, <overloaded:compressed_stone>],
[<darkutils:timer>, <minecraft:observer>, <darkutils:timer>],
[<overloaded:compressed_stone>, <darkutils:timer>, <overloaded:compressed_stone>]
]);

val traps = [
<darkutils:trap_tile>,
<darkutils:trap_tile:1>,
<darkutils:trap_tile:2>,
<darkutils:trap_tile:3>,
<darkutils:trap_tile:4>,
<darkutils:trap_tile:5>,
<darkutils:trap_tile:6>,
<darkutils:trap_tile:7>
] as IItemStack[];

val trapMat = [
<minecraft:spider_eye>,
<minecraft:fermented_spider_eye>,
<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
<minecraft:flint_and_steel>,
<minecraft:skull:1>,
<scalinghealth:heartcontainer>,
<actuallyadditions:item_player_probe>
] as IItemStack[];

for i, item in traps {
	recipes.addShaped(item.name, item, [
	[<sonarcore:stablestoneblackrimmed_plain>, <sonarcore:stablestoneblackrimmed_plain>, <sonarcore:stablestoneblackrimmed_plain>],
	[<sonarcore:stablestoneblackrimmed_plain>, trapMat[i], <sonarcore:stablestoneblackrimmed_plain>],
	[<sonarcore:stablestoneblackrimmed_plain>, <sonarcore:stablestoneblackrimmed_plain>, <sonarcore:stablestoneblackrimmed_plain>]]);
}