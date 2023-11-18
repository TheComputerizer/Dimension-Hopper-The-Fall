#priority -2500
#reloadable

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//jei duplicates

var hiders as IItemStack[] = [
    <enderio:item_soul_vial:1>,
    <huntingdim:biome_changer>
] as IItemStack[];
var adders as IItemStack[] = [
    <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}),
    <huntingdim:biome_changer>.withTag({HeldBiome: 1})
] as IItemStack[];

//tinkers
var tinkertypes as IItemStack[] = [
<tconstruct:pick_head>,
<tconstruct:sharpening_kit>,
<tconstruct:shovel_head>,
<tconstruct:shard>,
<tconstruct:axe_head>,
<tconstruct:broad_axe_head>,
<tconstruct:sword_blade>,
<tconstruct:large_sword_blade>,
<tconstruct:hammer_head>,
<tconstruct:excavator_head>,
<tconstruct:kama_head>,
<tconstruct:scythe_head>,
<tconstruct:pan_head>,
<tconstruct:sign_head>,
<tconstruct:tool_rod>,
<tconstruct:tough_tool_rod>,
<tconstruct:binding>,
<tconstruct:shard>,
<tconstruct:tough_binding>,
<tconstruct:wide_guard>,
<tconstruct:hand_guard>,
<tconstruct:cross_guard>,
<tconstruct:large_plate>,
<tconstruct:knife_blade>,
<tconstruct:bow_limb>,
<tconstruct:arrow_head>,
<tconstruct:arrow_shaft>,
<tconstruct:fletching>,
<conarm:helmet_core>,
<conarm:armor_trim>,
<conarm:armor_plate>,
<conarm:chest_core>,
<conarm:leggings_core>,
<conarm:boots_core>,
<plustic:pipe_piece>,
<plustic:laser_medium>,
<plustic:battery_cell>
] as IItemStack[];

//for material in scripts.crafttweaker.staticvars.tinkermaterials {
    //for type in tinkertypes {
        //JEI.hide(type.withTag({Material: material}));
    //}
    //JEI.hide(<tconstruct:bolt_core>.withTag({TinkerData: {Materials: [material, "iron"]}}));
//}

for type in tinkertypes {
    hiders+=type;
}

//for biome in 2 .. 475 {
    //JEI.hide(<huntingdim:biome_changer>.withTag({HeldBiome: biome}));
//}

//category removals
var categories = [
"atum.kiln",
"Avatitia.Compressor",
"Painter","EIOTank",
"extendedcrafting:compressor",
"extraplanets.rocketT4","extraplanets.rocketT5","extraplanets.rocketT6","extraplanets.rocketT7","extraplanets.rocketT8","extraplanets.rocketT9","extraplanets.rocketT10","extraplanets.rocketT10Electric",
"ORE_WASHER","ORE_FERMENTER",
"jeresources.enchantment",
"lightningcraft.crusher_recipe_category","lightningcraft.infusion_recipe_category",
"tinker_io:fuel_input_machine","tinker_io:smart_output",
] as string[];
for category in categories {
	JEI.hideCategory(category);
}

//item removals
for item in hiders {
    JEI.hide(item);
}

//item additions
for item in adders {
    JEI.addItem(item);
}