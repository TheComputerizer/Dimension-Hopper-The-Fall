#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

zenClass RecipeData {
    val enchantmentId as int;
    val enchantmentLevel as int;
    val ingredientsWithoutItem as IIngredient[];
    val manaLevel as int;
    zenConstructor(enchId as int, enchLvl as int, ingr as IIngredient[], mana as int) {
        enchantmentId = enchId;
        enchantmentLevel = enchLvl;
        ingredientsWithoutItem = ingr;
        manaLevel = mana;
	}
    function makeRecipe(item as IItemStack) as void {
        val enchantedItem = item.withTag({ench: [{lvl: enchantmentLevel as short, id: enchantmentId}]});
        RuneAltar.addRecipe(enchantedItem, ingredientsWithoutItem + item, manaLevel);
    }
}

val armorData = [
    RecipeData(34, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	//unbreaking
    RecipeData(34, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),  //unbreaking
    RecipeData(34, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),  //unbreaking
	RecipeData(70, 1, [<minecraft:nether_star>], 200000),  //mending
	RecipeData(82, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(89, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(0, 1, [<thermalfoundation:material:352>, <thermalfoundation:material:352>], 25000), //protection
	RecipeData(0, 2, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:obsidian>], 50000),  //protection
	RecipeData(0, 3, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian>], 100000),  //protection
	RecipeData(43, 1, [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>], 50000), //repellent
	RecipeData(43, 2, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 100000),  //repellent
	RecipeData(1, 1, [<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})], 25000), //fire prot
	RecipeData(1, 2, [<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})], 50000),  //fire prot
	RecipeData(1, 3, [<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})], 100000),  //fire prot
	RecipeData(98, 1, [<minecraft:piston>, <minecraft:piston>], 50000), //rebounding
	RecipeData(3, 1, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], 25000),  //blast prot
	RecipeData(3, 2, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:obsidian>], 50000),  //blast prot
	RecipeData(3, 3, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian>], 100000),  //blast prot
	RecipeData(4, 1, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>], 25000),  //proj prot
	RecipeData(4, 2, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:shield>], 50000),  //proj prot
	RecipeData(4, 3, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <immersiveengineering:shield>], 100000),  //proj prot
	RecipeData(90, 1, [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>], 50000), //icy thorns
	RecipeData(94, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 50000),  //berserkers fury
	RecipeData(94, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 100000),  //berserkers fury
	RecipeData(7, 1, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>], 25000),  //thorns
	RecipeData(7, 2, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>], 50000),  //thorns
	RecipeData(7, 3, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>], 100000),  //thorns
	RecipeData(26, 1, [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>], 100000),  //unstable
	RecipeData(27, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <minecraft:nether_star>], 250000),  //last stand
	RecipeData(99, 1, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>], 50000),  //occult aversion
	RecipeData(99, 2, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})], 100000)  //occult aversion
] as RecipeData[];

val helmetData = [
    RecipeData(5, 1, [<simpledivegear:divehelmet>], 50000), //respiration
    RecipeData(5, 2, [<simpledivegear:divehelmet>, <simpledivegear:divehelmet>], 100000), //respiration
    RecipeData(6, 1, [<xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]})], 75000) //aqua affinity
] as RecipeData[];

val bootData = [
    RecipeData(2, 1, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>], 25000),  //feather falling
    RecipeData(2, 2, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:brewvial>.withTag({brewKey: "featherFeet"})], 50000),  //feather falling
    RecipeData(2, 3, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"})], 100000),  //feather falling
	RecipeData(8, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 75000), //depth strider
	RecipeData(9, 1, [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <cavern:slippery_ice>, <cavern:slippery_ice>], 50000),  //frost walker
	RecipeData(31, 1, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>], 25000),  //shadow step
	RecipeData(31, 2, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>], 50000),  //shadow step
	RecipeData(31, 3, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>], 100000)  //shadow step
] as RecipeData[];

val bowData = [
	RecipeData(34, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	//unbreaking
    RecipeData(34, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),  //unbreaking
    RecipeData(34, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),  //unbreaking
	RecipeData(70, 1, [<minecraft:nether_star>], 200000),  //mending
	RecipeData(82, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(89, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(44, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 100000),  //withering
	RecipeData(50, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 100000),  //flame
	RecipeData(49, 1, [<minecraft:piston>], 25000),  //punch
	RecipeData(49, 2, [<minecraft:piston>, <minecraft:piston>], 50000),  //punch
	RecipeData(49, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 100000),  //punch
	RecipeData(48, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 25000),  //power
	RecipeData(48, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 50000),  //power
	RecipeData(48, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})], 100000),  //power
	RecipeData(51, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>], 100000),  //infinity
	RecipeData(101, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:nether_star>], 250000),  //endless quiver
	RecipeData(79, 1, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:8>], 50000),  //multishot
	RecipeData(79, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:9>], 100000),  //multishot
] as RecipeData[];

val swordData = [
	RecipeData(34, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	//unbreaking
    RecipeData(34, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),  //unbreaking
    RecipeData(34, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),  //unbreaking
	RecipeData(70, 1, [<minecraft:nether_star>], 100000),  //mending
	RecipeData(82, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(89, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(16, 1, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 25000),  //sharpness
	RecipeData(16, 2, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 50000),  //sharpness
	RecipeData(16, 3, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 100000),  //sharpness
	RecipeData(17, 1, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], 25000),  //smite
	RecipeData(17, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>], 50000),  //smite
	RecipeData(17, 3, [<minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>], 100000),  //smite
	RecipeData(18, 1, [<minecraft:string>,<minecraft:string>, <minecraft:string>, <minecraft:spider_eye>], 25000),  //bane of arthropods
	RecipeData(18, 2, [<minecraft:string>,<minecraft:spider_eye>, <minecraft:spider_eye>, <xreliquary:mob_ingredient:2>], 50000),  //bane of arthropods
	RecipeData(18, 3, [<minecraft:spider_eye>,<minecraft:spider_eye>, <xreliquary:mob_ingredient:2>, <xreliquary:mob_ingredient:2>], 100000),  //bane of arthropods
	RecipeData(19, 1, [<minecraft:piston>], 25000),  //knockback
	RecipeData(19, 2, [<minecraft:piston>, <minecraft:piston>], 50000),  //knockback
	RecipeData(19, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 100000),  //knockback
	RecipeData(21, 1, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], 250000),  //looting
	RecipeData(21, 2, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>], 50000),  //looting
	RecipeData(21, 3, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:gold_block>], 100000),  //looting
	RecipeData(22, 1, [<botania:manaresource>, <botania:manaresource>], 25000),  //sweeping edge
	RecipeData(22, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>], 50000),  //sweeping edge
	RecipeData(22, 3, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material>], 100000),  //sweeping edge
	RecipeData(20, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>], 25000),  //fire aspect
	RecipeData(20, 2, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>], 50000),  //fire aspect
	RecipeData(20, 3, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 100000),  //fire aspect
	RecipeData(84, 1, [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:blaze_powder>], 25000),  //hell infusion
	RecipeData(84, 2, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>], 50000),  //hell infusion
	RecipeData(84, 3, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>, <overloaded:compressed_netherrack:1>, <overloaded:compressed_netherrack:1>], 100000),  //hell infusion
	RecipeData(45, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 100000),  //decay
	RecipeData(29, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 25000),  //xp boost
	RecipeData(29, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 50000),  //xp boost
	RecipeData(29, 3, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 100000),  //xp boost
	RecipeData(88, 1, [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:dragon_egg>], 200000),  //scavenger
	RecipeData(78, 1, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>], 50000),  //leech
	RecipeData(78, 2, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:heartcontainer>], 100000),  //leech
	RecipeData(83, 1, [ <contenttweaker:crazy_creeper_essence>], 50000),  //vorpal
	RecipeData(85, 1, [<minecraft:saddle>], 25000),  //mounted strike
	RecipeData(85, 2, [<minecraft:saddle>, <minecraft:saddle>], 50000),  //mounted strike
	RecipeData(85, 3, [<minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>], 100000),  //mounted strike
	RecipeData(37, 1, [<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"})], 100000),  //magic siphon
	RecipeData(100, 1, [<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <overloaded:nether_star_block>], 500000),  //capturing
	RecipeData(95, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>], 50000),  //knowledge of the ages
	RecipeData(95, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>, <enderio:item_xp_transfer>], 100000),  //knowledge of the ages
	RecipeData(65, 1, [<enderio:block_enderman_skull>], 25000),  //uncivilized
	RecipeData(65, 2, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 50000),  //uncivilized
	RecipeData(65, 3, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 100000),  //uncivilized
	RecipeData(38, 1, [<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>], 50000),  //plague bringer
	RecipeData(38, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>], 100000),  //plague bringer
] as RecipeData[];

val toolData = [
    RecipeData(34, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	 //unbreaking
    RecipeData(34, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),	 //unbreaking
    RecipeData(34, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),	 //unbreaking
	RecipeData(70, 1, [<minecraft:nether_star>], 200000),	 //mending
	RecipeData(82, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(89, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(32, 1, [<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})], 25000),  //effeciency
	RecipeData(32, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 50000),  //effeciency
	RecipeData(32, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})], 100000),  //effeciency
	RecipeData(86, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <minecraft:obsidian>], 25000),  //miners ferver
	RecipeData(86, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <overloaded:compressed_obsidian>], 50000),  //miners ferver
	RecipeData(86, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian:1>], 100000),  //miners ferver
	RecipeData(33, 1, [<tconstruct:materials:16>], 100000),  //silk touch
	RecipeData(35, 1, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 50000),  //fortune
	RecipeData(35, 2, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond_block>], 100000)  //fortune
] as RecipeData[];

val hoeData = [
    RecipeData(91, 1, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:golden_apple>, <minecraft:golden_apple>, <ore:fish>, <ore:fish>, <minecraft:golden_carrot>, <minecraft:golden_carrot>], 100000),  //temptation
    RecipeData(97, 1, [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <botania:fertilizer>, <botania:fertilizer>], 100000)  //natures blessing
] as RecipeData[];

val fishingData = [
    RecipeData(106, 1, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>], 25000),  //appealing
    RecipeData(106, 2, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>], 50000),  //appealing
    RecipeData(106, 3, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:3>, <minecraft:fish:3>, <minecraft:fish:3>], 100000),  //appealing
	RecipeData(112, 1, [<minecraft:iron_block>], 25000), //heavy line
    RecipeData(112, 2, [<minecraft:iron_block>, <minecraft:iron_block>], 50000), //heavy line
    RecipeData(112, 3, [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>], 100000), //heavy line
	RecipeData(107, 1, [<aquaculture:loot:1>], 25000),  //magnetic
    RecipeData(107, 2, [<aquaculture:loot:1>, <aquaculture:loot:1>], 50000),  //magnetic
    RecipeData(107, 3, [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>], 100000),  //magnetic
	RecipeData(111, 1, [<extrautils2:spike_iron>], 25000),  //barbed hook
    RecipeData(111, 2, [<extrautils2:spike_iron>, <extrautils2:spike_iron>], 50000),  //barbed hook
    RecipeData(111, 3, [<extrautils2:spike_iron>, <extrautils2:spike_iron>, <extrautils2:spike_iron>], 100000),  //barbed hook
	RecipeData(110, 1, [<aquaculture:iron_fishing_rod>], 25000),  //double hook
    RecipeData(110, 2, [<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>], 50000),  //double hook
    RecipeData(110, 3, [<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>], 100000),  //double hook
	RecipeData(108, 1, [<minecraft:string>, <minecraft:string>], 25000),  //long cast
    RecipeData(108, 2, [<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>], 50000),  //long cast
    RecipeData(108, 3, [<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>], 100000),  //long cast
	RecipeData(109, 1, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 25000),  //short cast
    RecipeData(109, 2, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 50000),  //short cast
    RecipeData(109, 3, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 100000),  //short cast
	RecipeData(61, 1, [<minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>], 75000),  //luck of the sea
	RecipeData(62, 1, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:dye:4>], 50000)  //lure
] as RecipeData[];


for data in armorData {
	for helmet in oreDict.enchantableHelmets.items {
		data.makeRecipe(helmet);
	}
	for chestplate in oreDict.enchantableChestplates.items {
		data.makeRecipe(chestplate);
	}
	for pants in oreDict.enchantableLeggings.items {
		data.makeRecipe(pants);
	}
	for boots in oreDict.enchantableBoots.items {
		data.makeRecipe(boots);
	}
}

for data in helmetData {
	for helmet in oreDict.enchantableHelmets.items {
		data.makeRecipe(helmet);
	}
}

for data in bootData {
	for boots in oreDict.enchantableBoots.items {
		data.makeRecipe(boots);
	}
}

for data in bowData {
	for bow in oreDict.enchantableBows.items {
		data.makeRecipe(bow);
	}
}

for data in swordData {
	for sword in oreDict.enchantableSwords.items {
		data.makeRecipe(sword);
	}
}

for data in toolData {
	for axe in oreDict.enchantableAxes.items {
		data.makeRecipe(axe);
	}
	for shovel in oreDict.enchantableShovels.items {
		data.makeRecipe(shovel);
	}
	for hoe in oreDict.enchantableHoes.items {
		data.makeRecipe(hoe);
	}
	for fishingRod in oreDict.enchantableFishingRods.items {
		data.makeRecipe(fishingRod);
	}
	for shears in oreDict.enchantableShears.items {
		data.makeRecipe(shears);
	}
}

for data in hoeData {
	for hoe in oreDict.enchantableHoes.items {
		data.makeRecipe(hoe);
	}
}

for data in fishingData {
	for fishingRod in oreDict.enchantableFishingRods.items {
		data.makeRecipe(fishingRod);
	}
}