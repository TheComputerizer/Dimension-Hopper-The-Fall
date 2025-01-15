#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;

static additions as ILiquidStack[IItemStack] = {
    <lightningcraft:rod:1>: <liquid:steel>*72,
    <lightningcraft:rod:2>: <liquid:lead>*72,
    <lightningcraft:rod:3>: <liquid:tin>*72,
    <lightningcraft:rod:4>: <liquid:aluminum>*72,
    <lightningcraft:rod:6>: <liquid:copper>*72,
    <lightningcraft:rod:7>: <liquid:electricium>*72,
    <lightningcraft:rod:8>: <liquid:skyfather>*72,
    <lightningcraft:rod:9>: <liquid:mystic>*72,
    <jaopca:dust.inferium>: <liquid:inferium>*144,
    <moreplates:inferium_plate>: <liquid:inferium>*144,
    <jaopca:dust.prudentium>: <liquid:prudentium>*144,
    <moreplates:prudentium_plate>: <liquid:prudentium>*144,
    <jaopca:dust.intermedium>: <liquid:intermedium>*144,
    <moreplates:intermedium_plate>: <liquid:intermedium>*144,
    <jaopca:dust.superium>: <liquid:superium>*144,
    <moreplates:superium_plate>: <liquid:superium>*144,
    <jaopca:dust.supremium>: <liquid:supremium>*144,
    <moreplates:supremium_plate>: <liquid:supremium>*144,
    <mysticalagradditions:insanium:3>: <liquid:insanium>*16
};

function run() {
    for item, liquid in additions {
        Melting.addRecipe(liquid, item);
    }
    Melting.addEntityMelting(<entity:minecraft:villager>, <liquid:aerotheum>);
}