#reloadable

import mods.extendedcrafting.TableCrafting;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;

static recipeHolders as Holder[] = [
] as Holder[];

TableCrafting.addShaped(2, <minecraft:emerald>, [
	[null, <blue_skies:diopside_gem>, <blue_skies:diopside_gem>, <blue_skies:diopside_gem>, null], 
	[<blue_skies:diopside_gem>, <ore:gemPositite>, <glacidus:glacidite_fragment>, <ore:gemNegatite>, <blue_skies:diopside_gem>], 
	[<blue_skies:diopside_gem>, <gaiadimension:green_opal>, <theaurorian:trophykeeper>, <blue_skies:moonstone>, <blue_skies:diopside_gem>], 
	[<blue_skies:diopside_gem>, <ore:gemNegatite>, <atum:dusty_bone>, <ore:gemPositite>, <blue_skies:diopside_gem>], 
	[null, <blue_skies:diopside_gem>, <blue_skies:diopside_gem>, <blue_skies:diopside_gem>, null]
]);

TableCrafting.addShaped(2, <actuallyadditions:block_giant_chest>, [
	[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>], 
	[<ore:logWood>, <ore:logWood>, <gaiadimension:mega_storage_crate>, <ore:logWood>, <ore:logWood>], 
	[<ore:plankWood>, <gaiadimension:mega_storage_crate>, <actuallyadditions:block_misc:4>, <gaiadimension:mega_storage_crate>, <ore:plankWood>], 
	[<ore:logWood>, <ore:logWood>, <gaiadimension:mega_storage_crate>, <ore:logWood>, <ore:logWood>], 
	[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>]
]);

TableCrafting.addShaped(2, <actuallyadditions:block_giant_chest_medium>, [
	[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>], 
	[<ore:logWood>, <actuallyadditions:block_crystal:3>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_crystal:3>, <ore:logWood>], 
	[<ore:plankWood>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_misc:4>, <ore:plankWood>], 
	[<ore:logWood>, <actuallyadditions:block_crystal:3>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_crystal:3>, <ore:logWood>], 
	[<ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>]
]);

TableCrafting.addShaped(2, <actuallyadditions:block_giant_chest_large>, [
	[<ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>], 
	[<actuallyadditions:block_misc:4>, <actuallyadditions:block_crystal_empowered:3>, <storagedrawers:upgrade_storage:2>, <actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_misc:4>], 
	[<ore:logWood>, <storagedrawers:upgrade_storage:2>, <actuallyadditions:block_giant_chest_medium>, <storagedrawers:upgrade_storage:2>, <ore:logWood>],
	[<actuallyadditions:block_misc:4>, <actuallyadditions:block_crystal_empowered:3>, <storagedrawers:upgrade_storage:2>, <actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_misc:4>], 
	[<ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>, <actuallyadditions:block_misc:4>, <ore:logWood>]
]);

TableCrafting.addShaped(2, <appliedenergistics2:chest>, [
	[<ore:blockIron>, <ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockIron>], 
	[<ore:crystalPureFluix>, <appliedenergistics2:material:39>, <appliedenergistics2:part:360>, <appliedenergistics2:material:39>, <ore:crystalPureFluix>], 
	[<ore:ingotSteel>, <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:part:16>, <actuallyadditions:block_giant_chest_large>, <ore:ingotSteel>], 
	[<ore:crystalPureFluix>, <appliedenergistics2:material:39>, <actuallyadditions:block_giant_chest_large>, <appliedenergistics2:material:39>, <ore:crystalPureFluix>], 
	[<ore:blockIron>, <ore:crystalPureFluix>, <ore:ingotSteel>, <ore:crystalPureFluix>, <ore:blockIron>]
]);
//machine frame
TableCrafting.addShaped(2, <thermalexpansion:frame>, [
	[<moreplates:iron_alloy_plate>, <ore:blockGlassColorless>, <moreplates:iron_alloy_plate>, <ore:blockGlassColorless>, <moreplates:iron_alloy_plate>], 
	[<ore:blockGlassColorless>, <ore:gearIronInfinity>, <ore:gearTin>, <ore:gearIronInfinity>, <ore:blockGlassColorless>], 
	[<moreplates:iron_alloy_plate>, <ore:gearTin>, <ore:itemSimpleMachineChassi>, <ore:gearTin>, <moreplates:iron_alloy_plate>], 
	[<ore:blockGlassColorless>, <ore:gearIronInfinity>, <ore:gearTin>, <ore:gearIronInfinity>, <ore:blockGlassColorless>], 
	[<moreplates:iron_alloy_plate>, <ore:blockGlassColorless>, <moreplates:iron_alloy_plate>, <ore:blockGlassColorless>, <moreplates:iron_alloy_plate>]
]);
//redstone furnace
TableCrafting.addShaped(2, <thermalexpansion:machine>, [
	[<overloaded:compressed_stone:1>, <moreplates:iron_alloy_plate>, <moreplates:iron_alloy_plate>, <moreplates:iron_alloy_plate>, <overloaded:compressed_stone:1>], 
	[<minecraft:brick_block>, <minecraft:brick_block>, <enderio:block_alloy:3>, <minecraft:brick_block>, <minecraft:brick_block>], 
	[<ore:gearCopper>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <ore:gearCopper>], 
	[<minecraft:brick_block>, <ore:gearCopper>, <enderio:block_alloy:3>, <ore:gearCopper>, <minecraft:brick_block>], 
	[<ore:gearCopper>, <minecraft:brick_block>, <thermalfoundation:material:513>, <minecraft:brick_block>, <ore:gearCopper>]
]);

TableCrafting.addShaped(2, <actuallyadditions:block_empowerer>, [
	[<actuallyadditions:block_misc:7>, <extendedcrafting:material:2>, <psi:material:1>, <extendedcrafting:material:2>, <actuallyadditions:block_misc:7>], 
	[<botania:rune:5>, <actuallyadditions:block_crystal>, <immersiveengineering:material:27>, <actuallyadditions:block_crystal>, <botania:rune:6>], 
	[<extendedcrafting:material:2>, <immersiveengineering:material:27>, <thermalexpansion:frame>, <immersiveengineering:material:27>, <extendedcrafting:material:2>], 
	[<botania:rune:4>, <actuallyadditions:item_battery_double>, <immersiveengineering:material:27>, <actuallyadditions:item_battery_double>, <botania:rune:7>], 
	[<actuallyadditions:block_misc:7>, <extendedcrafting:material:2>, <psi:material:1>, <extendedcrafting:material:2>, <actuallyadditions:block_misc:7>]
]);

TableCrafting.addShaped(2, <enderio:block_alloy_smelter>, [
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<ore:dustBedrock>, <enderio:block_simple_alloy_smelter>, <ore:itemMachineChassi>, <enderio:block_simple_alloy_smelter>, <ore:dustBedrock>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>]
]);

TableCrafting.addShaped(2, <enderio:block_sag_mill>, [
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<ore:dustBedrock>, <enderio:block_simple_sag_mill>, <ore:itemMachineChassi>, <enderio:block_simple_sag_mill>, <ore:dustBedrock>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>]
]);

TableCrafting.addShaped(2, <enderio:block_vat>, [
	[<extendedcrafting:material:9>, <moreplates:electrical_steel_plate>, <ore:dustBedrock>, <moreplates:electrical_steel_plate>, <extendedcrafting:material:9>], 
	[<moreplates:electrical_steel_plate>, <ore:gearDark>, <minecraft:cauldron>, <ore:gearDark>, <moreplates:electrical_steel_plate>], 
	[<ore:dustBedrock>, <ore:pressurizedTank>, <ore:itemMachineChassi>, <ore:pressurizedTank>, <ore:dustBedrock>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <minecraft:cauldron>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>]
]);
//sawmill
TableCrafting.addShaped(2, <thermalexpansion:machine:2>, [
	[<thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>], 
	[<overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>], 
	[<ore:logWood>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <ore:logWood>], 
	[<ore:logWood>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:logWood>], 
	[<ore:logWood>, <ore:plankWood>, <ore:gearCopper>, <ore:plankWood>, <ore:logWood>]
]);
//pulverizer
TableCrafting.addShaped(2, <thermalexpansion:machine:1>, [
	[<overloaded:compressed_stone:2>, <ore:craftingPiston>, <ore:craftingPiston>, <ore:craftingPiston>, <overloaded:compressed_stone:2>], 
	[<thermalfoundation:material:657>, <ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>, <thermalfoundation:material:657>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:logWood>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:logWood>], 
	[<ore:logWood>, <ore:plankWood>, <ore:gearCopper>, <ore:plankWood>, <ore:logWood>]
]);
//compactor
TableCrafting.addShaped(2, <thermalexpansion:machine:5>, [
	[<overloaded:compressed_stone:2>, <ore:craftingPiston>, <ore:craftingPiston>, <ore:craftingPiston>, <overloaded:compressed_stone:2>], 
	[<ore:plateBronze>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:plateBronze>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:plateBronze>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:plateBronze>], 
	[<overloaded:compressed_stone:2>, <ore:plateBronze>, <ore:gearCopper>, <ore:plateBronze>, <overloaded:compressed_stone:2>]
]);
//glacial precipitator
TableCrafting.addShaped(2, <thermalexpansion:machine:14>, [
	[<overloaded:compressed_stone:2>, <ore:craftingPiston>, <ore:craftingPiston>, <ore:craftingPiston>, <overloaded:compressed_stone:2>], 
	[<ore:plateInvar>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:plateInvar>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:plateInvar>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:plateInvar>], 
	[<overloaded:compressed_stone:2>, <ore:plateInvar>, <ore:gearCopper>, <ore:plateInvar>, <overloaded:compressed_stone:2>]
]);
//magma crucible
TableCrafting.addShaped(2, <thermalexpansion:machine:6>, [
	[<overloaded:compressed_stone:2>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <overloaded:compressed_stone:2>], 
	[<ore:blockBrickNether>, <actuallyadditions:block_lava_factory_controller>, <actuallyadditions:block_lava_factory_controller>, <actuallyadditions:block_lava_factory_controller>, <ore:blockBrickNether>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:blockBrickNether>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:blockBrickNether>], 
	[<overloaded:compressed_stone:2>, <ore:blockBrickNether>, <ore:gearCopper>, <ore:blockBrickNether>, <overloaded:compressed_stone:2>]
]);
//induction smelter
TableCrafting.addShaped(2, <thermalexpansion:machine:3>, [
	[<overloaded:compressed_stone:2>, <ore:blockBrickNether>, <ore:blockBrickNether>, <ore:blockBrickNether>, <overloaded:compressed_stone:2>], 
	[<ore:gearInvar>, <ore:sand>, <ore:gearInvar>, <ore:sand>, <ore:gearInvar>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:blockBrickNether>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:blockBrickNether>], 
	[<overloaded:compressed_stone:2>, <ore:blockBrickNether>, <ore:gearCopper>, <ore:blockBrickNether>, <overloaded:compressed_stone:2>]
]);
//fluid transposer
TableCrafting.addShaped(2, <thermalexpansion:machine:8>, [
	[<overloaded:compressed_stone:2>, <ore:blockGlassColorless>, <minecraft:bucket>, <ore:blockGlassColorless>, <overloaded:compressed_stone:2>], 
	[<ore:blockGlassHardened>, <ore:pressurizedTank>, <ore:pressurizedTank>, <ore:pressurizedTank>, <ore:blockGlassHardened>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:blockGlassHardened>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:blockGlassHardened>], 
	[<overloaded:compressed_stone:2>, <ore:blockGlassHardened>, <ore:gearCopper>, <ore:blockGlassHardened>, <overloaded:compressed_stone:2>]
]);
//igneous extruder
TableCrafting.addShaped(2, <thermalexpansion:machine:15>, [
	[<overloaded:compressed_stone:2>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <overloaded:compressed_stone:2>], 
	[<ore:plateInvar>, <ore:pressurizedTank>, <ore:gearInvar>, <ore:pressurizedTank>, <ore:plateInvar>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:plateInvar>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:plateInvar>], 
	[<overloaded:compressed_stone:2>, <ore:plateInvar>, <ore:gearCopper>, <ore:plateInvar>, <overloaded:compressed_stone:2>]
]);
//auto artisan
TableCrafting.addShaped(2, <artisanautomation:automator>, [
	[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <artisanworktables:mechanical_toolbox>, <ore:circuitBasic>, <artisanworktables:mechanical_toolbox>, <ore:blockGlassHardened>], 
	[<ore:gearCopper>, <ore:gearInvar>, <artisanworktables:workshop:5>, <ore:gearDark>, <ore:gearCopper>], 
	[<ore:gearCopper>, <ore:gearDark>, <ore:circuitBasic>, <ore:gearInvar>, <ore:gearCopper>], 
	[<overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>, <extrautils2:user>, <overloaded:compressed_stone:2>, <overloaded:compressed_stone:2>]
]);
//artisan power
TableCrafting.addShaped(2, <artisanautomation:automator_power_rf>, [
	[<immersiveengineering:wirecoil:2>, <ore:plateBronze>, <ore:plankTreatedWood>, <ore:plateBronze>, <immersiveengineering:wirecoil:2>], 
	[<ore:blockGlassHardened>, <fluxnetworks:fluxblock>, <ore:circuitBasic>, <fluxnetworks:fluxblock>, <ore:blockGlassHardened>], 
	[<calculator:powercube>, <ore:circuitBasic>, <artisanworktables:mechanical_toolbox>, <ore:circuitBasic>, <calculator:powercube>], 
	[<ore:blockGlassHardened>, <fluxnetworks:fluxblock>, <ore:circuitBasic>, <fluxnetworks:fluxblock>, <ore:blockGlassHardened>], 
	[<immersiveengineering:wirecoil:2>, <ore:plateBronze>, <ore:plankTreatedWood>, <ore:plateBronze>, <immersiveengineering:wirecoil:2>]
]);

//solar T2
TableCrafting.addShaped(2, <solarflux:solar_panel_2>, [
	[<thermalfoundation:material:352>, <aether:arkenium>, <thermalfoundation:material:352>, <aether:arkenium>, <thermalfoundation:material:352>], 
	[<aether:arkenium>, <ore:ingotRedstoneAlloy>, <solarflux:solar_panel_1>, <ore:ingotRedstoneAlloy>, <aether:arkenium>], 
	[<thermalfoundation:material:352>, <solarflux:solar_panel_1>, <ore:craftingPiston>, <solarflux:solar_panel_1>, <thermalfoundation:material:352>], 
	[<aether:arkenium>, <ore:ingotRedstoneAlloy>, <solarflux:solar_panel_1>, <ore:ingotRedstoneAlloy>, <aether:arkenium>], 
	[<thermalfoundation:material:352>, <aether:arkenium>, <thermalfoundation:material:352>, <aether:arkenium>, <thermalfoundation:material:352>]
]);
//solar T3
TableCrafting.addShaped(2, <solarflux:solar_panel_3>, [
	[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>], 
	[<thermalfoundation:material:352>, <ore:blockRedstoneAlloy>, <solarflux:solar_panel_2>, <ore:blockRedstoneAlloy>, <thermalfoundation:material:352>], 
	[<ore:blockIron>, <solarflux:solar_panel_2>, <ore:circuitBasic>, <solarflux:solar_panel_2>, <ore:blockIron>], 
	[<thermalfoundation:material:352>, <ore:blockRedstoneAlloy>, <solarflux:solar_panel_2>, <ore:blockRedstoneAlloy>, <thermalfoundation:material:352>], 
	[<ore:blockIron>, <thermalfoundation:material:352>, <ore:blockIron>, <thermalfoundation:material:352>, <ore:blockIron>]
]);
//solar T4
TableCrafting.addShaped(2, <solarflux:solar_panel_4>, [
	[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>], 
	[<moreplates:dark_steel_plate>, <ore:circuitBasic>, <solarflux:solar_panel_3>, <ore:circuitBasic>, <moreplates:dark_steel_plate>], 
	[<ore:blockRedstoneAlloy>, <solarflux:solar_panel_3>, <ore:blockGold>, <solarflux:solar_panel_3>, <ore:blockRedstoneAlloy>], 
	[<moreplates:dark_steel_plate>, <ore:circuitBasic>, <solarflux:solar_panel_3>, <ore:circuitBasic>, <moreplates:dark_steel_plate>], 
	[<ore:blockRedstoneAlloy>, <moreplates:dark_steel_plate>, <ore:blockRedstoneAlloy>, <moreplates:dark_steel_plate>, <ore:blockRedstoneAlloy>]
]);
//solar T5
TableCrafting.addShaped(2, <solarflux:solar_panel_5>, [
	[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>], 
	[<ore:plateEndSteel>, <ore:circuitAdvanced>, <solarflux:solar_panel_4>, <ore:circuitAdvanced>, <ore:plateEndSteel>], 
	[<contenttweaker:large_circuit>, <solarflux:solar_panel_4>, <bigreactors:blockcyanite>, <solarflux:solar_panel_4>, <contenttweaker:large_circuit>], 
	[<ore:plateEndSteel>, <ore:circuitAdvanced>, <solarflux:solar_panel_4>, <ore:circuitAdvanced>, <ore:plateEndSteel>], 
	[<contenttweaker:large_circuit>, <ore:plateEndSteel>, <contenttweaker:large_circuit>, <ore:plateEndSteel>, <contenttweaker:large_circuit>]
]);
//stirling generator
TableCrafting.addShaped(2, <enderio:block_stirling_generator>, [
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<ore:dustBedrock>, <enderio:block_simple_stirling_generator>, <ore:itemMachineChassi>, <enderio:block_simple_stirling_generator>, <ore:dustBedrock>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>]
]);
//combustion generator
TableCrafting.addShaped(2, <enderio:block_combustion_generator>, [
	[<extendedcrafting:material:9>, <moreplates:electrical_steel_plate>, <ore:dustBedrock>, <moreplates:electrical_steel_plate>, <extendedcrafting:material:9>], 
	[<moreplates:electrical_steel_plate>, <ore:gearDark>, <ore:craftingPiston>, <ore:gearDark>, <moreplates:electrical_steel_plate>], 
	[<ore:dustBedrock>, <ore:pressurizedTank>, <ore:itemMachineChassi>, <ore:pressurizedTank>, <ore:dustBedrock>], 
	[<moreplates:dark_steel_plate>, <ore:gearDark>, <ore:craftingPiston>, <ore:gearDark>, <moreplates:dark_steel_plate>], 
	[<extendedcrafting:material:9>, <moreplates:dark_steel_plate>, <ore:dustBedrock>, <moreplates:dark_steel_plate>, <extendedcrafting:material:9>]
]);
//magmatic dynamo
TableCrafting.addShaped(2, <thermalexpansion:dynamo:1>, [
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateInvar>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>], 
	[<thermalfoundation:material:514>, <ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>, <thermalfoundation:material:514>], 
	[<ore:plateInvar>, <ore:circuitBasic>, <ore:gearInvar>, <ore:circuitBasic>, <ore:plateInvar>], 
	[<thermalfoundation:material:514>, <ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>, <thermalfoundation:material:514>], 
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateInvar>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>]
]);
//compression dynamo
TableCrafting.addShaped(2, <thermalexpansion:dynamo:2>, [
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateTin>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>], 
	[<thermalfoundation:material:514>, <ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>, <thermalfoundation:material:514>], 
	[<ore:plateTin>, <ore:circuitBasic>, <ore:gearTin>, <ore:circuitBasic>, <ore:plateTin>], 
	[<thermalfoundation:material:514>, <ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>, <thermalfoundation:material:514>], 
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateTin>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>]
]);
//reactant dynamo
TableCrafting.addShaped(2, <thermalexpansion:dynamo:3>, [
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateLead>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>], 
	[<thermalfoundation:material:514>, <ore:plateLead>, <ore:circuitBasic>, <ore:plateLead>, <thermalfoundation:material:514>], 
	[<ore:plateLead>, <ore:circuitBasic>, <ore:gearLead>, <ore:circuitBasic>, <ore:plateLead>], 
	[<thermalfoundation:material:514>, <ore:plateLead>, <ore:circuitBasic>, <ore:plateLead>, <thermalfoundation:material:514>], 
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateLead>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>]
]);
//numismatic dynamo
TableCrafting.addShaped(2, <thermalexpansion:dynamo:5>, [
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateConstantan>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>], 
	[<thermalfoundation:material:514>, <ore:plateConstantan>, <ore:circuitBasic>, <ore:plateConstantan>, <thermalfoundation:material:514>], 
	[<ore:plateConstantan>, <ore:circuitBasic>, <ore:gearConstantan>, <ore:circuitBasic>, <ore:plateConstantan>], 
	[<thermalfoundation:material:514>, <ore:plateConstantan>, <ore:circuitBasic>, <ore:plateConstantan>, <thermalfoundation:material:514>], 
	[<ore:ingotRedstoneAlloy>, <thermalfoundation:material:514>, <ore:plateConstantan>, <thermalfoundation:material:514>, <ore:ingotRedstoneAlloy>]
]);
//oil generator
TableCrafting.addShaped(2, <actuallyadditions:block_oil_generator>, [
	[<overloaded:compressed_stone:2>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:24>, <actuallyadditions:block_misc:9>, <overloaded:compressed_stone:2>], 
	[<actuallyadditions:block_misc:9>, <overloaded:compressed_cobblestone:2>, <ore:circuitBasic>, <overloaded:compressed_cobblestone:2>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:item_misc:24>, <overloaded:compressed_stone:2>, <actuallyadditions:item_misc:24>, <overloaded:compressed_stone:2>, <actuallyadditions:item_misc:24>], 
	[<actuallyadditions:block_misc:9>, <overloaded:compressed_cobblestone:2>, <ore:circuitBasic>, <overloaded:compressed_cobblestone:2>, <actuallyadditions:block_misc:9>], 
	[<overloaded:compressed_stone:2>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:24>, <actuallyadditions:block_misc:9>, <overloaded:compressed_stone:2>]
]);
//teslacore machine case
TableCrafting.addShaped(2, <teslacorelib:machine_case>, [
	[<ore:compressed1xDustBedrock>, <ore:blockIron>, <ore:plankWood>, <ore:blockIron>, <ore:compressed1xDustBedrock>], 
	[<ore:blockIron>, <ore:itemSimpleMachineChassi>, <ore:blockRedstoneAlloy>, <ore:itemSimpleMachineChassi>, <ore:blockIron>], 
	[<ore:plankWood>, <ore:blockRedstoneAlloy>, <ore:itemMachineChassi>, <ore:blockRedstoneAlloy>, <ore:plankWood>], 
	[<ore:blockIron>, <ore:itemSimpleMachineChassi>, <ore:blockRedstoneAlloy>, <ore:itemSimpleMachineChassi>, <ore:blockIron>], 
	[<ore:compressed1xDustBedrock>, <ore:blockIron>, <ore:plankWood>, <ore:blockIron>, <ore:compressed1xDustBedrock>]
]);
//machine frame
TableCrafting.addShaped(2, <rftools:machine_frame>, [
	[<ore:blockSteel>, <ore:plateDarkSteel>, <ore:plateElvenElementium>, <ore:plateDarkSteel>, <ore:blockSteel>], 
	[<ore:plateDarkSteel>, <psi:psi_decorative:7>, <contenttweaker:large_circuit>, <ore:blockPsiGem>, <ore:plateDarkSteel>], 
	[<ore:plateElvenElementium>, <contenttweaker:large_circuit>, <teslacorelib:machine_case>, <contenttweaker:large_circuit>, <ore:plateElvenElementium>], 
	[<ore:plateDarkSteel>, <ore:blockPsiGem>, <contenttweaker:large_circuit>, <psi:psi_decorative:8>, <ore:plateDarkSteel>], 
	[<ore:blockSteel>, <ore:plateDarkSteel>, <ore:plateElvenElementium>, <ore:plateDarkSteel>, <ore:blockSteel>]
]);
//t1 Crafter
TableCrafting.addShaped(2, <rftools:crafter1>, [
	[<ore:blockEndSteel>, <ore:gearTerrasteel>, <ore:ingotUnstable>, <ore:gearTerrasteel>, <ore:blockEndSteel>], 
	[<ore:gearRedstoneAlloy>, <avaritia:double_compressed_crafting_table>, <botania:opencrate:1>, <avaritia:double_compressed_crafting_table>, <ore:gearRedstoneAlloy>], 
	[<ore:ingotUnstable>, <botania:opencrate:1>, <rftools:machine_frame>, <botania:opencrate:1>, <ore:ingotUnstable>], 
	[<ore:gearRedstoneAlloy>, <avaritia:double_compressed_crafting_table>, <botania:opencrate:1>, <avaritia:double_compressed_crafting_table>, <ore:gearRedstoneAlloy>], 
	[<ore:blockEndSteel>, <ore:gearTerrasteel>, <ore:ingotUnstable>, <ore:gearTerrasteel>, <ore:blockEndSteel>]
]);
//thermionic fabricator
TableCrafting.addShaped(2, <forestry:fabricator>, [
	[<ore:blockGold>, <ore:gearTerrasteel>, <ore:blockGlassHardened>, <ore:gearTerrasteel>, <ore:blockGold>], 
	[<minecraft:lava_bucket>, <ore:circuitBasic>, <thermalfoundation:storage_alloy:3>, <ore:circuitBasic>, <ore:blockPackedIce>], 
	[<ore:blockGlassHardened>, <thermalfoundation:storage_alloy:3>, <rftools:machine_frame>, <thermalfoundation:storage_alloy:3>, <ore:blockGlassHardened>], 
	[<minecraft:lava_bucket>, <ore:circuitBasic>, <thermalfoundation:storage_alloy:3>, <ore:circuitBasic>, <ore:blockPackedIce>], 
	[<ore:blockGold>, <ore:gearTerrasteel>, <ore:blockGlassHardened>, <ore:gearTerrasteel>, <ore:blockGold>]
]);
//me drive
TableCrafting.addShaped(2, <appliedenergistics2:drive>, [
	[<ore:blockCrystallineAlloy>, <appliedenergistics2:material:39>, <appliedenergistics2:material:24>, <appliedenergistics2:material:39>, <ore:blockCrystallineAlloy>], 
	[<appliedenergistics2:fluix_block>, <appliedenergistics2:material:39>, <ore:circuitAdvanced>, <appliedenergistics2:material:39>, <appliedenergistics2:fluix_block>], 
	[<ore:calculatorCircuit>, <appliedenergistics2:material:39>, <appliedenergistics2:chest>, <appliedenergistics2:material:39>, <ore:calculatorCircuit>], 
	[<appliedenergistics2:fluix_block>, <appliedenergistics2:material:39>, <ore:circuitAdvanced>, <appliedenergistics2:material:39>, <appliedenergistics2:fluix_block>], 
	[<ore:blockCrystallineAlloy>, <appliedenergistics2:material:39>, <appliedenergistics2:material:24>, <appliedenergistics2:material:39>, <ore:blockCrystallineAlloy>]
]);
//matter condensor
TableCrafting.addShaped(2, <appliedenergistics2:condenser>, [
	[<silentgems:miscblock:4>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <silentgems:miscblock:4>], 
	[<thermalfoundation:glass:3>, <ore:crystalPureFluix>, <ore:dustFluix>, <ore:crystalPureFluix>, <thermalfoundation:glass:3>], 
	[<thermalfoundation:glass:3>, <ore:dustFluix>, <appliedenergistics2:chest>, <ore:dustFluix>, <thermalfoundation:glass:3>], 
	[<thermalfoundation:glass:3>, <ore:crystalPureFluix>, <ore:dustFluix>, <ore:crystalPureFluix>, <thermalfoundation:glass:3>], 
	[<silentgems:miscblock:4>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <silentgems:miscblock:4>]
]);
//t3 table
TableCrafting.addShaped(2, <extendedcrafting:table_elite>, [
	[<extendedcrafting:material:10>, <ore:plateGaia>, <ore:plateGaia>, <ore:plateGaia>, <extendedcrafting:material:10>], 
	[<ore:plateGaia>, <ore:compressedMeteoricIron>, <extendedcrafting:trimmed:2>, <ore:compressedMeteoricIron>, <ore:plateGaia>], 
	[<ore:plateGaia>, <extendedcrafting:table_basic>, <extendedcrafting:table_advanced>, <extendedcrafting:table_basic>, <ore:plateGaia>], 
	[<ore:plateGaia>, <ore:compressedMeteoricIron>, <extendedcrafting:trimmed:2>, <ore:compressedMeteoricIron>, <ore:plateGaia>], 
	[<extendedcrafting:material:10>, <ore:plateGaia>, <ore:plateGaia>, <ore:plateGaia>, <extendedcrafting:material:10>]
]);
//electric compressor
TableCrafting.addShaped(2, <galacticraftcore:machine2>, [
	[<overloaded:compressed_obsidian:1>, <ore:blockElectricalSteel>, <ore:plateEndSteel>, <ore:blockElectricalSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:blockElectricalSteel>, <contenttweaker:large_circuit>, <ore:craftingPiston>, <contenttweaker:large_circuit>, <ore:blockElectricalSteel>], 
	[<ore:plateEndSteel>, <ore:gearEndSteel>, <ore:waferAdvanced>, <ore:gearEndSteel>, <ore:plateEndSteel>], 
	[<ore:blockElectricalSteel>, <contenttweaker:large_circuit>, <ore:craftingPiston>, <contenttweaker:large_circuit>, <ore:blockElectricalSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:blockElectricalSteel>, <ore:plateEndSteel>, <ore:blockElectricalSteel>, <overloaded:compressed_obsidian:1>]
]);
//oxygen collector
TableCrafting.addShaped(2, <galacticraftcore:collector>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <galacticraftcore:air_fan>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <ore:compressedAluminum>, <openblocks:tank>, <ore:compressedAluminum>, <ore:compressedSteel>], 
	[<galacticraftcore:air_fan>, <ore:compressedTin>, <ore:waferAdvanced>, <ore:compressedTin>, <galacticraftcore:air_fan>], 
	[<ore:compressedSteel>, <ore:compressedAluminum>, <openblocks:tank>, <ore:compressedAluminum>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <galacticraftcore:air_fan>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//oxygen compressor
TableCrafting.addShaped(2, <galacticraftcore:oxygen_compressor>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <galacticraftcore:fluid_pipe>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <ore:compressedAluminum>, <openblocks:tank>, <ore:compressedAluminum>, <ore:compressedSteel>], 
	[<galacticraftcore:fluid_pipe>, <openblocks:tank>, <ore:waferAdvanced>, <openblocks:tank>, <galacticraftcore:fluid_pipe>], 
	[<ore:compressedSteel>, <ore:compressedAluminum>, <openblocks:tank>, <ore:compressedAluminum>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <galacticraftcore:fluid_pipe>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//refinery
TableCrafting.addShaped(2, <galacticraftcore:refinery>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <ore:oc:circuitChip3>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <thermalfoundation:material:515>, <ore:blockFuelCoke>, <thermalfoundation:material:515>, <ore:compressedSteel>], 
	[<integrateddynamics:variable_transformer>, <ore:blockFuelCoke>, <ore:waferAdvanced>, <ore:blockFuelCoke>, <integrateddynamics:variable_transformer:1>], 
	[<ore:compressedSteel>, <thermalfoundation:material:514>, <ore:blockFuelCoke>, <thermalfoundation:material:513>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <ore:oc:circuitChip3>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//fuel loader
TableCrafting.addShaped(2, <galacticraftcore:fuel_loader>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <immersiveengineering:metal_device1:6>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <ore:compressedTin>, <immersiveengineering:metal_device1:6>, <ore:compressedTin>, <ore:compressedSteel>], 
	[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <ore:waferAdvanced>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>], 
	[<ore:compressedSteel>, <ore:compressedTin>, <immersiveengineering:metal_device1:6>, <ore:compressedTin>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <immersiveengineering:metal_device1:6>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//metallurgic infuser
TableCrafting.addShaped(2, <mekanism:machineblock:8>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotRedstoneAlloy>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateRedstoneAlloy>, <enderio:block_simple_furnace>, <ore:plateRedstoneAlloy>, <ore:plateOsmium>], 
	[<ore:ingotRedstoneAlloy>, <ore:gearRedstoneAlloy>, <mekanism:basicblock:8>, <ore:gearRedstoneAlloy>, <ore:ingotRedstoneAlloy>], 
	[<ore:plateOsmium>, <ore:plateRedstoneAlloy>, <enderio:block_simple_furnace>, <ore:plateRedstoneAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotRedstoneAlloy>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//steel casing
TableCrafting.addShaped(2, <mekanism:basicblock:8>, [
	[<ore:plateSteel>, <ore:plateLead>, <ore:plateElectricalSteel>, <ore:plateLead>, <ore:plateSteel>], 
	[<ore:plateLead>, <ore:plateAluminum>, <ore:plateOsmium>, <ore:plateAluminum>, <ore:plateLead>], 
	[<ore:plateElectricalSteel>, <ore:plateOsmium>, <rftools:machine_frame>, <ore:plateOsmium>, <ore:plateElectricalSteel>], 
	[<ore:plateLead>, <ore:plateAluminum>, <ore:plateOsmium>, <ore:plateAluminum>, <ore:plateLead>], 
	[<ore:plateSteel>, <ore:plateLead>, <ore:plateElectricalSteel>, <ore:plateLead>, <ore:plateSteel>]
]);
//wired charger
TableCrafting.addShaped(2, <enderio:block_wired_charger>, [
	[<extendedcrafting:material:9>, <ore:plateElectricalSteel>, <ore:dustBedrock>, <ore:plateElectricalSteel>, <extendedcrafting:material:9>], 
	[<ore:plateElectricalSteel>, <ore:gearDark>, <ore:plateElectricalSteel>, <ore:gearDark>, <ore:plateElectricalSteel>], 
	[<ore:dustBedrock>, <enderio:block_simple_wired_charger>, <ore:itemMachineChassi>, <enderio:block_simple_wired_charger>, <ore:dustBedrock>], 
	[<ore:plateElectricalSteel>, <ore:gearDark>, <ore:plateElectricalSteel>, <ore:gearDark>, <ore:plateElectricalSteel>], 
	[<extendedcrafting:material:9>, <ore:plateElectricalSteel>, <ore:dustBedrock>, <ore:plateElectricalSteel>, <extendedcrafting:material:9>]
]);
//enrichment chamber
TableCrafting.addShaped(2, <mekanism:machineblock>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <silentgems:craftingmaterial:1>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <ore:plateEnrichedGold>, <mekanism:basicblock:8>, <ore:plateEnrichedGold>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <silentgems:craftingmaterial:1>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//crusher
TableCrafting.addShaped(2, <mekanism:machineblock:3>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:oc:pistonUpgrade>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <thermalexpansion:machine:1>, <mekanism:basicblock:8>, <thermalexpansion:machine:1>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:oc:pistonUpgrade>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//precision sawmill
TableCrafting.addShaped(2, <mekanism:machineblock2:5>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <thermalfoundation:material:657>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <thermalexpansion:machine:2>, <mekanism:basicblock:8>, <thermalexpansion:machine:2>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <thermalfoundation:material:657>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//purification chamber
TableCrafting.addShaped(2, <mekanism:machineblock:9>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:crystalPureFluix>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <calculator:purifiedobsidian>, <mekanism:basicblock:8>, <calculator:purifiedobsidian>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:crystalPureFluix>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//combiner
TableCrafting.addShaped(2, <mekanism:machineblock:2>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:plateVibrantAlloy>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <ore:gearVividAlloy>, <mekanism:basicblock:8>, <ore:gearVibrantAlloy>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:plateVividAlloy>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//osmium compressor
TableCrafting.addShaped(2, <mekanism:machineblock:1>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:ingotOctine>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitBasic>, <forestry:refractory_wax>, <mekanism:basicblock:8>, <forestry:refractory_wax>, <ore:circuitBasic>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <ore:ingotOctine>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitBasic>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//gas-burning generator
TableCrafting.addShaped(2, <mekanismgenerators:generator:3>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitAdvanced>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <mekanism:electrolyticcore>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:circuitAdvanced>, <mekanism:electrolyticcore>, <mekanism:basicblock:8>, <mekanism:electrolyticcore>, <ore:circuitAdvanced>], 
	[<ore:plateOsmium>, <ore:itemEnrichedAlloy>, <mekanism:electrolyticcore>, <ore:itemEnrichedAlloy>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitAdvanced>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//soul binder
TableCrafting.addShaped(2, <enderio:block_soul_binder>, [
	[<ore:plateSoularium>, <ore:plateSoularium>, <enderio:block_enderman_skull:2>, <ore:plateSoularium>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <minecraft:skull:1>, <tombstone:scroll_buff:1>.withTag({enchant: 1 as byte}), <minecraft:skull:1>, <ore:plateSoularium>], 
	[<minecraft:skull:4>, <tombstone:scroll_buff>.withTag({enchant: 1 as byte}), <ore:itemSoulMachineChassi>, <tombstone:scroll_buff:2>.withTag({enchant: 1 as byte}), <minecraft:skull:2>], 
	[<ore:plateSoularium>, <minecraft:skull:1>, <tombstone:scroll_buff:3>.withTag({enchant: 1 as byte}), <minecraft:skull:1>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:plateSoularium>, <minecraft:skull>, <ore:plateSoularium>, <ore:plateSoularium>]
]);
//slicensplice
TableCrafting.addShaped(2, <enderio:block_slice_and_splice>, [
	[<ore:plateSoularium>, <ore:plateSoularium>, <ore:itemSkull>, <ore:plateSoularium>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:gearDark>, <enderio:block_dark_iron_bars>, <ore:gearDark>, <ore:plateSoularium>], 
	[<ore:itemSkull>, <enderio:block_dark_iron_bars>, <ore:itemSoulMachineChassi>, <enderio:block_dark_iron_bars>, <ore:itemSkull>], 
	[<ore:plateSoularium>, <ore:gearDark>, <enderio:block_dark_iron_bars>, <ore:gearDark>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:plateSoularium>, <ore:itemSkull>, <ore:plateSoularium>, <ore:plateSoularium>]
]);
//powered spawner
TableCrafting.addShaped(2, <enderio:block_powered_spawner>, [
	[<ore:plateSoularium>, <ore:plateSoularium>, <ore:itemSkull>, <ore:plateSoularium>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:plateElectricalSteel>, <ore:itemTokenMonster>, <ore:plateElectricalSteel>, <ore:plateSoularium>], 
	[<ore:itemPrecientCrystal>, <ore:itemTokenMonster>, <ore:itemSoulMachineChassi>, <ore:itemTokenMonster>, <ore:itemPrecientCrystal>], 
	[<ore:plateSoularium>, <ore:plateElectricalSteel>, <ore:itemTokenMonster>, <ore:plateElectricalSteel>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:plateSoularium>, <ore:skullZombieController>, <ore:plateSoularium>, <ore:plateSoularium>]
]);
//crafter t2
TableCrafting.addShaped(2, <rftools:crafter2>, [
	[<ore:platePlatinum>, <jaopca:mekanism_clump.meteoric_iron>, <galacticraftplanets:item_basic_mars:5>, <jaopca:mekanism_clump.meteoric_iron>, <ore:platePlatinum>], 
	[<jaopca:mekanism_clump.meteoric_iron>, <ore:gearDark>, <ore:gearEnderium>, <ore:gearEndSteel>, <jaopca:mekanism_clump.meteoric_iron>], 
	[<galacticraftplanets:item_basic_mars:5>, <rftools:crafter1>, <ore:itemEnhancedMachineChassi>, <rftools:crafter1>, <galacticraftplanets:item_basic_mars:5>], 
	[<jaopca:mekanism_clump.meteoric_iron>, <ore:gearEndSteel>, <ore:gearEnderium>, <ore:gearDark>, <jaopca:mekanism_clump.meteoric_iron>], 
	[<ore:platePlatinum>, <jaopca:mekanism_clump.meteoric_iron>, <galacticraftplanets:item_basic_mars:5>, <jaopca:mekanism_clump.meteoric_iron>, <ore:platePlatinum>]
]);
//molecular assembler
TableCrafting.addShaped(2, <appliedenergistics2:molecular_assembler>, [
	[<ore:plateIridium>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <ore:plateIridium>], 
	[<appliedenergistics2:material:44>, <appliedenergistics2:material:44>, <ore:blockGlassHardened>, <appliedenergistics2:material:43>, <appliedenergistics2:material:43>], 
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:blockGlassHardened>, <rftools:crafter2>, <ore:blockGlassHardened>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<appliedenergistics2:material:44>, <appliedenergistics2:material:44>, <ore:blockGlassHardened>, <appliedenergistics2:material:43>, <appliedenergistics2:material:43>], 
	[<ore:plateIridium>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <ore:plateIridium>]
]);
//wind generator
TableCrafting.addShaped(2, <mekanismgenerators:generator:6>, [
	[<appliedenergistics2:quartz_block>, <ore:stickSteel>, <immersiveengineering:wooden_device1:1>, <ore:stickSteel>, <appliedenergistics2:quartz_block>], 
	[<appliedenergistics2:quartz_block>, <ore:plateElectricalSteel>, <ore:circuitBasic>, <ore:plateElectricalSteel>, <appliedenergistics2:quartz_block>], 
	[<ore:plateElectricalSteel>, <ore:circuitBasic>, <ore:calculatorCircuit>, <ore:circuitBasic>, <ore:plateElectricalSteel>], 
	[<appliedenergistics2:quartz_block>, <ore:plateElectricalSteel>, <ore:circuitBasic>, <ore:plateElectricalSteel>, <appliedenergistics2:quartz_block>], 
	[<appliedenergistics2:quartz_block>, <ore:plateElectricalSteel>, <appliedenergistics2:quartz_block>, <ore:plateElectricalSteel>, <appliedenergistics2:quartz_block>]
]);
//energetic infuser
TableCrafting.addShaped(2, <thermalexpansion:machine:9>, [
	[<overloaded:compressed_stone:2>, <ore:oc:batteryUpgrade3>, <thermalfoundation:material:514>, <ore:oc:batteryUpgrade3>, <overloaded:compressed_stone:2>], 
	[<ore:oc:batteryUpgrade3>, <ore:circuitAdvanced>, <thermalfoundation:material:514>, <ore:circuitAdvanced>, <ore:oc:batteryUpgrade3>], 
	[<thermalfoundation:material:513>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:515>, <thermalfoundation:material:515>], 
	[<ore:oc:batteryUpgrade3>, <ore:circuitAdvanced>, <thermalfoundation:material:514>, <ore:circuitAdvanced>, <ore:oc:batteryUpgrade3>], 
	[<overloaded:compressed_stone:2>, <ore:oc:batteryUpgrade3>, <thermalfoundation:material:514>, <ore:oc:batteryUpgrade3>, <overloaded:compressed_stone:2>]
]);
//carpenter
TableCrafting.addShaped(2, <forestry:carpenter>, [
	[<actuallyadditions:block_misc:4>, <packagedauto:package_component>, <forestry:thermionic_tubes:12>, <packagedauto:package_component>, <actuallyadditions:block_misc:4>], 
	[<packagedauto:package_component>, <contenttweaker:large_circuit>, <forestry:sturdy_machine>, <contenttweaker:large_circuit>, <packagedauto:package_component>], 
	[<forestry:thermionic_tubes:12>, <forestry:sturdy_machine>, <rftools:machine_frame>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:12>], 
	[<packagedauto:package_component>, <contenttweaker:large_circuit>, <forestry:sturdy_machine>, <contenttweaker:large_circuit>, <packagedauto:package_component>], 
	[<actuallyadditions:block_misc:4>, <packagedauto:package_component>, <forestry:thermionic_tubes:12>, <packagedauto:package_component>, <actuallyadditions:block_misc:4>]
]);
//squeezer
TableCrafting.addShaped(2, <forestry:squeezer>, [
	[<actuallyadditions:block_misc:4>, <ore:plateTin>, <forestry:thermionic_tubes:1>, <ore:plateTin>, <actuallyadditions:block_misc:4>], 
	[<ore:plateTin>, <ore:circuitAdvanced>, <forestry:sturdy_machine>, <ore:circuitAdvanced>, <ore:plateTin>], 
	[<forestry:thermionic_tubes:1>, <forestry:sturdy_machine>, <integrateddynamics:mechanical_squeezer>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:1>], 
	[<ore:plateTin>, <ore:circuitAdvanced>, <forestry:sturdy_machine>, <ore:circuitAdvanced>, <ore:plateTin>], 
	[<actuallyadditions:block_misc:4>, <ore:plateTin>, <forestry:thermionic_tubes:1>, <ore:plateTin>, <actuallyadditions:block_misc:4>]
]);
//centrifugal separator
TableCrafting.addShaped(2, <thermalexpansion:machine:10>, [
	[<overloaded:compressed_stone:2>, <ore:blockGlassHardenedWhite>, <ore:beeComb>, <ore:blockGlassHardenedWhite>, <overloaded:compressed_stone:2>], 
	[<forestry:impregnated_casing>, <forestry:thermionic_tubes:4>, <mekanism:machineblock2:11>, <forestry:thermionic_tubes:4>, <forestry:impregnated_casing>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<forestry:impregnated_casing>, <forestry:thermionic_tubes:4>, <thermalfoundation:material:513>, <forestry:thermionic_tubes:4>, <forestry:impregnated_casing>], 
	[<overloaded:compressed_stone:2>, <ore:blockGlassHardenedWhite>, <ore:circuitAdvanced>, <ore:blockGlassHardenedWhite>, <overloaded:compressed_stone:2>]
]);
//mutagen producer
TableCrafting.addShaped(2, <gendustry:mutagen_producer>, [
	[<ore:plateBronze>, <ore:plateBronze>, <thebetweenlands:syrmorite_hopper>, <ore:plateBronze>, <ore:plateBronze>], 
	[<ore:plateBronze>, <gendustry:power_module>, <thebetweenlands:syrmorite_hopper>, <gendustry:power_module>, <ore:plateBronze>], 
	[<gendustry:power_module>, <ore:blockGlassHardened>, <forestry:alveary.plain>, <ore:blockGlassHardened>, <gendustry:power_module>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:mutagen_tank>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:gearBronze>, <ore:gearBronze>, <mekanism:machineblock2:11>, <ore:gearBronze>, <ore:gearBronze>]
]);
//mutatron
TableCrafting.addShaped(2, <gendustry:mutatron>, [
	[<ore:plateBronze>, <gendustry:genetics_processor>, <ore:gearBronze>, <gendustry:genetics_processor>, <ore:plateBronze>], 
	[<gendustry:bee_receptacle>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:bee_receptacle>], 
	[<ore:blockBronze>, <forestry:refractory_wax>, <gendustry:industrial_apiary>, <forestry:refractory_wax>, <ore:blockBronze>], 
	[<gendustry:bee_receptacle>, <gendustry:power_module>, <gendustry:mutagen_tank>, <gendustry:power_module>, <gendustry:bee_receptacle>], 
	[<ore:plateBronze>, <ore:gearBronze>, <mekanism:machineblock2:11>, <ore:gearBronze>, <ore:plateBronze>]
]);
//genetic imprinter
TableCrafting.addShaped(2, <gendustry:imprinter>, [
	[<ore:gearBronze>, <ore:gearBronze>, <gendustry:gene_template>, <ore:gearBronze>, <ore:gearBronze>], 
	[<ore:gearBronze>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <ore:gearBronze>], 
	[<gendustry:bee_receptacle>, <gendustry:gene_template>, <forestry:sturdy_machine>, <gendustry:gene_template>, <gendustry:bee_receptacle>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:power_module>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:gearBronze>, <ore:gearBronze>, <gendustry:gene_template>, <ore:gearBronze>, <ore:gearBronze>]
]);
//genetic transposer
TableCrafting.addShaped(2, <gendustry:transposer>, [
	[<ore:gearBronze>, <ore:gearBronze>, <gendustry:gene_template>, <ore:gearBronze>, <ore:gearBronze>], 
	[<ore:gearBronze>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <ore:gearBronze>], 
	[<gendustry:bee_receptacle>, <gendustry:gene_template>, <gendustry:imprinter>, <gendustry:gene_template>, <gendustry:bee_receptacle>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:power_module>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:gearBronze>, <ore:gearBronze>, <gendustry:gene_template>, <ore:gearBronze>, <ore:gearBronze>]
]);
//fractionating still
TableCrafting.addShaped(2, <thermalexpansion:machine:7>, [
	[<overloaded:compressed_stone:2>, <ore:plateElvenElementium>, <overloaded:compressed_stone:2>, <ore:plateElvenElementium>, <overloaded:compressed_stone:2>], 
	[<ore:plateElvenElementium>, <ore:pressurizedTank>, <ore:pressurizedTank>, <ore:pressurizedTank>, <ore:plateElvenElementium>], 
	[<overloaded:compressed_stone:2>, <thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>, <overloaded:compressed_stone:2>], 
	[<ore:plateElvenElementium>, <ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>, <ore:plateElvenElementium>], 
	[<overloaded:compressed_stone:2>, <ore:plateElvenElementium>, <ore:gearCopper>, <ore:plateElvenElementium>, <overloaded:compressed_stone:2>]
]);
//protein liquifier
TableCrafting.addShaped(2, <gendustry:liquifier>, [
	[<ore:plateBronze>, <ore:plateBronze>, <thermalexpansion:florb:1>.withTag({Fluid: "pyrotheum"}), <ore:plateBronze>, <ore:plateBronze>], 
	[<ore:plateBronze>, <gendustry:power_module>, <thermalexpansion:florb:1>.withTag({Fluid: "pyrotheum"}), <gendustry:power_module>, <ore:plateBronze>], 
	[<gendustry:power_module>, <ore:blockGlassHardened>, <forestry:alveary.plain>, <ore:blockGlassHardened>, <gendustry:power_module>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:apiary.upgrade:10>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:gearBronze>, <ore:gearBronze>, <mekanism:machineblock2:11>, <ore:gearBronze>, <ore:gearBronze>]
]);
//inoculator
TableCrafting.addShaped(2, <genetics:machine:3>, [
	[<ore:gearDiamatineEmpowered>, <ore:plateEnrichedGold>, <genetics:misc:8>, <ore:plateEnrichedGold>, <ore:gearDiamatineEmpowered>], 
	[<ore:plateEnrichedGold>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEnrichedGold>], 
	[<genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:10>, <gendustry:genetics_processor>, <genetics:misc:8>], 
	[<ore:plateEmeradicEmpowered>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEmeradicEmpowered>], 
	[<ore:gearDiamatineEmpowered>, <ore:plateEmeradicEmpowered>, <genetics:misc:8>, <ore:plateEmeradicEmpowered>, <ore:gearDiamatineEmpowered>]
]);
//isolator
TableCrafting.addShaped(2, <genetics:machine>, [
	[<ore:gearEnrichedGold>, <ore:plateEnrichedGold>, <genetics:misc:8>, <ore:plateEnrichedGold>, <ore:gearEnrichedGold>], 
	[<ore:plateEnrichedGold>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEnrichedGold>], 
	[<genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:10>, <gendustry:genetics_processor>, <genetics:misc:8>], 
	[<genetics:misc:3>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <genetics:misc:3>], 
	[<ore:gearEnrichedGold>, <genetics:misc:3>, <genetics:misc:8>, <genetics:misc:3>, <ore:gearEnrichedGold>]
]);
//sequencer
TableCrafting.addShaped(2, <genetics:machine:1>, [
	[<ore:gearBronze>, <ore:plateEnrichedGold>, <genetics:misc:8>, <ore:plateEnrichedGold>, <ore:gearBronze>], 
	[<ore:plateEnrichedGold>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEnrichedGold>], 
	[<genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:10>, <gendustry:genetics_processor>, <genetics:misc:8>], 
	[<genetics:misc:2>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <genetics:misc:2>], 
	[<ore:gearBronze>, <genetics:misc:2>, <genetics:misc:8>, <genetics:misc:2>, <ore:gearBronze>]
]);
//polymeriser
TableCrafting.addShaped(2, <genetics:machine:2>, [
	[<ore:gearElectricalSteel>, <ore:plateEnrichedGold>, <genetics:misc:8>, <ore:plateEnrichedGold>, <ore:gearElectricalSteel>], 
	[<ore:plateEnrichedGold>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEnrichedGold>], 
	[<genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:10>, <gendustry:genetics_processor>, <genetics:misc:8>], 
	[<ore:plateEnrichedGold>, <genetics:misc:8>, <gendustry:genetics_processor>, <genetics:misc:8>, <ore:plateEnrichedGold>], 
	[<ore:gearElectricalSteel>, <ore:plateEnrichedGold>, <genetics:misc:8>, <ore:plateEnrichedGold>, <ore:gearElectricalSteel>]
]);
//oxygen decompressor
TableCrafting.addShaped(2, <galacticraftcore:oxygen_compressor:4>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <openblocks:tank>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <galacticraftcore:basic_item:8>, <galacticraftcore:fluid_pipe>, <galacticraftcore:basic_item:8>, <ore:compressedSteel>], 
	[<openblocks:tank>, <galacticraftcore:fluid_pipe>, <ore:waferAdvanced>, <galacticraftcore:fluid_pipe>, <openblocks:tank>], 
	[<ore:compressedSteel>, <galacticraftcore:basic_item:8>, <galacticraftcore:fluid_pipe>, <galacticraftcore:basic_item:8>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <openblocks:tank>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//electric furnace
TableCrafting.addShaped(2, <galacticraftcore:machine_tiered:4>, [
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <tp:hardened_stone_smallbricks>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>], 
	[<ore:compressedSteel>, <galacticraftcore:basic_item:8>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <galacticraftcore:basic_item:8>, <ore:compressedSteel>], 
	[<tp:hardened_stone_smallbricks>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <thermalexpansion:machine>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <tp:hardened_stone_smallbricks>], 
	[<ore:compressedSteel>, <galacticraftcore:basic_item:8>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <galacticraftcore:basic_item:8>, <ore:compressedSteel>], 
	[<overloaded:compressed_obsidian:1>, <ore:compressedSteel>, <tp:hardened_stone_smallbricks>, <ore:compressedSteel>, <overloaded:compressed_obsidian:1>]
]);
//resistive heater
TableCrafting.addShaped(2, <mekanism:machineblock3:4>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitElite>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:alloyUltimate>, <mekanism:basicblock2:5>, <ore:alloyUltimate>, <ore:plateOsmium>], 
	[<ore:circuitElite>, <actuallyadditions:block_heat_collector>, <mekanism:basicblock:8>, <actuallyadditions:block_heat_collector>, <ore:circuitElite>], 
	[<ore:plateOsmium>, <ore:alloyUltimate>, <mekanism:basicblock2:5>, <ore:alloyUltimate>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:circuitElite>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//laser
TableCrafting.addShaped(2, <mekanism:machineblock2:13>, [
	[<ore:plateOsmium>, <ore:plateDarkSteel>, <actuallyadditions:block_laser_relay_extreme>, <ore:plateDarkSteel>, <ore:plateOsmium>], 
	[<ore:alloyUltimate>, <rftools:infused_diamond>, <ore:etLaserLens>, <rftools:infused_diamond>, <ore:alloyUltimate>], 
	[<ore:circuitUltimate>, <ore:battery>, <mekanism:basicblock:8>, <ore:battery>, <ore:circuitUltimate>], 
	[<ore:alloyUltimate>, <rftools:infused_diamond>, <rftools:infused_diamond>, <rftools:infused_diamond>, <ore:alloyUltimate>], 
	[<ore:plateOsmium>, <ore:plateDarkSteel>, <ore:circuitUltimate>, <ore:plateDarkSteel>, <ore:plateOsmium>]
]);

function run() {
    for holder in recipeHolders {
		TableCrafting.addShaped(2, holder.getOutput(), holder.getShaped());
	}
}