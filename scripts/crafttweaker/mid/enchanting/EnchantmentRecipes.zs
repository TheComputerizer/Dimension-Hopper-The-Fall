#reloadable

import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crafttweaker.early.util.Globals as Global;
import scripts.crafttweaker.mid.enchanting.EnchantmentData as Util;

static oreDictRecipeData as IOreDictEntry[][Util.Data] = {
	//apotheosis-----------------------------------------------------------------------------------
	//berserkers fury
	Util.create(<enchantment:apotheosis:berserk>, 50, {
		[<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})]:1,
		[<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})]:2,
		[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})]:2
	}): Global.getArmorEnchants(),

	//capturing
	Util.create(<enchantment:apotheosis:capturing>, 250, {
		[<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <overloaded:nether_star_block>]:1,
	}): [Global.enchant["sword"]],

	//depth miner
	Util.create(<enchantment:apotheosis:depth_miner>, 25, {
		[<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <minecraft:obsidian>]:1,
		[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <overloaded:compressed_obsidian>]:1,
		[<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian:1>]:1,
		[<overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:2>]:2,
		[<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:3>]:2
	}): Global.getToolEnchants(),

	//hell infusion
	Util.create(<enchantment:apotheosis:hell_infusion>, 25, {
		[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:blaze_powder>]:1,
		[<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>]:1,
		[<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>, <overloaded:compressed_netherrack:1>, <overloaded:compressed_netherrack:1>]:1
	}): [Global.enchant["sword"]],

	//icy thorns
	Util.create(<enchantment:apotheosis:icy_thorns>, 50, {
		[<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>]:1,
		[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>]:2,
		[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <botania:thornchakram>]:2
	}): Global.getArmorEnchants(),

	//knowledge of the ages
	Util.create(<enchantment:apotheosis:knowledge>, 100, {
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>]:1,
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>, <enderio:item_xp_transfer>]:1
	}): [Global.enchant["sword"]],

	//life mending
	Util.create(<enchantment:apotheosis:life_mending>, 50, {
		[<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>]:1,
		[<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>]:2,
		[<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>]:2
	}): Global.getAllEnchants(),

	//mounted strike
	Util.create(<enchantment:apotheosis:mounted_strike>, 25, {
		[<minecraft:saddle>]:1,
		[<minecraft:saddle>, <minecraft:saddle>]:1,
		[<minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>]:1
	}): [Global.enchant["sword"]],

	//natures blessing
	Util.create(<enchantment:apotheosis:natures_blessing>, 100, {
		[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <botania:fertilizer>, <botania:fertilizer>]:1
	}): [Global.enchant["hoe"]],

	//occult aversion
	Util.create(<enchantment:apotheosis:magic_protection>, 50, {
		[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>]:1,
		[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})]:1,
		[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})]:2,
		[<tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})]:2
	}): Global.getArmorEnchants(),
	
	//rebounding
	Util.create(<enchantment:apotheosis:rebounding>, 50, {
		[<minecraft:piston>, <minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>]:2
	}): Global.getArmorEnchants(),

	//scavenger
	Util.create(<enchantment:apotheosis:scavenger>, 150, {
		[<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:dragon_egg>]:1
	}): [Global.enchant["sword"]],

	//temptation
	Util.create(<enchantment:apotheosis:tempting>, 100, {
		[<minecraft:wheat>, <minecraft:wheat>, <minecraft:golden_apple>, <minecraft:golden_apple>, <ore:fish>, <ore:fish>, <minecraft:golden_carrot>, <minecraft:golden_carrot>]:1
	}): [Global.enchant["hoe"]],

	//true infinity
	Util.create(<enchantment:apotheosis:true_infinity>, 250, {
		[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:nether_star>]:1
	}): [Global.enchant["bow"]],


	//blue_skies------------------------------------------------------------------------------------
	//uncivilized
	Util.create(<enchantment:blue_skies:uncivilized>, 25, {
		[<enderio:block_enderman_skull>]:1,
		[<enderio:block_enderman_skull>, <enderio:block_enderman_skull>]:1,
		[<enderio:block_enderman_skull>, <enderio:block_enderman_skull>, <enderio:block_enderman_skull>]:1
	}): [Global.enchant["sword"]],


	//cofhcore-------------------------------------------------------------------------------------
	//leech
	Util.create(<enchantment:cofhcore:leech>, 50, {
		[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>]:1, 
		[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:heartcontainer>]:1
	}): [Global.enchant["sword"]],

	//multishot
	Util.create(<enchantment:cofhcore:multishot>, 50, {
		[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:8>]:1,
		[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:9>]:1,
		[<botania:manaresource:7>, <botania:manaresource:7>, <psi:material:2>, <psi:material:2>, <extendedcrafting:material:10>]:2,
		[<botania:manaresource:4>, <botania:manaresource:14>, <psi:material:4>, <psi:material:3>, <extendedcrafting:material:11>]:2
	}): [Global.enchant["bow"]],

	//soulbound
	Util.create(<enchantment:cofhcore:soulbound>, 50, {
		[<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>]:1
	}): Global.getAllEnchants(),

	//vorpal
	Util.create(<enchantment:cofhcore:vorpal>, 50, {
		[ <contenttweaker:crazy_creeper_essence>]:1
	}): [Global.enchant["sword"]],


	//endercore------------------------------------------------------------------------------------
	Util.create(<enchantment:cofhcore:vorpal>, 50, {
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]:1,
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]:1,
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]:1
	}): [Global.enchant["sword"]],


	//enderio--------------------------------------------------------------------------------------
	//decay
	Util.create(<enchantment:enderio:witherarrow>, 75, {
		 [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>]:1
	}): [Global.enchant["sword"]],

	//repellent
	Util.create(<enchantment:enderio:repellent>, 50, {
		[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>]:1,
		[<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>]:1,
		[<minecraft:ender_eye>, <minecraft:ender_eye>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>]:2,
		[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]:2
	}): Global.getArmorEnchants(),

	//withering
	Util.create(<enchantment:enderio:witherarrow>, 75, {
		[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>]:1
	}): [Global.enchant["bow"]],


	//minecraft------------------------------------------------------------------------------------
	//aqua affinity
	Util.create(<enchantment:minecraft:aqua_affinity>, 75, {
		[<xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]})]:1
	}): [Global.enchant["helm"]],

	//bane of arthropods
	Util.create(<enchantment:minecraft:bane_of_arthropods>, 25, {
		[<minecraft:string>,<minecraft:string>, <minecraft:string>, <minecraft:spider_eye>]:1,
		[<minecraft:string>,<minecraft:spider_eye>, <minecraft:spider_eye>, <xreliquary:mob_ingredient:2>]:1,
		[<minecraft:spider_eye>,<minecraft:spider_eye>, <xreliquary:mob_ingredient:2>, <xreliquary:mob_ingredient:2>]:1
	}): [Global.enchant["sword"]],

	//blast protection
	Util.create(<enchantment:minecraft:blast_protection>, 25, {
		[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>]:1,
		[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:obsidian>]:1,
		[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian>]:1,
		[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:2>]:2,
		[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:4>]:2
	}): Global.getArmorEnchants(),

	//depth strider
	Util.create(<enchantment:minecraft:depth_strider>, 75, {
		[<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})]:2,
		[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})]:2
	}): [Global.enchant["boots"]],

	//efficiency
	Util.create(<enchantment:minecraft:efficiency>, 25, {
		[<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})]:1,
		[<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})]:2,
		[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <actuallyadditions:item_potion_ring_advanced>.withTag({Blaze: 800})]:2
	}): Global.getToolEnchants(),

	//feather falling
	Util.create(<enchantment:minecraft:feather_falling>, 25, {
		[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>]:1,
 		[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:brewvial>.withTag({brewKey: "featherFeet"})]:1,
 		[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"})]:1,
		[<minecraft:feather>, <minecraft:feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:angelic_feather>]:2,
		[<aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:phoenix_down>]:2
	}): [Global.enchant["boots"]],

	//fire aspect
	Util.create(<enchantment:minecraft:fire_aspect>, 25, {
		[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]:1,
		[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>]:1,
		[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>]:1
	}): [Global.enchant["sword"]],

	//fire protection
	Util.create(<enchantment:minecraft:fire_protection>, 25, {
		[<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})]:1,
		[<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})]:1,
		[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})]:1,
		[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})]:2,
		[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <actuallyadditions:item_potion_ring_advanced:6>.withTag({Blaze: 800})]:2
	}): Global.getArmorEnchants(),
	
	//flame
	Util.create(<enchantment:minecraft:flame>, 100, {
		[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>]:1
	}): [Global.enchant["bow"]],

	//fortune
	Util.create(<enchantment:minecraft:fortune>, 50, {
		[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]:1,
		[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond_block>]:1,
		[<cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>]:2
	}): Global.getToolEnchants(),
	
	//frost walker
	Util.create(<enchantment:minecraft:frost_walker>, 50, {
		[<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <cavern:slippery_ice>, <cavern:slippery_ice>]:1,
		[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>]:2
	}): [Global.enchant["boots"]],
	
	//infinity
	Util.create(<enchantment:minecraft:infinity>, 100, {
		[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]:1
	}): [Global.enchant["bow"]],

	//knockback
	Util.create(<enchantment:minecraft:knockback>, 25, {
		[<minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>]:1
	}): [Global.enchant["sword"]],

	//looting
	Util.create(<enchantment:minecraft:looting>, 25, {
		[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>]:1,
		[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>]:1,
		[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:gold_block>]:1
	}): [Global.enchant["sword"]],

	//luck of the sea
	Util.create(<enchantment:minecraft:luck_of_the_sea>, 75, {
		[<minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>]:1
	}): [Global.enchant["fishing"]],

	//lure
	Util.create(<enchantment:minecraft:lure>, 50, {
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:dye:4>]:1
	}): [Global.enchant["fishing"]],

	//mending
	Util.create(<enchantment:minecraft:mending>, 100, {
		[<minecraft:nether_star>]:1
	}): Global.getAllEnchants(),

	//power
	Util.create(<enchantment:minecraft:power>, 25, {
		[<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})]:1,
		[<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})]:1,
		[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})]:2,
		[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <actuallyadditions:item_potion_ring_advanced:2>.withTag({Blaze: 800})]:2
	}): [Global.enchant["bow"]],

	//projectile protection
	Util.create(<enchantment:minecraft:projectile_protection>, 25, {
		[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>]:1,
		[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:shield>]:1,
		[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <immersiveengineering:shield>]:1,
		[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <rpsideas:ebony_shield>, <immersiveengineering:shield>]:2,
		[<minecraft:arrow>, <minecraft:arrow>, <thebetweenlands:valonite_shield>, <rpsideas:ebony_shield>, <immersiveengineering:shield>]:2
	}): Global.getArmorEnchants(),

	//protection
	Util.create(<enchantment:minecraft:protection>, 25, {
		[<thermalfoundation:material:352>, <thermalfoundation:material:352>]:1,
		[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:obsidian>]:1,
		[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian>]:1,
		[<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian:2>]:2, 
		[<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <overloaded:compressed_obsidian:4>]:2
	}): Global.getArmorEnchants(),
	
	//punch
	Util.create(<enchantment:minecraft:punch>, 25, {
		[<minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>]:1,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>]:2,
		[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <opencomputers:upgrade:20>]:2
	}): [Global.enchant["bow"]],

	//respiration
	Util.create(<enchantment:minecraft:respiration>, 50, {
		[<simpledivegear:divehelmet>]:1,
		[<simpledivegear:divehelmet>, <simpledivegear:divehelmet>]:1,
		[<simpledivegear:divehelmet>, <simpledivegear:divehelmet>, <simpledivegear:divehelmet>]:2
	}): [Global.enchant["helm"]],

	//sharpness
	Util.create(<enchantment:minecraft:sharpness>, 25, {
		[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>]:1,
		[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>]:1,
		[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>]:1,
		[<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>]:2,
		[<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>]:2
	}): [Global.enchant["sword"]],

	//silk touch
	Util.create(<enchantment:minecraft:silk_touch>, 75, {
		[<tconstruct:materials:16>]:1
	}): Global.getToolEnchants(),

	//smite
	Util.create(<enchantment:minecraft:smite>, 25, {
		[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]:1,
		[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>]:1,
		[<minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>]:1,
		[<minecraft:skull:2>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>]:2,
		[<minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>]:2
	}): [Global.enchant["sword"]],

	//sweeping edge
	Util.create(<enchantment:minecraft:sweeping>, 25, {
		[<botania:manaresource>, <botania:manaresource>]:1,
		[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>]:1,
		[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material>]:1
	}): [Global.enchant["sword"]],

	//thorns
	Util.create(<enchantment:minecraft:thorns>, 25, {
		[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>]:1,
		[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>]:1,
		[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>]:1,
		[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>]:2,
		[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>, <xreliquary:witherless_rose>]:2
	}): Global.getArmorEnchants(),

	//unbreaking
	Util.create(<enchantment:minecraft:unbreaking>, 25, {
		[<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>]:1,
		[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]:1,
		[<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>]:1,
		[<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>]:2,
		[<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>]:2
	}): Global.getAllEnchants(),


	//openblocks-----------------------------------------------------------------------------------
	//last stand
	Util.create(<enchantment:openblocks:last_stand>, 250, {
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <minecraft:nether_star>]:1,
		[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <extendedcrafting:storage:6>]:2
	}): Global.getArmorEnchants(),

	//unstable
	Util.create(<enchantment:openblocks:explosive>, 100, {
		[<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>]:1,
		[<aoa3:destruction_staff>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>]:2
	}): Global.getArmorEnchants(),

	//tombstone------------------------------------------------------------------------------------

	//magic siphon
	Util.create(<enchantment:tombstone:magic_siphon>, 100, {
		 [<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"})]:1
	}): [Global.enchant["sword"]],

	//plague bringer
	Util.create(<enchantment:tombstone:plague_bringer>, 50, {
		 [<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>]:1,
		 [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>]:1
	}): [Global.enchant["sword"]],

	//shadow step
	Util.create(<enchantment:tombstone:shadow_step>, 25, {
		[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>]:1,
		[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>]:1,
		[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>]:1,
		[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>]:2,
		[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>, <aoa3:shadow_sapling>]:2
	}): [Global.enchant["boots"]],
} as IOreDictEntry[][Util.Data];

function run() {
	for data, oredicts in oreDictRecipeData {
		for oredict in oredicts {
			Util.makeRecipes(data, oredict);
		}
	}
}

/*
val fishingData = [
    RecipeData(106, 1, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>], 25000),  //appealing
    RecipeData(106, 2, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>], 50000),  //appealing
    RecipeData(106, 3, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:3>, <minecraft:fish:3>, <minecraft:fish:3>], 100000),  //appealing

	RecipeData(106, 4, [<minecraft:fish>, <minecraft:fish>, <aquaculture:fish:16>, <minecraft:fish:2>, <minecraft:fish:2>, <aquaculture:fish:16>, <minecraft:fish:3>, <minecraft:fish:3>, <aquaculture:fish:16>], 111),  //appealing
	RecipeData(106, 5, [<minecraft:fish>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:2>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:3>, <aquaculture:fish:16>, <aquaculture:fish:16>], 160),  //appealing

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
] as RecipeData[];
*/