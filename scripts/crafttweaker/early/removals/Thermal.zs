#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [ //centrifuge
		<minecraft:apple>, //apple
        <extratrees:food:*> //extratrees fruits
	] as IItemStack[],
    1: [ //factorizer combine
		<avaritia:block_resource:*>*9, // avaritia blocks
        <avaritia:resource:*>*9, //avaritia resources
        <zollerngalaxy:zincingot>*9, // zinc ingots
        <minecraft:obsidian>*9 //obsidian
	] as IItemStack[],
    2: [ //factorizer split
		<avaritia:block_resource:*>, // avaritia blocks
        <avaritia:resource:*>, //avaritia resources
        <zollerngalaxy:zincblock> //zinc block
	] as IItemStack[],
    2: [ //compactor gear
		<enderio:item_alloy_ingot:8> //idk
	] as IItemStack[]
};

function run() {
	Caller.callMap("thermal",queuedRemovals);
}