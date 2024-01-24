#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;
import scripts.crafttweaker.early.util.Stacks as Stack;

static queuedArrayRemovals as IItemStack[][][int] = {
	0: [ //centrifuge
		Stack.metaRanges(<extratrees:food>.definition, [
			[0, 1], [3, 6], [8], [10, 13], [16, 19], [21, 22], [34]
		]) //extratrees fruits
	] as IItemStack[][],
	1: [ //factorizer combine
		Stack.amountMap({
			9: Stack.metaRangesMap({
				<avaritia:resource>.definition: [[1,3,4,6]],
			})
		})
	] as IItemStack[][],
	2: [ //factorizer split
		Stack.metaRange(<avaritia:block_resource>.definition, [0,2]) //avaritia blocks
	] as IItemStack[][]
};

static queuedRemovals as IItemStack[][int] = {
	0: [ //centrifuge
		<minecraft:apple>
	] as IItemStack[],
    1: [ //factorizer combine
        <zollerngalaxy:zincingot>*9, // zinc ingots
        <minecraft:obsidian>*9, //obsidian
		<minecraft:sand>*4, //sandstone
		<twilightforest:steeleaf_ingot>*9 //sandstone
	] as IItemStack[],
    2: [ //factorizer split
        <avaritia:resource:4>, //avaritia resources
        <zollerngalaxy:zincblock> //zinc block
	] as IItemStack[],
    2: [ //compactor gear
		<enderio:item_alloy_ingot:8> //idk
	] as IItemStack[]
};

function run() {
	Caller.callMapArray("thermal",queuedArrayRemovals);
	Caller.callMap("thermal",queuedRemovals);
}