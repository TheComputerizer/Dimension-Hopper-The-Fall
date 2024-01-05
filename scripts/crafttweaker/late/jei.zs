#priority -2500
#reloadable

import crafttweaker.block.IBlockState;
import crafttweaker.block.IMaterial;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.dimhoppertweaks.CTPassthrough;
import mods.jei.JEI;
import scripts.crafttweaker.early.util.globals;

var removals as IItemStack[] = [
    <appliedenergistics2:facade>,
    <huntingdim:biome_changer>,
    <huntingdim:frame>,
    <enderio:item_soul_vial:1>,
    <tconstruct:clay_cast>
] as IItemStack[];

val tinkerParts as IItemStack[] = [
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
    <conarm:helmet_core>,
    <conarm:armor_trim>,
    <conarm:armor_plate>,
    <conarm:chest_core>,
    <conarm:leggings_core>,
    <conarm:boots_core>,
    <conarm:polishing_kit>,
    <plustic:pipe_piece>
] as IItemStack[];

val tinkerTools2 as IItemStack[] = [
    <tconstruct:frypan>,
    <tconstruct:battlesign>
] as IItemStack[];

val tinkerTools3 as IItemStack[] = [
    <tconstruct:pickaxe>,
    <tconstruct:shovel>,
    <tconstruct:hatchet>,
    <tconstruct:mattock>,
    <tconstruct:kama>,
    <tconstruct:broadsword>,
    <tconstruct:longsword>,
    <tconstruct:rapier>,
    <conarm:helmet>,
    <conarm:chestplate>,
    <conarm:leggings>,
    <conarm:boots>
] as IItemStack[];

val tinkerTools4 as IItemStack[] = [
    <tconstruct:hammer>,
    <tconstruct:excavator>,
    <tconstruct:lumberaxe>,
    <tconstruct:scythe>,
    <tconstruct:cleaver>,
    <tconstruct:shuriken>,
    <plustic:katana>
] as IItemStack[];

for mat in globals.tinkermaterials {
    for type in tinkerParts {
        removals+=type.withTag({Material: mat});
    }
    for tool in tinkerTools2 {
        removals+=tool.withTag({TinkerData: {Materials: [mat, mat]}});
    }
    for tool in tinkerTools3 {
        removals+=tool.withTag({TinkerData: {Materials: [mat, mat, mat]}});
    }
    for tool in tinkerTools4 {
        removals+=tool.withTag({TinkerData: {Materials: [mat, mat, mat, mat]}});
    }
    removals+=<tconstruct:bolt_core>.withTag({TinkerData: {Materials: [mat, "iron"]}});
    removals+=<tconstruct:shortbow>.withTag({TinkerData: {Materials: [mat, mat, "string"]}});
    removals+=<tconstruct:longbow>.withTag({TinkerData: {Materials: [mat, mat, mat, "string"]}});
    removals+=<tconstruct:crossbow>.withTag({TinkerData: {Materials: [mat, mat, mat, "string"]}});
    removals+=<tconstruct:arrow>.withTag({TinkerData: {Materials: ["wood", mat, "feather"]}});
    removals+=<tconstruct:bolt>.withTag({TinkerData: {Materials: ["wood", mat, "feather"]}});
    removals+=<plustic:laser_gun>.withTag({TinkerData: {Materials: [mat, mat, "prismarine", "manyullyn"]}});
    removals+=<tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_string"});
    removals+=<tconstruct:clay_cast>.withTag({PartType: "plustic:battery_cell"});
    removals+=<tconstruct:clay_cast>.withTag({PartType: "tconstruct:fletching"});
    removals+=<tconstruct:clay_cast>.withTag({PartType: "plustic:laser_medium"});
}

for type in tinkerParts {
    removals+=<tconstruct:clay_cast>.withTag({PartType: type.definition.id});
}

for plank in <ore:plankWood>.items {
    removals+=<tconstruct:tooltables:1>.withTag({textureBlock: {id: plank.definition.id, Count: 1, Damage: plank.metadata as short}});
}

for log in <ore:logWood>.items {
    removals+=<tconstruct:tooltables:2>.withTag({textureBlock: {id: log.definition.id, Count: 1, Damage: log.metadata as short}});
}

for block in game.blocks {
    val state as IBlockState = block.defaultState;
    if(state.material.matches(IMaterial.iron())) {
        removals+=<tconstruct:toolforge>.withTag({textureBlock: {id: block.id, Count: 1, Damage: state.meta as short}});
    }
}

val buckets as IItemStack[] = [
    <erebus:bambucket>,
    <theaurorian:ceruleanbucket>,
    <gaiadimension:scaynyx_bucket>
] as IItemStack[];

for liquid in game.liquids {
    for bucket in buckets {
        removals+=bucket.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}});
    }
    removals+=<ceramics:clay_bucket>.withTag({fluids: {FluidName: liquid.name, Amount: 1000}});
    removals+=<forge:bucketfilled>.withTag({FluidName: liquid.name, Amount: 1000});
    removals+=<openblocks:tank>.withTag({tank: {FluidName: liquid.name, Amount: 16000}});
}

//for entity in game.entities {
//
//}

print("There are "+removals.length+" things to hide...");

//item removals
for item in removals {
    JEI.hide(item);
}

val additions as IItemStack[] = [
    <huntingdim:biome_changer>.withTag({HeldBiome: 1}),
    <huntingdim:frame>.withTag({BaseBlock: {id: "minecraft:log", Count: 1, Damage: 0 as short}}),
    <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:bedrock"}),
    //<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}),
    //<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"}),
    //<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:shulker"}),
    //<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:villager"}),
    <tconstruct:pick_head>.withTag({Material: "constantan"}),
    <tconstruct:sharpening_kit>.withTag({Material: "constantan"}),
    <tconstruct:shovel_head>.withTag({Material: "constantan"}),
    <tconstruct:shard>.withTag({Material: "constantan"}),
    <tconstruct:axe_head>.withTag({Material: "constantan"}),
    <tconstruct:broad_axe_head>.withTag({Material: "constantan"}),
    <tconstruct:sword_blade>.withTag({Material: "constantan"}),
    <tconstruct:large_sword_blade>.withTag({Material: "constantan"}),
    <tconstruct:hammer_head>.withTag({Material: "constantan"}),
    <tconstruct:excavator_head>.withTag({Material: "constantan"}),
    <tconstruct:kama_head>.withTag({Material: "constantan"}),
    <tconstruct:scythe_head>.withTag({Material: "constantan"}),
    <tconstruct:pan_head>.withTag({Material: "constantan"}),
    <tconstruct:sign_head>.withTag({Material: "constantan"}),
    <tconstruct:tool_rod>.withTag({Material: "constantan"}),
    <tconstruct:tough_tool_rod>.withTag({Material: "constantan"}),
    <tconstruct:binding>.withTag({Material: "constantan"}),
    <tconstruct:shard>.withTag({Material: "constantan"}),
    <tconstruct:tough_binding>.withTag({Material: "constantan"}),
    <tconstruct:wide_guard>.withTag({Material: "constantan"}),
    <tconstruct:hand_guard>.withTag({Material: "constantan"}),
    <tconstruct:cross_guard>.withTag({Material: "constantan"}),
    <tconstruct:large_plate>.withTag({Material: "constantan"}),
    <tconstruct:knife_blade>.withTag({Material: "constantan"}),
    <tconstruct:bow_limb>.withTag({Material: "constantan"}),
    <tconstruct:arrow_head>.withTag({Material: "constantan"}),
    <tconstruct:arrow_shaft>.withTag({Material: "silentgems:ruby"}),
    <tconstruct:bolt_core>.withTag({TinkerData: {Materials: ["ruby", "iron"]}}),
    <conarm:helmet_core>.withTag({Material: "constantan"}),
    <conarm:armor_trim>.withTag({Material: "constantan"}),
    <conarm:armor_plate>.withTag({Material: "constantan"}),
    <conarm:chest_core>.withTag({Material: "constantan"}),
    <conarm:leggings_core>.withTag({Material: "constantan"}),
    <conarm:boots_core>.withTag({Material: "constantan"}),
    <plustic:pipe_piece>.withTag({Material: "constantan"}),
    <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1, Damage: 0 as short}}),
    <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1, Damage: 0 as short}}),
    <tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1, Damage: 0 as short}}),
    <tconstruct:frypan>.withTag({TinkerData: {Materials: ["constantan", "constantan"]}}),
    <tconstruct:battlesign>.withTag({TinkerData: {Materials: ["constantan", "constantan"]}}),
    <tconstruct:pickaxe>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:shovel>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:hatchet>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:mattock>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:kama>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:broadsword>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:longsword>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:rapier>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <conarm:helmet>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <conarm:chestplate>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <conarm:leggings>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <conarm:boots>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan"]}}),
    <tconstruct:hammer>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:excavator>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:lumberaxe>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:scythe>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:cleaver>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:shuriken>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <plustic:katana>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "constantan"]}}),
    <tconstruct:shortbow>.withTag({TinkerData: {Materials: ["constantan", "constantan", "string"]}}),
    <tconstruct:longbow>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "string"]}}),
    <tconstruct:crossbow>.withTag({TinkerData: {Materials: ["constantan", "constantan", "constantan", "string"]}}),
    <tconstruct:arrow>.withTag({TinkerData: {Materials: ["wood", "constantan", "feather"]}}),
    <tconstruct:bolt>.withTag({TinkerData: {Materials: ["wood", "constantan", "feather"]}}),
    <plustic:laser_gun>.withTag({TinkerData: {Materials: ["constantan", "constantan", "prismarine", "manyullyn"]}}),
    <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}),
    <erebus:bambucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
    <theaurorian:ceruleanbucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
    <gaiadimension:scaynyx_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
    <openblocks:tank>.withTag({tank: {FluidName: "water", Amount: 16000}})
] as IItemStack[];

for item in additions {
    JEI.addItem(item);
}

JEI.addDescription(<appliedenergistics2:facade>,"Example recipe. Most full blocks that are not tile entities will work");
JEI.addDescription(<huntingdim:frame>,"Example recipe. Most wood types will work");
JEI.addDescription(<huntingdim:biome_changer>,"Example recipe. Most biomes are supported");
JEI.addDescription(<enderio:item_soul_vial:1>,"Most entities can be captured, but only the ones directly used in non generic recipes are shown");