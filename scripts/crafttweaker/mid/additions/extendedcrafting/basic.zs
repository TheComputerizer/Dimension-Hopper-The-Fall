#reloadable

import mods.extendedcrafting.TableCrafting;
import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.tables as Util;

static shapedHolders as Holder[] = [
	//actuallyadditions
	Util.simpleShaped(<actuallyadditions:block_heat_collector>, "spatial", [<actuallyadditions:block_crystal:5>, <randomthings:advancedredstonerepeater>, 
		<actuallyadditions:item_misc:8>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <ore:barsIron>]), //heat collector

	Util.simpleShaped(<actuallyadditions:block_heat_collector>, "spatial", [<ore:treeLeaves>, <actuallyadditions:block_misc:9>, <ore:gemPositite>,
		<ore:gemNegatite>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal:5>]), //leaf-eating generator

	//appliedenergistics2
	Util.simpleShaped(<appliedenergistics2:spatial_pylon>, "plus", [<appliedenergistics2:material:32>, <appliedenergistics2:crafting_unit>, 
		<botania:pylon:2>]), //spatial pylon

	//avaritia
	Util.simpleShaped(<avaritia:resource:1>, "fence", [<extrautils2:opinium:8>, <avaritia:resource>]), //crystal matrix ingot

	Util.simpleShaped(<avaritia:resource>, "plus", [<calculator:enddiamond>, <theaurorian:stickyspiker>, <calculator:enddiamond>]), //diamond lattice

	//botania
	Util.simpleShaped(<botania:storage:3>, "block", [<botania:manaresource:2>]), //mana diamond block

	//enderio
	Util.simpleShaped(<enderio:block_simple_stirling_generator>, "table", [<enderio:item_material>, <minecraft:fire_charge>, <enderio:item_material:11>, 
		<minecraft:stonebrick>,<minecraft:stonebrick>, <minecraft:piston>]), //simple stirling generator

	Util.simpleShaped(<enderio:block_simple_wired_charger>, "ring", [<ore:itemSimpleMachineChassi>, <ore:plateElectricalSteel>]), //simple wired charger

	//extendedcrafting
	Util.simpleShaped(<extendedcrafting:table_advanced>, "spatial", [<extendedcrafting:table_basic>, <extendedcrafting:material:9>, <ore:blockPositite>, 
		<ore:blockNegatite>, <extendedcrafting:material:9>, <actuallyadditions:block_crystal:3>]), //advanced table

	//forestry
	Util.simpleShaped(<forestry:engine_peat>, "me", [<ore:blockGlassColorless>, <ore:gemLapis>, <ore:plankTreatedWood>, <ore:gearCopper>]), //peat engine

	Util.simpleShaped(<forestry:engine_biogas>, "table", [<ore:blockGlassColorless>, <ore:gemLapis>, <ore:gearBronze>, <ore:plateBronze>, 
		<ore:plateBronze>, <ore:craftingPiston>]), //biogas engine

	//gaiadimension
	Util.simpleShaped(<gaiadimension:mega_storage_crate>, "plus", [<immersiveengineering:wooden_device0:5>, <ore:planksAgate>, 
		<gaiadimension:thick_glitter_block>]), //mega storage crate
		
	Util.simpleShaped(<gaiadimension:restructurer_idle>, "ring", [<enderio:block_simple_furnace>, <gaiadimension:reinforced_bricks>]), //gaia restructurer

	//labyrinth
	Util.simpleShaped(<labyrinth:daedalus>, "plus", [<dimdoors:stable_fabric>, <mist:sponge:13>, <overloaded:compressed_stone:1>]), //daedalus block

	//mekanism
	Util.simpleShaped(<mekanism:machineblock:12>, "plus", [<mekanism:machineblock2:11>.withTag({tier: 1}), <enderio:item_liquid_conduit:2>,
		<mekanism:energytablet>]), //electric pump

	Util.simpleShaped(<mekanism:basicblock2:5>, "plus", [<mekanism:basicblock:8>, <immersiveengineering:metal_device1:1>, 
		<ore:xuRedstoneCoil>]), //superheating element

	Util.simpleShaped(<mekanism:basicblock2:14>, "plus", [<draconicevolution:reactor_core>, <rftools:infused_diamond>, <ore:plateDarkSteel>]), //laser amplifier

	//minecraft
	Util.simpleShaped(<minecraft:lapis_block>, "block", [<tp:lapis_ingot>]), //lapis block

	//mist
	Util.simpleShaped(<mist:portal_base>, "portaltop", [<dimdoors:stable_fabric>, <minecraft:gold_ingot>, <minecraft:stone>]), //misty portal top
	Util.simpleShaped(<mist:portal_base:1>, "portalbottom", [<dimdoors:stable_fabric>, <minecraft:gold_ingot>, <minecraft:stone>]), //misty portal bottom

	//thermalexpansion
	Util.simpleShaped(<thermalexpansion:dynamo>, "table", [<ore:gearCopper>, <thermalfoundation:material:514>, <ore:plateCopper>, <ore:plateIron>,
		<ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>]), //steam dynamo

	Util.simpleShaped(<thermalexpansion:device:10>, "unique", [<ore:gearGold>, <ore:gearTin>, <ore:gearCopper>, <ore:gearIron>, 
		<thermalexpansion:frame:64>, <ore:gearInvar>, <ore:gearEmerald>, <ore:gearSteel>, <ore:gearDiamond>]), //factorizer

	Util.device(0, <cookingforblockheads:sink>, <minecraft:bucket>, <enderio:block_tank:1>), //aqueous accumulator
	Util.device(3, <thermaldynamics:servo:2>, <thermaldynamics:servo:2>, <enderio:block_tank:1>), //arboreal extractor
	Util.device(12, <thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}), <ore:electronTube>, <actuallyadditions:block_giant_chest_large>), //vaccumulator
	Util.device(8, <enderio:item_liquid_conduit:2>, <ore:electronTube>, <enderio:block_tank:1>), //insightful condenser
	Util.device(11, <thermalexpansion:device:8>, <chisel:ironpane:3>, <thermalexpansion:device:12>), //creature encaptulator
	Util.device(5, <enderio:item_item_conduit>, <actuallyadditions:block_laser_relay_item_whitelist>, <actuallyadditions:block_giant_chest_large>), //item allocator
	Util.device(6, <enderio:item_liquid_conduit:1>, <actuallyadditions:block_laser_relay_fluids>, <enderio:block_tank:1>), //fluid allocator
	Util.device(9, <minecraft:lingering_potion>, <minecraft:lingering_potion>, <minecraft:dispenser>), //decoctive diffuser
	Util.device(2, <thermalexpansion:augment:128>, <teslacorelib:speed_tier2>, <thermalexpansion:augment:128>), //thermal mediator
] as Holder[];

static shapelessHolders as Holder[] = [
	//mekansim
	Util.shapeless(<mekanism:machineblock2:15>, [<mekanism:machineblock2:14>,<appliedenergistics2:controller>]) //laser tractor beam
] as Holder[];


function build() {
    for holder in shapedHolders {
		print(holder.getOutput().name);
		TableCrafting.addShaped(1, holder.getOutput(), holder.getShaped());
	}
    for holder in shapelessHolders {
		TableCrafting.addShapeless(1, holder.getOutput(), holder.getShapeless());
	}
}