#reloadable

import crafttweaker.item.IItemStack;

val essences = [
	<mysticalagriculture:diamond_essence>,
	<mysticalagriculture:titanium_essence>,
	<mysticalagriculture:platinum_essence>,
	<mysticalagriculture:enderium_essence>,
	<mysticalagriculture:vibrant_alloy_essence>,
	<mysticalagriculture:end_steel_essence>,
	<mysticalagriculture:emerald_essence>,
	<mysticalagriculture:uranium_essence>,
	<mysticalagriculture:iridium_essence>,
	<mysticalagriculture:refined_obsidian_essence>,
	<mysticalagriculture:desh_essence>,
	<mysticalagriculture:valonite_essence>
] as IItemStack[];

//essence crafts basic recipes
val crafts = [
	<minecraft:diamond>,
	<galacticraftplanets:item_basic_asteroids>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:167>,
	<enderio:item_alloy_ingot:2>,
	<enderio:item_alloy_ingot:8>,
	<minecraft:emerald>,
	<immersiveengineering:metal:5>,
	<thermalfoundation:material:135>,
	<mekanism:ingot>,
	<galacticraftplanets:item_basic_mars:2>,
	<thebetweenlands:items_misc:19>
] as IItemStack[];

for i, essence in essences {
	recipes.addShaped(essence.name, crafts[i], [
	[essence, essence, essence],
	[essence, null, essence],
	[essence, essence, essence]
	] as IIngredient[][]);
}