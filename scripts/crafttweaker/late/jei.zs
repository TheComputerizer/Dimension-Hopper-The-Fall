#priority -2500
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

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

var removals as IItemStack[] = [] as IItemStack[];
for f in huntingDimFrames() {
    removals+=f;
}

 var temp as IItemStack[] = [
    <appliedenergistics2:facade>,
    <tconstruct:pick_head>.withTag({Material: "constantan"}),
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

//item removals
for item in removals {
    JEI.hide(item);
}

function huntingDimFrames() as IItemStack[] {
    var ret as IItemStack[] = [] as IItemStack[];
    for wood in oreDict.logWood.items {
        if(!(wood in <minecraft:log2:0>)) {
            ret+=<huntingdim:frame>.withTag({BaseBlock: {id: wood.definition.id, Count: 1 as long, Damage: wood.metadata as short}});
        }
    }
    return ret;
}