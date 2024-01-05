#reloadable

import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.artisanworktables.builder.RecipeBuilder;

zenClass RecipeData {
    val enchantmentDef as IEnchantmentDefinition;
    val enchantmentLevel as int;
    val ingredients as IIngredient[];
    val infusionLevel as long;
    zenConstructor(enchDef as IEnchantmentDefinition, enchLvl as int, ingr as IIngredient[], infusion as int) {
        enchantmentDef = enchDef;
        enchantmentLevel = enchLvl;
        ingredients = ingr;
        infusionLevel = infusion as long;
	}
    function makeRecipe(oredict as IOreDictEntry) as void {
		RecipeBuilder.get("mage")
		.setShapeless((ingredients+oredict.marked("enchant").transformNew(function(oredict) { 
				return oredict.withTag(oredict.tag - "ench");
			}).noReturn()) as IIngredient[])
		.setRecipeFunction(function (out, ins, cInfo) {
			if(!ins.enchant.hasTag) return ins.enchant.withTag({ench: [{lvl: enchantmentLevel as short, id: this.enchantmentDef.id}]});
			var tag = ins.enchant.tag;
			if(!(tag has "ench")) return ins.enchant.withTag({ench: [{lvl: enchantmentLevel as short, id: this.enchantmentDef.id}]});
			for enchantmentTag in tag.ench.asList()  {
				if(enchantmentTag.id == this.enchantmentDef.id || tag.ench.asList().length>=5) return null;
			}
			return ins.enchant.withTag(ins.enchant.tag + {ench: [{lvl: enchantmentLevel as short, id: this.enchantmentDef.id}]} as IData);
		})
		.setFluid(<liquid:xpjuice>*(infusionLevel*100))
		.addTool(<ore:artisansAthame>, infusionLevel)
		.addTool(<ore:artisansGrimoire>, infusionLevel)
		.addTool(<ore:artisansHammer>, infusionLevel)
		.setMinimumTier(2)
		.addOutput(oredict.items[0])
		.create();
    }
}

val armorData = [
    RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25),	//unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50),  //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 75),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 4, [<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>], 111),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 5, [<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>], 160),  //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 100),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 2, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 100),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 3, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 160),  //life-mending
	RecipeData(<enchantment:minecraft:protection>, 1, [<thermalfoundation:material:352>, <thermalfoundation:material:352>], 25), //protection
	RecipeData(<enchantment:minecraft:protection>, 2, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:obsidian>], 50),  //protection
	RecipeData(<enchantment:minecraft:protection>, 3, [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian>], 75),  //protection
	RecipeData(<enchantment:minecraft:protection>, 4, [<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <overloaded:compressed_obsidian:2>], 111),  //protection
	RecipeData(<enchantment:minecraft:protection>, 5, [<thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy>, <overloaded:compressed_obsidian:4>], 160),  //protection
	RecipeData(<enchantment:enderio:repellent>, 1, [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>], 50), //repellent
	RecipeData(<enchantment:enderio:repellent>, 2, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 75),  //repellent
	RecipeData(<enchantment:enderio:repellent>, 3, [<minecraft:ender_eye>, <minecraft:ender_eye>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 111),  //repellent
	RecipeData(<enchantment:enderio:repellent>, 4, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>], 160),  //repellent
	RecipeData(<enchantment:minecraft:fire_protection>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})], 25), //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})], 50),  //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 3, [<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})], 75),  //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 4, [<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"})], 111),  //fire prot
	RecipeData(<enchantment:minecraft:fire_protection>, 5, [<botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <botania:incensestick>.withTag({brewKey: "fireResistance"}), <actuallyadditions:item_potion_ring_advanced:6>.withTag({Blaze: 800})], 160),  //fire prot
	RecipeData(<enchantment:apotheosis:rebounding>, 1, [<minecraft:piston>, <minecraft:piston>], 50), //rebounding
	RecipeData(<enchantment:apotheosis:rebounding>, 2, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 100), //rebounding
	RecipeData(<enchantment:apotheosis:rebounding>, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>, <galacticraftcore:air_fan>], 160), //rebounding
	RecipeData(<enchantment:minecraft:blast_protection>, 1, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], 25),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 2, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:obsidian>], 50),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 3, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian>], 75),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 4, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:2>], 111),  //blast prot
	RecipeData(<enchantment:minecraft:blast_protection>, 5, [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>, <overloaded:compressed_obsidian:4>], 160),  //blast prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 1, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>], 25),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 2, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:shield>], 50),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 3, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <immersiveengineering:shield>], 75),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 4, [<minecraft:arrow>, <minecraft:arrow>, <minecraft:arrow>, <rpsideas:ebony_shield>, <immersiveengineering:shield>], 111),  //proj prot
	RecipeData(<enchantment:minecraft:projectile_protection>, 5, [<minecraft:arrow>, <minecraft:arrow>, <thebetweenlands:valonite_shield>, <rpsideas:ebony_shield>, <immersiveengineering:shield>], 160),  //proj prot
	RecipeData(<enchantment:apotheosis:icy_thorns>, 1, [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>], 50), //icy thorns
	RecipeData(<enchantment:apotheosis:icy_thorns>, 2, [<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>], 100), //icy thorns
	RecipeData(<enchantment:apotheosis:icy_thorns>, 3, [<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <botania:thornchakram>], 160), //icy thorns
	RecipeData(<enchantment:apotheosis:berserk>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 50),  //berserkers fury
	RecipeData(<enchantment:apotheosis:berserk>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 75),  //berserkers fury
	RecipeData(<enchantment:apotheosis:berserk>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})], 111),  //berserkers fury
	RecipeData(<enchantment:apotheosis:berserk>, 4, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})], 160),  //berserkers fury
	RecipeData(<enchantment:minecraft:thorns>, 1, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>], 25),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 2, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>], 50),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 3, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>], 75),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 4, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>], 111),  //thorns
	RecipeData(<enchantment:minecraft:thorns>, 5, [<minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <minecraft:cactus>, <biomesoplenty:plant_1:2>, <biomesoplenty:plant_1:2>, <gaiadimension:thorny_wiltha>, <gaiadimension:thorny_wiltha>, <botania:thornchakram>, <xreliquary:witherless_rose>], 160),  //thorns
	RecipeData(<enchantment:openblocks:explosive>, 1, [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>], 75),  //unstable
	RecipeData(<enchantment:openblocks:explosive>, 2, [<aoa3:destruction_staff>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:tnt>, <minecraft:tnt>, <xreliquary:destruction_catalyst>], 160),  //unstable
	RecipeData(<enchantment:openblocks:last_stand>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <minecraft:nether_star>], 100),  //last stand
	RecipeData(<enchantment:openblocks:last_stand>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <xreliquary:infernal_tear>, <extendedcrafting:storage:6>], 160),  //last stand
	RecipeData(<enchantment:apotheosis:magic_protection>, 1, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>], 50),  //occult aversion
	RecipeData(<enchantment:apotheosis:magic_protection>, 2, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})], 75),  //occult aversion
	RecipeData(<enchantment:apotheosis:magic_protection>, 3, [<tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:crafting_ingredient:3>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})], 111),  //occult aversion
	RecipeData(<enchantment:apotheosis:magic_protection>, 4, [<tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte})], 160)  //occult aversion
] as RecipeData[];

val helmetData = [
    RecipeData(<enchantment:minecraft:respiration>, 1, [<simpledivegear:divehelmet>], 50),  //respiration
    RecipeData(<enchantment:minecraft:respiration>, 2, [<simpledivegear:divehelmet>, <simpledivegear:divehelmet>], 75),  //respiration
	RecipeData(<enchantment:minecraft:respiration>, 3, [<simpledivegear:divehelmet>, <simpledivegear:divehelmet>, <simpledivegear:divehelmet>], 111),  //respiration
    RecipeData(<enchantment:minecraft:aqua_affinity>, 1, [<xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]}), <xreliquary:magazine:1>.withTag({effects: [{duration: 150, potency: 0, name: "minecraft:water_breathing"}]})], 66) //aqua affinity
] as RecipeData[];

val bootData = [
    RecipeData(<enchantment:minecraft:feather_falling>, 1, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>], 25),  //feather falling
    RecipeData(<enchantment:minecraft:feather_falling>, 2, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:brewvial>.withTag({brewKey: "featherFeet"})], 50),  //feather falling
    RecipeData(<enchantment:minecraft:feather_falling>, 3, [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <minecraft:feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"})], 75),  //feather falling
	RecipeData(<enchantment:minecraft:feather_falling>, 4, [<minecraft:feather>, <minecraft:feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:angelic_feather>], 111),  //feather falling
	RecipeData(<enchantment:minecraft:feather_falling>, 5, [<aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <aether:cockatrice_feather>, <botania:incensestick>.withTag({brewKey: "featherFeet"}), <xreliquary:phoenix_down>], 160),  //feather falling
	RecipeData(<enchantment:minecraft:depth_strider>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 66), //depth strider
	RecipeData(<enchantment:minecraft:depth_strider>, 2, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})], 100), //depth strider
	RecipeData(<enchantment:minecraft:depth_strider>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})], 160), //depth strider
	RecipeData(<enchantment:minecraft:frost_walker>, 1, [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <cavern:slippery_ice>, <cavern:slippery_ice>], 50),  //frost walker
	RecipeData(<enchantment:minecraft:frost_walker>, 2, [<cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>, <cavern:slippery_ice>], 100),  //frost walker
	RecipeData(<enchantment:tombstone:shadow_step>, 1, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>], 25),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 2, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>], 50),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 3, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>], 75),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 4, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>], 111),  //shadow step
	RecipeData(<enchantment:tombstone:shadow_step>, 5, [<midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <midnight:shadowroot_log>, <minecraft:soul_sand>, <minecraft:soul_sand>, <enderio:item_material:74>, <extrabees:honey_comb:36>, <aoa3:shadow_sapling>], 160)  //shadow step
] as RecipeData[];

val bowData = [
	RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25),	//unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50),  //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 75),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 4, [<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>], 111),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 5, [<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>], 160),  //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 100),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 100),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 160),  //life-mending
	RecipeData(<enchantment:enderio:witherarrow>, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 75),  //withering
	RecipeData(<enchantment:minecraft:flame>, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 75),  //flame
	RecipeData(<enchantment:minecraft:punch>, 1, [<minecraft:piston>], 25),  //punch
	RecipeData(<enchantment:minecraft:punch>, 2, [<minecraft:piston>, <minecraft:piston>], 50),  //punch
	RecipeData(<enchantment:minecraft:punch>, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 75),  //punch
	RecipeData(<enchantment:minecraft:punch>, 4, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 111),  //punch
	RecipeData(<enchantment:minecraft:punch>, 5, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <opencomputers:upgrade:20>], 160),  //punch
	RecipeData(<enchantment:minecraft:power>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strength"})], 25),  //power
	RecipeData(<enchantment:minecraft:power>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})], 50),  //power
	RecipeData(<enchantment:minecraft:power>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength3"})], 75),  //power
	RecipeData(<enchantment:minecraft:power>, 4, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"})], 111),  //power
	RecipeData(<enchantment:minecraft:power>, 5, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <actuallyadditions:item_potion_ring_advanced:2>.withTag({Blaze: 800})], 160),  //power
	RecipeData(<enchantment:minecraft:infinity>, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>], 75),  //infinity
	RecipeData(<enchantment:apotheosis:true_infinity>, 1, [<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:nether_star>], 100),  //endless quiver
	RecipeData(<enchantment:cofhcore:multishot>, 1, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:8>], 50),  //multishot
	RecipeData(<enchantment:cofhcore:multishot>, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material:9>], 75),  //multishot
	RecipeData(<enchantment:cofhcore:multishot>, 3, [<botania:manaresource:7>, <botania:manaresource:7>, <psi:material:2>, <psi:material:2>, <extendedcrafting:material:10>], 111),  //multishot
	RecipeData(<enchantment:cofhcore:multishot>, 4, [<botania:manaresource:4>, <botania:manaresource:14>, <psi:material:4>, <psi:material:3>, <extendedcrafting:material:11>], 160),  //multishot
] as RecipeData[];

val swordData = [
	RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25),	//unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50),  //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 75),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 4, [<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>], 111),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 5, [<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>], 160),  //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 100),  //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 100),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 160),  //life-mending
	RecipeData(<enchantment:minecraft:sharpness>, 1, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 25),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 2, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 50),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 3, [<minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 75),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 4, [<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz_block>, <minecraft:quartz>, <minecraft:quartz>], 111),  //sharpness
	RecipeData(<enchantment:minecraft:sharpness>, 5, [<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:chiseled_quartz_block>], 160),  //sharpness
	RecipeData(<enchantment:minecraft:smite>, 1, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], 25),  //smite
	RecipeData(<enchantment:minecraft:smite>, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>], 50),  //smite
	RecipeData(<enchantment:minecraft:smite>, 3, [<minecraft:rotten_flesh>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>], 75),  //smite
	RecipeData(<enchantment:minecraft:smite>, 4, [<minecraft:skull:2>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <minecraft:skull:2>], 111),  //smite
	RecipeData(<enchantment:minecraft:smite>, 5, [<minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>, <minecraft:skull:2>], 160),  //smite
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 1, [<minecraft:string>,<minecraft:string>, <minecraft:string>, <minecraft:spider_eye>], 25),  //bane of arthropods
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 2, [<minecraft:string>,<minecraft:spider_eye>, <minecraft:spider_eye>, <xreliquary:mob_ingredient:2>], 50),  //bane of arthropods
	RecipeData(<enchantment:minecraft:bane_of_arthropods>, 3, [<minecraft:spider_eye>,<minecraft:spider_eye>, <xreliquary:mob_ingredient:2>, <xreliquary:mob_ingredient:2>], 75),  //bane of arthropods
	RecipeData(<enchantment:minecraft:knockback>, 1, [<minecraft:piston>], 25),  //knockback
	RecipeData(<enchantment:minecraft:knockback>, 2, [<minecraft:piston>, <minecraft:piston>], 50),  //knockback
	RecipeData(<enchantment:minecraft:knockback>, 3, [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 75),  //knockback
	RecipeData(<enchantment:minecraft:looting>, 1, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], 25),  //looting
	RecipeData(<enchantment:minecraft:looting>, 2, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>], 50),  //looting
	RecipeData(<enchantment:minecraft:looting>, 3, [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:gold_block>], 75),  //looting
	RecipeData(<enchantment:minecraft:sweeping>, 1, [<botania:manaresource>, <botania:manaresource>], 25),  //sweeping edge
	RecipeData(<enchantment:minecraft:sweeping>, 2, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>], 50),  //sweeping edge
	RecipeData(<enchantment:minecraft:sweeping>, 3, [<botania:manaresource>, <botania:manaresource>, <psi:material:1>, <psi:material:1>, <extendedcrafting:material>], 75),  //sweeping edge
	RecipeData(<enchantment:minecraft:fire_aspect>, 1, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>], 25),  //fire aspect
	RecipeData(<enchantment:minecraft:fire_aspect>, 2, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>], 50),  //fire aspect
	RecipeData(<enchantment:minecraft:fire_aspect>, 3, [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:fire_charge>, <minecraft:fire_charge>, <xreliquary:mob_ingredient:7>], 75),  //fire aspect
	RecipeData(<enchantment:apotheosis:hell_infusion>, 1, [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:blaze_powder>], 25),  //hell infusion
	RecipeData(<enchantment:apotheosis:hell_infusion>, 2, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>], 50),  //hell infusion
	RecipeData(<enchantment:apotheosis:hell_infusion>, 3, [<minecraft:nether_brick>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_powder>, <overloaded:compressed_netherrack:1>, <overloaded:compressed_netherrack:1>], 75),  //hell infusion
	RecipeData(<enchantment:enderio:witherweapon>, 1, [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>, <extrautils2:ingredients:10>], 75),  //decay
	RecipeData(<enchantment:endercore:xpboost>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 25),  //xp boost
	RecipeData(<enchantment:endercore:xpboost>, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 50),  //xp boost
	RecipeData(<enchantment:endercore:xpboost>, 3, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>], 75),  //xp boost
	RecipeData(<enchantment:apotheosis:scavenger>, 1, [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:dragon_egg>], 85),  //scavenger
	RecipeData(<enchantment:cofhcore:leech>, 1, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>], 50),  //leech
	RecipeData(<enchantment:cofhcore:leech>, 2, [<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:heartcontainer>], 75),  //leech
	RecipeData(<enchantment:cofhcore:vorpal>, 1, [ <contenttweaker:crazy_creeper_essence>], 50),  //vorpal
	RecipeData(<enchantment:apotheosis:mounted_strike>, 1, [<minecraft:saddle>], 25),  //mounted strike
	RecipeData(<enchantment:apotheosis:mounted_strike>, 2, [<minecraft:saddle>, <minecraft:saddle>], 50),  //mounted strike
	RecipeData(<enchantment:apotheosis:mounted_strike>, 3, [<minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>, <minecraft:saddle>], 75),  //mounted strike
	RecipeData(<enchantment:tombstone:magic_siphon>, 1, [<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),<minecraft:potion>.withTag({Potion: "cofhcore:healing4"})], 75),  //magic siphon
	RecipeData(<enchantment:apotheosis:capturing>, 1, [<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>, <overloaded:nether_star_block>], 100),  //capturing
	RecipeData(<enchantment:apotheosis:knowledge>, 1, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>], 50),  //knowledge of the ages
	RecipeData(<enchantment:apotheosis:knowledge>, 2, [<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <enderio:item_xp_transfer>, <enderio:item_xp_transfer>], 75),  //knowledge of the ages
	RecipeData(<enchantment:blue_skies:uncivilized>, 1, [<enderio:block_enderman_skull>], 25),  //uncivilized
	RecipeData(<enchantment:blue_skies:uncivilized>, 2, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 50),  //uncivilized
	RecipeData(<enchantment:blue_skies:uncivilized>, 3, [<enderio:block_enderman_skull>, <enderio:block_enderman_skull>, <enderio:block_enderman_skull>], 75),  //uncivilized
	RecipeData(<enchantment:tombstone:plague_bringer>, 1, [<minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>], 50),  //plague bringer
	RecipeData(<enchantment:tombstone:plague_bringer>, 2, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>], 75),  //plague bringer
] as RecipeData[];

val toolData = [
    RecipeData(<enchantment:minecraft:unbreaking>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>], 25),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], 50),	 //unbreaking
    RecipeData(<enchantment:minecraft:unbreaking>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>], 75),	 //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 4, [<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>], 111),  //unbreaking
	RecipeData(<enchantment:minecraft:unbreaking>, 5, [<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>], 160),  //unbreaking
	RecipeData(<enchantment:minecraft:mending>, 1, [<minecraft:nether_star>], 100),	 //mending
	RecipeData(<enchantment:cofhcore:soulbound>, 1, [<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>], 50),  //soulbound
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 66),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 100),  //life-mending
	RecipeData(<enchantment:apotheosis:life_mending>, 1, [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>, <extrautils2:ingredients:10>], 160),  //life-mending
	RecipeData(<enchantment:minecraft:efficiency>, 1, [<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})], 25),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 2, [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], 50),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 3, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"})], 75),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 4, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"})], 111),  //effeciency
	RecipeData(<enchantment:minecraft:efficiency>, 5, [<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}), <actuallyadditions:item_potion_ring_advanced>.withTag({Blaze: 800})], 160),  //effeciency
	RecipeData(<enchantment:apotheosis:depth_miner>, 1, [<overloaded:compressed_stone>, <overloaded:compressed_stone>, <overloaded:compressed_stone>, <minecraft:obsidian>], 25),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 2, [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <overloaded:compressed_obsidian>], 50),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 3, [<overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian>, <overloaded:compressed_obsidian:1>], 75),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 4, [<overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian:2>], 111),  //miners ferver
	RecipeData(<enchantment:apotheosis:depth_miner>, 5, [<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:3>], 160),  //miners ferver
	RecipeData(<enchantment:minecraft:silk_touch>, 1, [<tconstruct:materials:16>], 75),  //silk touch
	RecipeData(<enchantment:minecraft:fortune>, 1, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 50),  //fortune
	RecipeData(<enchantment:minecraft:fortune>, 2, [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond_block>], 75),  //fortune
	RecipeData(<enchantment:minecraft:fortune>, 3, [<cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>, <cavern:cave_block:6>], 160)  //fortune
] as RecipeData[];

val hoeData = [
    RecipeData(<enchantment:apotheosis:tempting>, 1, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:golden_apple>, <minecraft:golden_apple>, <minecraft:fish>, <minecraft:fish>, <minecraft:golden_carrot>, <minecraft:golden_carrot>], 75),  //temptation
    RecipeData(<enchantment:apotheosis:natures_blessing>, 1, [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <silentgems:glowrosefertilizer>, <botania:fertilizer>, <botania:fertilizer>], 75)  //natures blessing
] as RecipeData[];

val fishingData = [
    /*RecipeData(106, 1, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>], 25),  //appealing
    RecipeData(106, 2, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>], 50),  //appealing
    RecipeData(106, 3, [<minecraft:fish>, <minecraft:fish>, <minecraft:fish>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:2>, <minecraft:fish:3>, <minecraft:fish:3>, <minecraft:fish:3>], 75),  //appealing
	RecipeData(106, 4, [<minecraft:fish>, <minecraft:fish>, <aquaculture:fish:16>, <minecraft:fish:2>, <minecraft:fish:2>, <aquaculture:fish:16>, <minecraft:fish:3>, <minecraft:fish:3>, <aquaculture:fish:16>], 111),  //appealing
	RecipeData(106, 5, [<minecraft:fish>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:2>, <aquaculture:fish:16>, <aquaculture:fish:16>, <minecraft:fish:3>, <aquaculture:fish:16>, <aquaculture:fish:16>], 160),  //appealing
	RecipeData(112, 1, [<minecraft:iron_block>], 25), //heavy line
    RecipeData(112, 2, [<minecraft:iron_block>, <minecraft:iron_block>], 50), //heavy line
    RecipeData(112, 3, [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>], 75), //heavy line
	RecipeData(107, 1, [<aquaculture:loot:1>], 25),  //magnetic
    RecipeData(107, 2, [<aquaculture:loot:1>, <aquaculture:loot:1>], 50),  //magnetic
    RecipeData(107, 3, [<aquaculture:loot:1>, <aquaculture:loot:1>, <aquaculture:loot:1>], 75),  //magnetic
	RecipeData(111, 1, [<extrautils2:spike_iron>], 25),  //barbed hook
    RecipeData(111, 2, [<extrautils2:spike_iron>, <extrautils2:spike_iron>], 50),  //barbed hook
    RecipeData(111, 3, [<extrautils2:spike_iron>, <extrautils2:spike_iron>, <extrautils2:spike_iron>], 75),  //barbed hook
	RecipeData(110, 1, [<aquaculture:iron_fishing_rod>], 25),  //double hook
    RecipeData(110, 2, [<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>], 50),  //double hook
    RecipeData(110, 3, [<aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>, <aquaculture:iron_fishing_rod>], 75),  //double hook
	RecipeData(108, 1, [<minecraft:string>, <minecraft:string>], 25),  //long cast
    RecipeData(108, 2, [<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>], 50),  //long cast
    RecipeData(108, 3, [<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>], 75),  //long cast
	RecipeData(109, 1, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 25),  //short cast
    RecipeData(109, 2, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 50),  //short cast
    RecipeData(109, 3, [<biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>, <biomesoplenty:plant_0>], 75),  //short cast*/
	RecipeData(<enchantment:minecraft:luck_of_the_sea>, 1, [<minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>, <minecraft:lapis_block>], 70),  //luck of the sea
	RecipeData(<enchantment:minecraft:lure>, 1, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:dye:4>, <minecraft:dye:4>], 50)  //lure
] as RecipeData[];

for data in armorData {
	data.makeRecipe(oreDict.enchantableHelmets);
	data.makeRecipe(oreDict.enchantableChestplates);
	data.makeRecipe(oreDict.enchantableLeggings);
	data.makeRecipe(oreDict.enchantableBoots);
}

for data in helmetData {
	data.makeRecipe(oreDict.enchantableHelmets);
}

for data in bootData {
	data.makeRecipe(oreDict.enchantableBoots);
}

for data in bowData {
	data.makeRecipe(oreDict.enchantableBows);
}

for data in swordData {
	data.makeRecipe(oreDict.enchantableSwords);
}

for data in toolData {
	data.makeRecipe(oreDict.enchantableAxes);
	data.makeRecipe(oreDict.enchantableShovels);
	data.makeRecipe(oreDict.enchantableHoes);
	data.makeRecipe(oreDict.enchantableFishingRods);
	data.makeRecipe(oreDict.enchantableShears);
}

for data in hoeData {
	data.makeRecipe(oreDict.enchantableHoes);
}

for data in fishingData {
	data.makeRecipe(oreDict.enchantableFishingRods);
}