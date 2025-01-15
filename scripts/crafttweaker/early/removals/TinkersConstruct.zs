#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [ //table casting
		<moreplates:end_steel_gear>, //end steel gear
        <enderio:item_material:11>, //infinity bimetal gear
        <enderio:item_material:12>, //energized bimetal gear
        <enderio:item_material:13>, //vibrant bimetal gear
        <enderio:item_material:73>, //dark bimetal gear
        <minecraft:emerald>, //emerald
        <silentgems:gemshard:8>, //aquamarine
        <zollerngalaxy:aquamarine>, //aquamarine
        <zollerngalaxy:aquamarineblock>, //aquamarine block
        <zollerngalaxy:zincingot>, //zinc ingot
	] as IItemStack[],
    1: [ //basin casting
        <silentgems:gemblock:8>, //aquamarine block
        <zollerngalaxy:zincblock> //zinc block
    ] as IItemStack[]
};

static meltingRemovals as ILiquidStack[IItemStack[]] = {
    [
        <draconicevolution:draconium_ore>,
        <draconicevolution:draconium_ore:1>,
        <draconicevolution:draconium_ore:2>,
        <draconicevolution:draconium_dust>
    ] as IItemStack[]: <liquid:draconium>,
    [<lightningcraft:rod:1>] as IItemStack[]: <liquid:steel>,
    [<lightningcraft:rod:2>] as IItemStack[]: <liquid:lead>,
    [<lightningcraft:rod:3>] as IItemStack[]: <liquid:tin>,
    [<lightningcraft:rod:4>] as IItemStack[]: <liquid:aluminum>,
    [<lightningcraft:rod:6>] as IItemStack[]: <liquid:copper>,
    [<lightningcraft:rod:7>] as IItemStack[]: <liquid:electricium>,
    [<lightningcraft:rod:8>] as IItemStack[]: <liquid:skyfather>,
    [<lightningcraft:rod:9>] as IItemStack[]: <liquid:mystic>,
    [<silentgems:essenceore>] as IItemStack[]: <liquid:chaos>
};

function run() {
    Caller.callMap("tconstruct",queuedRemovals);
    Melting.removeRecipe(<liquid:aquamarine>);
    for items, liquid in meltingRemovals {
        for stack in items {
            Melting.removeRecipe(liquid,stack);
        }
    }
}