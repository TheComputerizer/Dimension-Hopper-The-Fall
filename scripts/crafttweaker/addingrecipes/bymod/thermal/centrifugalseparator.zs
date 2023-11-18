#reloadable

import mods.thermalexpansion.Centrifuge;

//fruit press alternatives
val fruit = [
	<extratrees:food:34>,
	<minecraft:apple>,
	<extratrees:food:4>,
	<extratrees:food:5>,
	<extratrees:food:6>,
	<extratrees:food:28>,
	<extratrees:food:29>,
	<extratrees:food:22>,
	<extratrees:food:21>,
	<extratrees:food:19>,
	<extratrees:food:18>,
	<extratrees:food:17>,
	<extratrees:food:16>,
	<extratrees:food:13>,
	<extratrees:food:12>,
	<extratrees:food:11>,
	<extratrees:food:10>,
	<extratrees:food:8>,
	<extratrees:food:3>,
	<extratrees:food:1>,
	<extratrees:food>
] as IItemStack[];
for i in fruit {
	Centrifuge.removeRecipe(i);
}