#reloadable

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static armorSets as Holder[][] = [
	//tier 1
	Util.tieredArmorSet("dimdoors:woven_world_thread_", <dimdoors:world_thread>, 1), //woven armor
	Util.tieredArmorSet("minecraft:golden_", <thermalfoundation:material:33>, 1), //gold armor
	Util.tieredArmorSet("minecraft:chainmail_", <quark:chain>, 1), //chainmail armor
	Util.tieredArmorSet("minecraft:iron_", <thermalfoundation:material:32>, 1), //iron armor
	Util.tieredArmorSet("tp:quartz_", <moreplates:nether_quartz_plate>, 1), //quartz armor
	Util.tieredArmorSet("actuallyadditions:item_", <moreplates:enori_plate>, 1, ["helm", "chest", "pants", "boots"], 0, "_crystal_white"), //enori armor

	//tier 2
	Util.tieredArmorSet("tp:redstone_", <moreplates:redstone_plate>, 2), //redstone armor
	Util.tieredArmorSet("gaiadimension:leucite_", <gaiadimension:leucite>, 2, ["helmet", "chestplate", "legs", "boots"]), //leucite armor
	Util.tieredArmorSet("tp:lapis_", <moreplates:lapis_lazuli_plate>, 2), //lapis armor
	Util.tieredArmorSet("gaiadimension:carnelian_", <gaiadimension:carnelian>, 2, ["helmet", "chestplate", "legs", "boots"]), //carnelian armor
	Util.tieredArmorSet("actuallyadditions:item_", <moreplates:restonia_plate>, 2, ["helm", "chest", "pants", "boots"], 0, "_crystal_red"), //restonia armor
	Util.tieredArmorSet("actuallyadditions:item_", <moreplates:palis_plate>, 2, ["helm", "chest", "pants", "boots"], 0, "_crystal_blue"), //palis armor

	//tier 3
	Util.tieredArmorSet("aquaculture:neptunium_", <aquaculture:loot:1>, 3), //neptunium armor
	Util.tieredArmorSet("aether:arkenium_", <aether:arkenium>, 3), //arkenium armor
	Util.tieredArmorSet("aether:arkenium_", <aether:arkenium>, 3), //arkenium armor
	Util.tieredArmorSet("aether:gravitite_", <aether:gravitite_plate>, 3), //gravitite armor
	Util.tieredArmorSet("tp:obsidian_", <tp:reinforced_obsidian_ingot>, 3), //obsidian armor
	Util.tieredArmorSet("gaiadimension:chalcedony_", <gaiadimension:chalcedony>, 3, ["helmet", "chestplate", "legs", "boots"]), //chalcedony armor
	Util.tieredArmorSet("actuallyadditions:item_", <moreplates:empowered_diamatine_plate>, 3, ["helm", "chest", "pants", "boots"], 0, "_crystal_light_blue"), //diamtine armor
	Util.tieredArmorSet("actuallyadditions:item_", <moreplates:empowered_emeradic_plate>, 3, ["helm", "chest", "pants", "boots"], 0, "_crystal_green"), //emeradic armor
	Util.tieredArmorSet("botania:terrasteel", <moreplates:terrasteel_plate>, 3, ["helm", "chest", "legs", "boots"]), //terrasteel armor

	//tier 5
	Util.tieredArmorSet("galacticraftplanets:desh_", <galacticraftplanets:item_basic_mars:5>, 5), //desh armor
	Util.tieredArmorSet("galacticraftplanets:titanium_", <galacticraftplanets:item_basic_asteroids:6>, 5), //titanium armor

	//tier 6
	Util.tieredArmorSet("moreplanets:multalic_crystal_", <moreplanets:multalic_crystal_pieces>, 6), //multalic crystal armor
	Util.tieredArmorSet("tp:lava_", <aoa3:bloodstone_lamp_off>, 6), //lava armor

	//tier 7
	Util.tieredArmorSet("tp:wither_", <minecraft:nether_star>, 7), //wither armor
	Util.tieredArmorSet("tp:dragon_", <tp:dragon_scale>, 7) //dragon armor
] as Holder[][];

static shapedHolders as Holder[] = [
	//artisanworktables
	Util.simpleShaped(<artisanworktables:workstation:3>, "table", [
		<artisanworktables:worktable:3>, 
		<extendedcrafting:material:2>,
		<contenttweaker:mek_wall>,
		<enderio:block_alloy:8>,
		<enderio:block_alloy:8>,null])
		.addTools({<ore:artisansHammer>:100})
		.addFluids([<liquid:emerald>*4000]), //blacksmith workstation
	Util.simpleShaped(<artisanworktables:workshop:3>, "table", [
		<artisanworktables:workstation:3>,
		<environmentaltech:pladium_crystal>, 
		<aoa3:stranglewood_log>,
		<environmentaltech:pladium_crystal>,
		<aoa3:deeplands_stone>,
		<aoa3:ancient_rock>])
		.addTools({<ore:artisansHammer>:1000,<ore:artisansFile>:1000})
		.addFluids([<liquid:varsium>*8000]), //blacksmith workshop
	Util.simpleShaped(<artisanworktables:mechanical_toolbox>, "plus", [
		<artisanworktables:toolbox>, 
		<thermalfoundation:material:356>, 
		<thermalfoundation:material:352>]) 
		.addTools({<ore:artisansHammer>:50,<ore:artisansDriver>:50}), //mechanicl toolbox

	//contenttweaker
	Util.simpleShaped(<contenttweaker:armor_core_1>, "plus", [
		<dimdoors:stable_fabric>, 
		<thermalfoundation:material:128>, 
		<minecraft:gold_ingot>]) 
		.addTools({<ore:artisansHammer>:33}), //t1 armor core
	Util.simpleShaped(<contenttweaker:armor_core_2>, "plus", [
		<contenttweaker:armor_core_1>, 
		<goodnightsleep:negatite_gem>,
		<goodnightsleep:positite_gem>]) 
		.addTools({<ore:artisansHammer>:66}), //t2 armor core
	Util.simpleShaped(<contenttweaker:armor_core_3>, "plus", [
		<contenttweaker:armor_core_2>, 
		<cavern:cave_item:5>,
		<calculator:enddiamond>]) 
		.addTools({<ore:artisansHammer>:99,<ore:artisansFile>:99}), //t3 armor core
	Util.simpleShaped(<contenttweaker:armor_core_4>, "plus", [
		<contenttweaker:armor_core_3>, 
		<thermalfoundation:material:326>,
		<galacticraftplanets:item_basic_mars:5>]) 
		.addTools({<ore:artisansHammer>:150,<ore:artisansFile>:150}), //t4 armor core
	Util.bigShaped(<contenttweaker:armor_core_5>, "bigplus", [
		<contenttweaker:armor_core_4>, 
		<aoa3:shyregem>,
		<aoa3:baronyte_ingot>,
		<aoa3:lunar_ingot>]) 
		.addTools({<ore:artisansHammer>:250,<ore:artisansFile>:250,<ore:artisansPliers>:250}), //t5 armor core
	Util.bigShaped(<contenttweaker:armor_core_6>, "bigplus", [
		<contenttweaker:armor_core_5>, 
		<extraplanets:tier5_items:4>,
		<extraplanets:tier6_items:4>,
		<extraplanets:tier7_items:6>]) 
		.addTools({<ore:artisansHammer>:500,<ore:artisansFile>:500,<ore:artisansPliers>:500}), //t6 armor core


	//extraplanets
	Util.armor(<extraplanets:tier1_un_prepared_space_suit_helmet>, "helmet", <thermalfoundation:material:321>, 3)
		.addFluids([<liquid:latex>*4000]), //tier 1 unprepared space suit helmet
	Util.armor(<extraplanets:tier1_un_prepared_space_suit_chest>, "chestplate", <thermalfoundation:material:321>, 3)
		.addFluids([<liquid:latex>*8000]), //tier 1 unprepared space suit chestplate
	Util.armor(<extraplanets:tier1_un_prepared_space_suit_legings>, "leggings", <thermalfoundation:material:321>, 3)
		.addFluids([<liquid:latex>*6000]), //tier 1 unprepared space suit leggings
	Util.armor(<extraplanets:tier1_un_prepared_space_suit_boots>, "boots", <thermalfoundation:material:321>, 3)
		.addFluids([<liquid:latex>*2000]) //tier 1 unprepared space suit boots
] as Holder[];

static shapelessHolders as Holder[] = [
	//extendedcrafting
	Util.shapeless(<extendedcrafting:material:2>,[<extendedcrafting:material>,<extendedcrafting:material>])
		.addTools({<ore:artisansHammer>:20}) //black iron plate
] as Holder[];


function run() {
	Artisans.build("blacksmith", shapedHolders, shapelessHolders);
	Artisans.buildNested("blacksmith", armorSets);
}