#reloadable

import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

zenClass RecipeData {
    val enchantmentDef as IEnchantmentDefinition;
    val enchantmentLevel as int;
    val ingredientsWithoutItem as IIngredient[];
    val manaLevel as int;
    zenConstructor(enchDef as IEnchantmentDefinition, enchLvl as int, ingr as IIngredient[], mana as int) {
        enchantmentDef = enchDef;
        enchantmentLevel = enchLvl;
        ingredientsWithoutItem = ingr;
        manaLevel = mana;
	}
    function makeRecipe(item as IItemStack) as void {
        val enchantedItem = item.withTag({ench: [{lvl: enchantmentLevel as short, id: this.enchantmentDef.id}]});
        RuneAltar.addRecipe(enchantedItem, ingredientsWithoutItem + item, manaLevel);
    }
}

val armorData = [
    RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),	 //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 200000),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(<enchantment:minecraft:protection>, 1, [<thermalfoundation:material:352>, <thermalfoundation:material:352>], 25000), //protection
	RecipeData(<enchantment:minecraft:protection>, 2, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:obsidian>], 50000),  //protection
	RecipeData(<enchantment:minecraft:protection>, 3, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian>], 100000),  //protection
	RecipeData(<enchantment:enderio:repellent>, 1, [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>], 50000), //repellent
	RecipeData(<enchantment:enderio:repellent>, 2, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 100000),  //repellent
	RecipeData(<enchantment:minecraft:fire_protection>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})], 25000), //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})], 50000),  //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 3, [<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})], 100000),  //fire prot
	RecipeData(<enchantment:apotheosis:rebounding>, 1, [<minecraft:piston>, <minecraft:piston>], 50000), //rebounding
	RecipeData(<enchantment:minecraft:blast_protection>, 1, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], 25000),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 2, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:obsidian>], 50000),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 3, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian>], 100000),  //blast prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 1, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>], 25000),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 2, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:shield>], 50000),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 3, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <immersiveengineering:shield>], 100000),  //proj prot
	RecipeData(<enchantment:apotheosis:icy_thorns>, 1, [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>], 50000), //icy thorns
	RecipeData(<enchantment:apotheosis:berserk>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 50000),  //berserkers fury
	RecipeData(<enchantment:apotheosis:berserk>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 100000),  //berserkers fury
	RecipeData(<enchantment:minecraft:thorns>, 1, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>], 25000),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 2, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>], 50000),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 3, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>], 100000),  //thorns
	RecipeData(<enchantment:openblocks:explosive>, 1, [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>], 100000),  //unstable
	RecipeData(<enchantment:openblocks:last_stand>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <minecraft:nether_star>], 250000),  //last stand
	RecipeData(<enchantment:apotheosis:magic_protection>, 1, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>], 50000),  //occult aversion
	RecipeData(<enchantment:apotheosis:magic_protection>, 2, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})], 100000)  //occult aversion
] as RecipeData[];

val helmetData = [
    RecipeData(<enchantment:minecraft:respiration>, 1, [<simpledivegear:divehelmet>], 50000), //respiration
    RecipeData(<enchantment:minecraft:respiration>, 2, [<simpledivegear:divehelmet>, <simpledivegear:divehelmet>], 100000), //respiration
    RecipeData(<enchantment:minecraft:aqua_affinity>, 1, [<xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]})], 75000) //aqua affinity
] as RecipeData[];

val bootData = [
    RecipeData(<enchantment:minecraft:feather_falling>, 1, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>], 25000),  //feather falling
    RecipeData(<enchantment:minecraft:feather_falling>, 2, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:brewvial>.withTag({brewKey: "featherFeet"})], 50000),  //feather falling
    RecipeData(<enchantment:minecraft:feather_falling>, 3, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"})], 100000),  //feather falling
	RecipeData(<enchantment:minecraft:depth_strider>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 75000), //depth strider
	RecipeData(<enchantment:minecraft:frost_walker>, 1, [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <cavern:slippery_ice>, <cavern:slippery_ice>], 50000),  //frost walker
	RecipeData(<enchantment:tombstone:shadow_step>, 1, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>], 25000),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 2, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>], 50000),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 3, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>], 100000)  //shadow step
] as RecipeData[];

val bowData = [
	RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 200000),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(<enchantment:enderio:witherarrow>, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 100000),  //withering
	RecipeData(<enchantment:minecraft:flame>, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 100000),  //flame
	RecipeData(<enchantment:minecraft:punch>, 1, [<minecraft:piston>], 25000),  //punch
	RecipeData(<enchantment:minecraft:punch>, 2, [<minecraft:piston>, <minecraft:piston>], 50000),  //punch
	RecipeData(<enchantment:minecraft:punch>, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 100000),  //punch
	RecipeData(<enchantment:minecraft:power>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 25000),  //power
	RecipeData(<enchantment:minecraft:power>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 50000),  //power
	RecipeData(<enchantment:minecraft:power>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})], 100000),  //power
	RecipeData(<enchantment:minecraft:infinity>, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>], 100000),  //infinity
	RecipeData(<enchantment:apotheosis:true_infinity>, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:nether_star>], 250000),  //endless quiver
	RecipeData(<enchantment:cofhcore:multishot>, 1, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:8>], 50000),  //multishot
	RecipeData(<enchantment:cofhcore:multishot>, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:9>], 100000),  //multishot
] as RecipeData[];

val swordData = [
	RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),	 //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 100000),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(<enchantment:minecraft:sharpness>, 1, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 25000),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 2, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 50000),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 3, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 100000),  //sharpness
	RecipeData(<enchantment:minecraft:smite>, 1, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], 25000),  //smite
	RecipeData(<enchantment:minecraft:smite>, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>], 50000),  //smite
	RecipeData(<enchantment:minecraft:smite>, 3, [<minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>], 100000),  //smite
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 1, [<minecraft:string>,<minecraft:string>, <minecraft:string>, <minecraft:spider_eye>], 25000),  //bane of arthropods
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 2, [<minecraft:string>,<minecraft:spider_eye>, <minecraft:spider_eye>, <xreliquary:mob_ingredient:2>], 50000),  //bane of arthropods
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 3, [<minecraft:spider_eye>,<minecraft:spider_eye>, <xreliquary:mob_ingredient:2>, <xreliquary:mob_ingredient:2>], 100000),  //bane of arthropods
	RecipeData(<enchantment:minecraft:knockback>, 1, [<minecraft:piston>], 25000),  //knockback
	RecipeData(<enchantment:minecraft:knockback>, 2, [<minecraft:piston>, <minecraft:piston>], 50000),  //knockback
	RecipeData(<enchantment:minecraft:knockback>, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 100000),  //knockback
	RecipeData(<enchantment:minecraft:looting>, 1, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], 250000),  //looting
	RecipeData(<enchantment:minecraft:looting>, 2, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>], 50000),  //looting
	RecipeData(<enchantment:minecraft:looting>, 3, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:gold_block>], 100000),  //looting
	RecipeData(<enchantment:minecraft:sweeping>, 1, [<botania:manaresource>, <botania:manaresource>], 25000),  //sweeping edge
	RecipeData(<enchantment:minecraft:sweeping>, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>], 50000),  //sweeping edge
	RecipeData(<enchantment:minecraft:sweeping>, 3, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material>], 100000),  //sweeping edge
	RecipeData(<enchantment:minecraft:fire_aspect>, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>], 25000),  //fire aspect
	RecipeData(<enchantment:minecraft:fire_aspect>, 2, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>], 50000),  //fire aspect
	RecipeData(<enchantment:minecraft:fire_aspect>, 3, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 100000),  //fire aspect
	RecipeData(<enchantment:apotheosis:hell_infusion>, 1, [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:blaze_powder>], 25000),  //hell infusion
	RecipeData(<enchantment:apotheosis:hell_infusion>, 2, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>], 50000),  //hell infusion
	RecipeData(<enchantment:apotheosis:hell_infusion>, 3, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>, <overloaded:compressed_netherrack:1>, <overloaded:compressed_netherrack:1>], 100000),  //hell infusion
	RecipeData(<enchantment:enderio:witherweapon>, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 100000),  //decay
	RecipeData(<enchantment:endercore:xpboost>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 25000),  //xp boost
	RecipeData(<enchantment:endercore:xpboost>, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 50000),  //xp boost
	RecipeData(<enchantment:endercore:xpboost>, 3, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 100000),  //xp boost
	RecipeData(<enchantment:apotheosis:scavenger>, 1, [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:dragon_egg>], 200000),  //scavenger
	RecipeData(<enchantment:cofhcore:leech>, 1, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>], 50000),  //leech
	RecipeData(<enchantment:cofhcore:leech>, 2, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:heartcontainer>], 100000),  //leech
	RecipeData(<enchantment:cofhcore:vorpal>, 1, [ <contenttweaker:crazy_creeper_essence>], 50000),  //vorpal
	RecipeData(<enchantment:apotheosis:mounted_strike>, 1, [<minecraft:saddle>], 25000),  //mounted strike
	RecipeData(<enchantment:apotheosis:mounted_strike>, 2, [<minecraft:saddle>, <minecraft:saddle>], 50000),  //mounted strike
	RecipeData(<enchantment:apotheosis:mounted_strike>, 3, [<minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>], 100000),  //mounted strike
	RecipeData(<enchantment:tombstone:magic_siphon>, 1, [<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"})], 100000),  //magic siphon
	RecipeData(<enchantment:apotheosis:capturing>, 1, [<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <overloaded:nether_star_block>], 500000),  //capturing
	RecipeData(<enchantment:apotheosis:knowledge>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>], 50000),  //knowledge of the ages
	RecipeData(<enchantment:apotheosis:knowledge>, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>, <enderio:item_xp_transfer>], 100000),  //knowledge of the ages
	RecipeData(<enchantment:blue_skies:uncivilized>, 1, [<enderio:block_enderman_skull>], 25000),  //uncivilized
	RecipeData(<enchantment:blue_skies:uncivilized>, 2, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 50000),  //uncivilized
	RecipeData(<enchantment:blue_skies:uncivilized>, 3, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 100000),  //uncivilized
	RecipeData(<enchantment:tombstone:plague_bringer>, 1, [<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>], 50000),  //plague bringer
	RecipeData(<enchantment:tombstone:plague_bringer>, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>], 100000),  //plague bringer
] as RecipeData[];

val toolData = [
    RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50000),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 100000),	 //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 200000),	 //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50000),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66666),  //life-mending
	RecipeData(<enchantment:minecraft:efficiency>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})], 25000),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 50000),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})], 100000),  //effeciency
	RecipeData(<enchantment:apotheosis:depth_miner>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <minecraft:obsidian>], 25000),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <overloaded:compressed_obsidian>], 50000),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian:1>], 100000),  //miners ferver
	RecipeData(<enchantment:minecraft:silk_touch>, 1, [<tconstruct:materials:16>], 100000),  //silk touch
	RecipeData(<enchantment:minecraft:fortune>, 1, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 50000),  //fortune
	RecipeData(<enchantment:minecraft:fortune>, 2, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond_block>], 100000)  //fortune
] as RecipeData[];

val hoeData = [
    RecipeData(<enchantment:apotheosis:tempting>, 1, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:golden_apple>, <minecraft:golden_apple>, <ore:fish>, <ore:fish>, <minecraft:golden_carrot>, <minecraft:golden_carrot>], 100000),  //temptation
    RecipeData(<enchantment:apotheosis:natures_blessing>, 1, [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <botania:fertilizer>, <botania:fertilizer>], 100000)  //natures blessing
] as RecipeData[];

val fishingData = [
    /*RecipeData(106, 1, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>], 25000),  //appealing
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
    RecipeData(109, 3, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 100000),  //short cast*/
	RecipeData(<enchantment:minecraft:luck_of_the_sea>, 1, [<minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>], 75000),  //luck of the sea
	RecipeData(<enchantment:minecraft:lure>, 1, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:dye:4>], 50000)  //lure
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