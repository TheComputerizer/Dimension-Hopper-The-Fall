#reloadable

import mods.extendedcrafting.TableCrafting;

//misty portal top
TableCrafting.addShaped(1, <mist:portal_base:1>, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], 
	[<minecraft:stone>, <dimdoors:stable_fabric>, <minecraft:stone>], 
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

//misty portal bottom
TableCrafting.addShaped(1, <mist:portal_base>, [
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
	[<minecraft:stone>, <dimdoors:stable_fabric>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);

//daedalus block
TableCrafting.addShaped(1, <labyrinth:daedalus>, [
	[<overloaded:compressed_stone:1>, <mist:sponge:13>, <overloaded:compressed_stone:1>],
	[<mist:sponge:13>, <dimdoors:stable_fabric>, <mist:sponge:13>],
	[<overloaded:compressed_stone:1>, <mist:sponge:13>, <overloaded:compressed_stone:1>]
]);

//simple stirling generator
TableCrafting.addShaped(1, <enderio:block_simple_stirling_generator>, [
	[<minecraft:stonebrick>, <minecraft:fire_charge>, <minecraft:stonebrick>],
	[<minecraft:stonebrick>, <enderio:item_material>, <minecraft:stonebrick>],
	[<enderio:item_material:11>, <minecraft:piston>, <enderio:item_material:11>]
]);

//mega storage crate
TableCrafting.addShaped(1, <gaiadimension:mega_storage_crate>, [
	[<gaiadimension:thick_glitter_block>, <ore:planksAgate>, <gaiadimension:thick_glitter_block>],
	[<ore:planksAgate>, <immersiveengineering:wooden_device0:5>, <ore:planksAgate>],
	[<gaiadimension:thick_glitter_block>, <ore:planksAgate>, <gaiadimension:thick_glitter_block>]
]);

//t2 table
TableCrafting.addShaped(1, <extendedcrafting:table_advanced>, [
	[<actuallyadditions:block_crystal:3>, <extendedcrafting:material:9>, <actuallyadditions:block_crystal:3>], 
	[<ore:blockPositite>, <extendedcrafting:table_basic>, <ore:blockNegatite>], 
	[<actuallyadditions:block_crystal:3>, <extendedcrafting:material:9>, <actuallyadditions:block_crystal:3>]
]);

//peat engine
TableCrafting.addShaped(1, <forestry:engine_peat>, [
	[<ore:plateCopper>, <ore:gemLapis>, <ore:plateCopper>], 
	[<ore:plankTreatedWood>, <ore:blockGlassColorless>, <ore:plankTreatedWood>], 
	[<ore:gearCopper>, <ore:plankTreatedWood>, <ore:gearCopper>]
]);

//steam dynamo
TableCrafting.addShaped(1, <thermalexpansion:dynamo>, [
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>], 
	[<ore:plateIron>, <ore:gearCopper>, <ore:plateIron>], 
	[<ore:plateCopper>, <ore:ingotRedstoneAlloy>, <ore:plateCopper>]
]);

//biogas engine
TableCrafting.addShaped(1, <forestry:engine_biogas>, [
	[<ore:plateBronze>, <ore:gemLapis>, <ore:plateBronze>], 
	[<ore:plateBronze>, <ore:blockGlassColorless>, <ore:plateBronze>], 
	[<ore:gearBronze>, <ore:craftingPiston>, <ore:gearBronze>]
]);

//heat collector
TableCrafting.addShaped(1, <actuallyadditions:block_heat_collector>, [
	[<ore:barsIron>, <randomthings:advancedredstonerepeater>, <ore:barsIron>], 
	[<actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal:5>, <actuallyadditions:item_misc:8>], 
	[<ore:barsIron>, <actuallyadditions:block_misc:9>, <ore:barsIron>]
]);

//leaf-eating generator
TableCrafting.addShaped(1, <actuallyadditions:block_leaf_generator>, [
	[<actuallyadditions:block_crystal:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_crystal:5>], 
	[<ore:gemPositite>, <ore:treeLeaves>, <ore:gemNegatite>], 
	[<actuallyadditions:block_crystal:5>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal:5>]
]);

//factorizer
TableCrafting.addShaped(1, <thermalexpansion:device:10>, [
	[<ore:gearGold>, <ore:gearTin>, <ore:gearCopper>], 
	[<ore:gearIron>, <thermalexpansion:frame:64>, <ore:gearInvar>], 
	[<ore:gearEmerald>, <ore:gearSteel>, <ore:gearDiamond>]
]);

//aqueous accumulator
TableCrafting.addShaped(1, <thermalexpansion:device>, [
	[<ore:blockConstructionAlloy>, <cookingforblockheads:sink>, <ore:blockConstructionAlloy>], 
	[<minecraft:bucket>, <thermalexpansion:frame:64>, <minecraft:bucket>], 
	[<ore:blockConstructionAlloy>, <enderio:block_tank:1>, <ore:blockConstructionAlloy>]
]);

//arboreal extractor
TableCrafting.addShaped(1, <thermalexpansion:device:3>, [
	[<ore:blockConstructionAlloy>, <thermaldynamics:servo:2>, <ore:blockConstructionAlloy>], 
	[<thermaldynamics:servo:2>, <thermalexpansion:frame:64>, <thermaldynamics:servo:2>], 
	[<ore:blockConstructionAlloy>, <enderio:block_tank:1>, <ore:blockConstructionAlloy>]
]);

//vaccumulator
TableCrafting.addShaped(1, <thermalexpansion:device:12>, [
	[<ore:blockConstructionAlloy>, <thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}), <ore:blockConstructionAlloy>], 
	[<ore:electronTube>, <thermalexpansion:frame:64>, <ore:electronTube>], 
	[<ore:blockConstructionAlloy>, <actuallyadditions:block_giant_chest_large>, <ore:blockConstructionAlloy>]
]);

//insightful condenser
TableCrafting.addShaped(1, <thermalexpansion:device:8>, [
	[<ore:blockConstructionAlloy>, <enderio:item_liquid_conduit:2>, <ore:blockConstructionAlloy>], 
	[<ore:electronTube>, <thermalexpansion:frame:64>, <ore:electronTube>], 
	[<ore:blockConstructionAlloy>, <enderio:block_tank:1>, <ore:blockConstructionAlloy>]
]);

//creature encaptulator
TableCrafting.addShaped(1, <thermalexpansion:device:11>, [
	[<ore:blockConstructionAlloy>, <thermalexpansion:device:8>, <ore:blockConstructionAlloy>], 
	[<chisel:ironpane:3>, <thermalexpansion:frame:64>, <chisel:ironpane:3>], 
	[<ore:blockConstructionAlloy>, <thermalexpansion:device:12>, <ore:blockConstructionAlloy>]
]);

//item allocator
TableCrafting.addShaped(1, <thermalexpansion:device:5>, [
	[<ore:blockConstructionAlloy>, <enderio:item_item_conduit>, <ore:blockConstructionAlloy>], 
	[<actuallyadditions:block_laser_relay_item_whitelist>, <thermalexpansion:frame:64>, <actuallyadditions:block_laser_relay_item_whitelist>], 
	[<ore:blockConstructionAlloy>, <actuallyadditions:block_giant_chest_large>, <ore:blockConstructionAlloy>]
]);

//fluid allocator
TableCrafting.addShaped(1, <thermalexpansion:device:6>, [
	[<ore:blockConstructionAlloy>, <enderio:item_liquid_conduit:1>, <ore:blockConstructionAlloy>], 
	[<actuallyadditions:block_laser_relay_fluids>, <thermalexpansion:frame:64>, <actuallyadditions:block_laser_relay_fluids>], 
	[<ore:blockConstructionAlloy>, <enderio:block_tank:1>, <ore:blockConstructionAlloy>]
]);

//decoctive diffuser
TableCrafting.addShaped(1, <thermalexpansion:device:9>, [
	[<ore:blockConstructionAlloy>, <minecraft:lingering_potion>, <ore:blockConstructionAlloy>], 
	[<minecraft:lingering_potion>, <thermalexpansion:frame:64>, <minecraft:lingering_potion>], 
	[<ore:blockConstructionAlloy>, <minecraft:dispenser>, <ore:blockConstructionAlloy>]
]);

//thermal mediator
TableCrafting.addShaped(1, <thermalexpansion:device:2>, [
	[<ore:blockConstructionAlloy>, <thermalexpansion:augment:128>, <ore:blockConstructionAlloy>], 
	[<teslacorelib:speed_tier2>, <thermalexpansion:frame:64>, <teslacorelib:speed_tier2>], 
	[<ore:blockConstructionAlloy>, <thermalexpansion:augment:128>, <ore:blockConstructionAlloy>]
]);

//simple wired charger
TableCrafting.addShaped(1, <enderio:block_simple_wired_charger>, [
	[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>], 
	[<ore:plateElectricalSteel>, <ore:itemSimpleMachineChassi>, <ore:plateElectricalSteel>], 
	[<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>]
]);

//spatial pylon
TableCrafting.addShaped(1, <appliedenergistics2:spatial_pylon>, [
	[<botania:pylon:2>, <appliedenergistics2:crafting_unit>, <botania:pylon:2>], 
	[<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:32>, <appliedenergistics2:crafting_unit>], 
	[<botania:pylon:2>, <appliedenergistics2:crafting_unit>, <botania:pylon:2>]
]);

//lapis block
TableCrafting.addShaped(1, <minecraft:lapis_block>, [
	[<tp:lapis_ingot>, <tp:lapis_ingot>, <tp:lapis_ingot>], 
	[<tp:lapis_ingot>, <tp:lapis_ingot>, <tp:lapis_ingot>], 
	[<tp:lapis_ingot>, <tp:lapis_ingot>, <tp:lapis_ingot>]
]);

//mana diamond block
TableCrafting.addShaped(1, <botania:storage:3>, [
	[<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>], 
	[<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>], 
	[<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>]
]);

//gaia restructurer
TableCrafting.addShaped(1, <gaiadimension:restructurer_idle>, [
	[<gaiadimension:reinforced_bricks>, <gaiadimension:reinforced_bricks>, <gaiadimension:reinforced_bricks>], 
	[<gaiadimension:reinforced_bricks>, <enderio:block_simple_furnace>, <gaiadimension:reinforced_bricks>], 
	[<gaiadimension:reinforced_bricks>, <gaiadimension:reinforced_bricks>, <gaiadimension:reinforced_bricks>]
]);

//mekanism electric pump
TableCrafting.addShaped(1, <mekanism:machineblock:12>, [
	[<mekanism:energytablet>, <enderio:item_liquid_conduit:2>, <mekanism:energytablet>], 
	[<enderio:item_liquid_conduit:2>, <mekanism:machineblock2:11>.withTag({tier: 1}), <enderio:item_liquid_conduit:2>], 
	[<mekanism:energytablet>, <enderio:item_liquid_conduit:2>, <mekanism:energytablet>]
]);

//mekanism superheating element
TableCrafting.addShaped(1, <mekanism:basicblock2:5>, [
	[<ore:xuRedstoneCoil>, <immersiveengineering:metal_device1:1>, <ore:xuRedstoneCoil>], 
	[<immersiveengineering:metal_device1:1>, <mekanism:basicblock:8>, <immersiveengineering:metal_device1:1>], 
	[<ore:xuRedstoneCoil>, <immersiveengineering:metal_device1:1>, <ore:xuRedstoneCoil>]
]);

//laser amplifier
TableCrafting.addShaped(1, <mekanism:machineblock2:14>, [
	[<ore:plateDarkSteel>, <rftools:infused_enderpearl>, <ore:plateDarkSteel>], 
	[<rftools:infused_diamond>, <draconicevolution:reactor_core>, <rftools:infused_diamond>], 
	[<ore:plateDarkSteel>, <rftools:infused_enderpearl>, <ore:plateDarkSteel>]
]);

//laser tractor beam
TableCrafting.addShapeless(1, <mekanism:machineblock2:15>, [<mekanism:machineblock2:14>,<appliedenergistics2:controller>]);

//crystal matrix ingot
TableCrafting.addShaped(1, <avaritia:resource:1>, [
	[<avaritia:resource>, <extrautils2:opinium:8>, <avaritia:resource>], 
	[<avaritia:resource>, <extrautils2:opinium:8>, <avaritia:resource>]
]);

//diamond lattice
TableCrafting.addShaped(1, <avaritia:resource>, [
	[<calculator:enddiamond>, <theaurorian:stickyspiker>, <calculator:enddiamond>], 
	[<theaurorian:stickyspiker>, <calculator:enddiamond>, <theaurorian:stickyspiker>], 
	[<calculator:enddiamond>, <theaurorian:stickyspiker>, <calculator:enddiamond>]
]);