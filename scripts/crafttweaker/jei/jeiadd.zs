#priority -3000
#reloadable

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var adders as IItemStack[] = [
    <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}),
    <huntingdim:biome_changer>.withTag({HeldBiome: 1}),
    <huntingdim:frame>.withTag({BaseBlock: {id: "minecraft:log", Count: 1, Damage: 0 as short}}),
    <appliedenergistics2:facade>.withTag({damage: 2, item: "minecraft:stone"})
] as IItemStack[];

//item additions
for item in adders {
    JEI.addItem(item);
}