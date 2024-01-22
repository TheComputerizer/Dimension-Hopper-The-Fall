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
	Util.create(<enchantment:apotheosis:berserk>.registryName, 50, {
		{1:[<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})],
		2:[<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})]}:1,
		{3:[<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})],
		4:[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})]}:2
	}): Global.getArmorEnchants(),

	//capturing
	Util.create(<enchantment:apotheosis:capturing>.registryName, 250, {
		{1:[<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <overloaded:nether_star_block>]}:1,
	}): [Global.enchant["sword"]],

	//depth miner
	Util.create(<enchantment:apotheosis:depth_miner>.registryName, 25, {
		{1:[<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <minecraft:obsidian>],
		2:[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <overloaded:compressed_obsidian>],
		3:[<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian:1>]}:1,
		{4:[<overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:2>],
		5:[<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:3>]}:2
	}): Global.getToolEnchants(),

	//hell infusion
	Util.create(<enchantment:apotheosis:hell_infusion>.registryName, 25, {
		{1:[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:blaze_powder>],
		2:[<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>],
		3:[<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>, <overloaded:compressed_netherrack:1>, <overloaded:compressed_netherrack:1>]}:1
	}): [Global.enchant["sword"]],

	//icy thorns
	Util.create(<enchantment:apotheosis:icy_thorns>.registryName, 50, {
		{1:[<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>]}:1,
		{2:[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>],
		3:[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <botania:thornchakram>]}:2
	}): Global.getArmorEnchants(),

	//knowledge of the ages
	Util.create(<enchantment:apotheosis:knowledge>.registryName, 100, {
		{1:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>],
		2:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>, <enderio:item_xp_transfer>]}:1
	}): [Global.enchant["sword"]],

	//life mending
	Util.create(<enchantment:apotheosis:life_mending>.registryName, 50, {
		{1:[<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>]}:1,
		{2:[<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>],
		3:[<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>]}:2
	}): Global.getAllEnchants(),

	//mounted strike
	Util.create(<enchantment:apotheosis:mounted_strike>.registryName, 25, {
		{1:[<minecraft:saddle>],
		2:[<minecraft:saddle>, <minecraft:saddle>],
		3:[<minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>]}:1
	}): [Global.enchant["sword"]],

	//natures blessing
	Util.create(<enchantment:apotheosis:natures_blessing>.registryName, 100, {
		{1:[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <botania:fertilizer>, <botania:fertilizer>]}:1
	}): [Global.enchant["hoe"]],

	//occult aversion
	Util.create(<enchantment:apotheosis:magic_protection>.registryName, 50, {
		{1:[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>],
		2:[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})]}:1,
		{3:[<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})],
		4:[<tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})]}:2
	}): Global.getArmorEnchants(),
	
	//rebounding
	Util.create(<enchantment:apotheosis:rebounding>.registryName, 50, {
		{1:[<minecraft:piston>, <minecraft:piston>],
		2:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>]}:1,
		{3:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>]}:2
	}): Global.getArmorEnchants(),

	//scavenger
	Util.create(<enchantment:apotheosis:scavenger>.registryName, 150, {
		{1:[<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:dragon_egg>]}:1
	}): [Global.enchant["sword"]],

	//temptation
	Util.create(<enchantment:apotheosis:tempting>.registryName, 100, {
		{1:[<minecraft:wheat>, <minecraft:wheat>, <minecraft:golden_apple>, <minecraft:golden_apple>, <ore:fish>, <ore:fish>, <minecraft:golden_carrot>, <minecraft:golden_carrot>]}:1
	}): [Global.enchant["hoe"]],

	//true infinity
	Util.create(<enchantment:apotheosis:true_infinity>.registryName, 250, {
		{1:[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:nether_star>]}:1
	}): [Global.enchant["bow"]],


	//aquaculture----------------------------------------------------------------------------------
	//appealing
	Util.create("aquaculture:appealing", 25, {
		{1:[<minecraft:fish>, <minecraft:fish>, <minecraft:fish>],
		2:[<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>],
		3:[<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:3>, <minecraft:fish:3>, <minecraft:fish:3>]}:1,
		{4:[<minecraft:fish>, <minecraft:fish>, <aquaculture:fish:16>, <minecraft:fish:2>, <minecraft:fish:2>, <aquaculture:fish:16>, <minecraft:fish:3>, <minecraft:fish:3>, <aquaculture:fish:16>],
		5:[<minecraft:fish>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:2>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:3>, <aquaculture:fish:16>, <aquaculture:fish:16>]}:2
	}): [Global.enchant["fishing"]],

	//barbed hook
	Util.create("aquaculture:barbed_hook", 25, {
		{1:[<extrautils2:spike_iron>],
		2:[<extrautils2:spike_iron>, <extrautils2:spike_iron>],
		3:[<extrautils2:spike_iron>, <extrautils2:spike_iron>, <extrautils2:spike_iron>]}:1
	}): [Global.enchant["fishing"]],

	//double hook
	Util.create("aquaculture:double_hook", 25, {
		{1:[<aquaculture:iron_fishing_rod>],
		2:[<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>],
		3:[<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>]}:1
	}): [Global.enchant["fishing"]],

	//heavy line
	Util.create("aquaculture:heavy_line", 25, {
		{1:[<minecraft:iron_block>],
		2:[<minecraft:iron_block>, <minecraft:iron_block>],
		3:[<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>]}:1
	}): [Global.enchant["fishing"]],

	//long cast
	Util.create("aquaculture:long_cast", 25, {
		{1:[<minecraft:string>, <minecraft:string>],
		2:[<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>],
		3:[<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>]}:1
	}): [Global.enchant["fishing"]],

	//magnetic
	Util.create("aquaculture:magnetic", 25, {
		{1:[<aquaculture:loot:1>],
		2:[<aquaculture:loot:1>, <aquaculture:loot:1>],
		3:[<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>]}:1
	}): [Global.enchant["fishing"]],

	//short cast
	Util.create("aquaculture:short_cast", 25, {
		{1:[<biomesoplenty:plant_0>, <biomesoplenty:plant_0>],
		2:[<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>],
		3:[<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>]}:1
	}): [Global.enchant["fishing"]],


	//blue_skies-----------------------------------------------------------------------------------
	//uncivilized
	Util.create(<enchantment:blue_skies:uncivilized>.registryName, 25, {
		{1:[<enderio:block_enderman_skull>],
		2:[<enderio:block_enderman_skull>, <enderio:block_enderman_skull>],
		3:[<enderio:block_enderman_skull>, <enderio:block_enderman_skull>, <enderio:block_enderman_skull>]}:1
	}): [Global.enchant["sword"]],


	//cofhcore-------------------------------------------------------------------------------------
	//leech
	Util.create(<enchantment:cofhcore:leech>.registryName, 50, {
		{1:[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>],
		2:[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:heartcontainer>]}:1
	}): [Global.enchant["sword"]],

	//multishot
	Util.create(<enchantment:cofhcore:multishot>.registryName, 50, {
		{1:[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:8>],
		2:[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:9>]}:1,
		{3:[<botania:manaresource:7>, <botania:manaresource:7>, <psi:material:2>, <psi:material:2>, <extendedcrafting:material:10>],
		4:[<botania:manaresource:4>, <botania:manaresource:14>, <psi:material:4>, <psi:material:3>, <extendedcrafting:material:11>]}:2
	}): [Global.enchant["bow"]],

	//soulbound
	Util.create(<enchantment:cofhcore:soulbound>.registryName, 50, {
		{1:[<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>]}:1
	}): Global.getAllEnchants(),

	//vorpal
	Util.create(<enchantment:cofhcore:vorpal>.registryName, 50, {
		{1:[ <contenttweaker:crazy_creeper_essence>]}:1
	}): [Global.enchant["sword"]],


	//endercore------------------------------------------------------------------------------------
	//xp boost
	Util.create(<enchantment:endercore:xpboost>.registryName, 50, {
		{1:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>],
		2:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>],
		3:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]}:1
	}): [Global.enchant["sword"]],


	//enderio--------------------------------------------------------------------------------------
	//decay
	Util.create(<enchantment:enderio:witherarrow>.registryName, 75, {
		{1:[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>]}:1
	}): [Global.enchant["sword"]],

	//repellent
	Util.create(<enchantment:enderio:repellent>.registryName, 50, {
		{1:[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
		2:[<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>]}:1,
		{3:[<minecraft:ender_eye>, <minecraft:ender_eye>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>],
		4:[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]}:2
	}): Global.getArmorEnchants(),

	//withering
	Util.create(<enchantment:enderio:witherarrow>.registryName, 75, {
		{1:[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>]}:1
	}): [Global.enchant["bow"]],


	//minecraft------------------------------------------------------------------------------------
	//aqua affinity
	Util.create(<enchantment:minecraft:aqua_affinity>.registryName, 75, {
		{1:[<xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]})]}:1
	}): [Global.enchant["helm"]],

	//bane of arthropods
	Util.create(<enchantment:minecraft:bane_of_arthropods>.registryName, 25, {
		{1:[<minecraft:string>,<minecraft:string>, <minecraft:string>, <minecraft:spider_eye>],
		2:[<minecraft:string>,<minecraft:spider_eye>, <minecraft:spider_eye>, <xreliquary:mob_ingredient:2>],
		3:[<minecraft:spider_eye>,<minecraft:spider_eye>, <xreliquary:mob_ingredient:2>, <xreliquary:mob_ingredient:2>]}:1
	}): [Global.enchant["sword"]],

	//blast protection
	Util.create(<enchantment:minecraft:blast_protection>.registryName, 25, {
		{1:[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],
		2:[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:obsidian>],
		3:[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian>]}:1,
		{4:[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:2>],
		5:[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:4>]}:2
	}): Global.getArmorEnchants(),

	//depth strider
	Util.create(<enchantment:minecraft:depth_strider>.registryName, 75, {
		{1:[<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})]}:1,
		{2:[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})],
		3:[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})]}:2
	}): [Global.enchant["boots"]],

	//efficiency
	Util.create(<enchantment:minecraft:efficiency>.registryName, 25, {
		{1:[<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})],
		2:[<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})],
		3:[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})]}:1,
		{4:[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})],
		5:[<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <actuallyadditions:item_potion_ring_advanced>.withTag({Blaze: 800})]}:2
	}): Global.getToolEnchants(),

	//feather falling
	Util.create(<enchantment:minecraft:feather_falling>.registryName, 25, {
		{1:[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>],
 		2:[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:brewvial>.withTag({brewKey: "featherFeet"})],
 		3:[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"})]}:1,
		{4:[<minecraft:feather>, <minecraft:feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:angelic_feather>],
		5:[<aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:phoenix_down>]}:2
	}): [Global.enchant["boots"]],

	//fire aspect
	Util.create(<enchantment:minecraft:fire_aspect>.registryName, 25, {
		{1:[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],
		2:[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>],
		3:[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>]}:1
	}): [Global.enchant["sword"]],

	//fire protection
	Util.create(<enchantment:minecraft:fire_protection>.registryName, 25, {
		{1:[<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})],
		2:[<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})],
		3:[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})]}:1,
		{4:[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})],
		5:[<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <actuallyadditions:item_potion_ring_advanced:6>.withTag({Blaze: 800})]}:2
	}): Global.getArmorEnchants(),
	
	//flame
	Util.create(<enchantment:minecraft:flame>.registryName, 100, {
		{1:[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>]}:1
	}): [Global.enchant["bow"]],

	//fortune
	Util.create(<enchantment:minecraft:fortune>.registryName, 50, {
		{1:[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
		2:[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond_block>]}:1,
		{3:[<cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>]}:2
	}): Global.getToolEnchants(),
	
	//frost walker
	Util.create(<enchantment:minecraft:frost_walker>.registryName, 50, {
		{1:[<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <cavern:slippery_ice>, <cavern:slippery_ice>]}:1,
		{2:[<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>]}:2
	}): [Global.enchant["boots"]],
	
	//infinity
	Util.create(<enchantment:minecraft:infinity>.registryName, 100, {
		{1:[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]}:1
	}): [Global.enchant["bow"]],

	//knockback
	Util.create(<enchantment:minecraft:knockback>.registryName, 25, {
		{1:[<minecraft:piston>],
		2:[<minecraft:piston>, <minecraft:piston>],
		3:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>]}:1
	}): [Global.enchant["sword"]],

	//looting
	Util.create(<enchantment:minecraft:looting>.registryName, 25, {
		{1:[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>],
		2:[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>],
		3:[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:gold_block>]}:1
	}): [Global.enchant["sword"]],

	//luck of the sea
	Util.create(<enchantment:minecraft:luck_of_the_sea>.registryName, 75, {
		{1:[<minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>]}:1
	}): [Global.enchant["fishing"]],

	//lure
	Util.create(<enchantment:minecraft:lure>.registryName, 50, {
		{1:[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:dye:4>]}:1
	}): [Global.enchant["fishing"]],

	//mending
	Util.create(<enchantment:minecraft:mending>.registryName, 100, {
		{1:[<minecraft:nether_star>]}:1
	}): Global.getAllEnchants(),

	//power
	Util.create(<enchantment:minecraft:power>.registryName, 25, {
		{1:[<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})],
		2:[<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})],
		3:[<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})]}:1,
		{4:[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})],
		5:[<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <actuallyadditions:item_potion_ring_advanced:2>.withTag({Blaze: 800})]}:2
	}): [Global.enchant["bow"]],

	//projectile protection
	Util.create(<enchantment:minecraft:projectile_protection>.registryName, 25, {
		{1:[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>],
		2:[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:shield>],
		3:[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <immersiveengineering:shield>]}:1,
		{4:[<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <rpsideas:ebony_shield>, <immersiveengineering:shield>],
		5:[<minecraft:arrow>, <minecraft:arrow>, <thebetweenlands:valonite_shield>, <rpsideas:ebony_shield>, <immersiveengineering:shield>]}:2
	}): Global.getArmorEnchants(),

	//protection
	Util.create(<enchantment:minecraft:protection>.registryName, 25, {
		{1:[<thermalfoundation:material:352>, <thermalfoundation:material:352>],
		2:[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:obsidian>],
		3:[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian>]}:1,
		{4:[<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian:2>],
		5:[<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <overloaded:compressed_obsidian:4>]}:2
	}): Global.getArmorEnchants(),
	
	//punch
	Util.create(<enchantment:minecraft:punch>.registryName, 25, {
		{1:[<minecraft:piston>],
		2:[<minecraft:piston>, <minecraft:piston>],
		3:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>]}:1,
		{4:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>],
		5:[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <opencomputers:upgrade:20>]}:2
	}): [Global.enchant["bow"]],

	//respiration
	Util.create(<enchantment:minecraft:respiration>.registryName, 50, {
		{1:[<simpledivegear:divehelmet>],
		2:[<simpledivegear:divehelmet>, <simpledivegear:divehelmet>]}:1,
		{3:[<simpledivegear:divehelmet>, <simpledivegear:divehelmet>, <simpledivegear:divehelmet>]}:2
	}): [Global.enchant["helm"]],

	//sharpness
	Util.create(<enchantment:minecraft:sharpness>.registryName, 25, {
		{1:[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>],
		2:[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>],
		3:[<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>]}:1,
		{4:[<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>],
		5:[<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>]}:2
	}): [Global.enchant["sword"]],

	//silk touch
	Util.create(<enchantment:minecraft:silk_touch>.registryName, 75, {
		{1:[<tconstruct:materials:16>]}:1
	}): Global.getToolEnchants(),

	//smite
	Util.create(<enchantment:minecraft:smite>.registryName, 25, {
		{1:[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>],
		2:[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>],
		3:[<minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>]}:1,
		{4:[<minecraft:skull:2>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>],
		5:[<minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>]}:2
	}): [Global.enchant["sword"]],

	//sweeping edge
	Util.create(<enchantment:minecraft:sweeping>.registryName, 25, {
		{1:[<botania:manaresource>, <botania:manaresource>],
		2:[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>],
		3:[<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material>]}:1
	}): [Global.enchant["sword"]],

	//thorns
	Util.create(<enchantment:minecraft:thorns>.registryName, 25, {
		{1:[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>],
		2:[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>],
		3:[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>]}:1,
		{4:[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>],
		5:[<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>, <xreliquary:witherless_rose>]}:2
	}): Global.getArmorEnchants(),

	//unbreaking
	Util.create(<enchantment:minecraft:unbreaking>.registryName, 25, {
		{1:[<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>],
		2:[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
		3:[<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>]}:1,
		{4:[<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>],
		5:[<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>]}:2
	}): Global.getAllEnchants(),


	//openblocks-----------------------------------------------------------------------------------
	//last stand
	Util.create(<enchantment:openblocks:last_stand>.registryName, 250, {
		{1:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <minecraft:nether_star>]}:1,
		{2:[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <extendedcrafting:storage:6>]}:2
	}): Global.getArmorEnchants(),

	//unstable
	Util.create(<enchantment:openblocks:explosive>.registryName, 100, {
		{1:[<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>]}:1,
		{2:[<aoa3:destruction_staff>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>]}:2
	}): Global.getArmorEnchants(),

	//tombstone------------------------------------------------------------------------------------

	//magic siphon
	Util.create(<enchantment:tombstone:magic_siphon>.registryName, 100, {
		{1:[<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"})]}:1
	}): [Global.enchant["sword"]],

	//plague bringer
	Util.create(<enchantment:tombstone:plague_bringer>.registryName, 50, {
		{1:[<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>],
		2:[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>]}:1
	}): [Global.enchant["sword"]],

	//shadow step
	Util.create(<enchantment:tombstone:shadow_step>.registryName, 25, {
		{1:[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>],
		2:[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>],
		3:[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>]}:1,
		{4:[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>],
		5:[<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>, <aoa3:shadow_sapling>]}:2
	}): [Global.enchant["boots"]],
} as IOreDictEntry[][Util.Data];

function run() {
	for data, oredicts in oreDictRecipeData {
		for oredict in oredicts {
			Util.makeRecipes(data, oredict);
		}
	}
}