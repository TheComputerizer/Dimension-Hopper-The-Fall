#reloadable

import mods.extendedcrafting.TableCrafting;

function run() { //TODO integrate these into ex crafting & vanilla sections

	//impressive ingot
	TableCrafting.addShaped(1, <contenttweaker:impressive_ingot>, [
		[<moreplates:manyullyn_plate>, <contenttweaker:divine_will>, <moreplates:manyullyn_plate>], 
		[<contenttweaker:divine_will>, <thebetweenlands:octine_ingot>, <contenttweaker:divine_will>], 
		[<moreplates:manyullyn_plate>, <contenttweaker:divine_will>, <moreplates:manyullyn_plate>]
	]);

	//mekWall
	TableCrafting.addShaped(1, <contenttweaker:mek_wall>, [
		[<psi:material>, <immersiveengineering:metal_decoration1:1>, <psi:material>], 
		[<immersiveengineering:metal_decoration1:1>, <contenttweaker:divine_will>, <immersiveengineering:metal_decoration1:1>], 
		[<psi:material>, <immersiveengineering:metal_decoration1:1>, <psi:material>]
	]);

	//divine mekWall
	TableCrafting.addShaped(1, <contenttweaker:divine_mek_wall>, [
		[<rpsideas:dark_plate>, <contenttweaker:mek_wall>, <rpsideas:dark_plate>], 
		[<contenttweaker:mek_wall>, <contenttweaker:impressive_ingot>, <contenttweaker:mek_wall>], 
		[<rpsideas:dark_plate>, <contenttweaker:mek_wall>, <rpsideas:dark_plate>]
	]);

	//large circuit
	TableCrafting.addShaped(1, <contenttweaker:large_circuit>, [
		[<silentgems:gemsuper:34>, <mekanism:controlcircuit>, <silentgems:gemsuper:34>], 
		[<mekanism:controlcircuit>, <contenttweaker:mek_wall>, <mekanism:controlcircuit>], 
		[<silentgems:gemsuper:34>, <mekanism:controlcircuit>, <silentgems:gemsuper:34>]
	]);

	//divine large circuit
	TableCrafting.addShaped(1, <contenttweaker:divine_large_circuit>, [
		[<mekanism:controlcircuit:2>, <contenttweaker:large_circuit>, <mekanism:controlcircuit:2>], 
		[<contenttweaker:large_circuit>, <contenttweaker:divine_mek_wall>, <contenttweaker:large_circuit>], 
		[<mekanism:controlcircuit:2>, <contenttweaker:large_circuit>, <mekanism:controlcircuit:2>]
	]);

	//industrial ventilation
	TableCrafting.addShaped(1, <contenttweaker:industrial_ventilation>, [
		[<blue_skies:ventium_ingot>, <galacticraftcore:air_vent>, <blue_skies:ventium_ingot>], 
		[<galacticraftcore:air_vent>, <contenttweaker:divine_mek_wall>, <galacticraftcore:air_vent>], 
		[<blue_skies:ventium_ingot>, <galacticraftcore:air_vent>, <blue_skies:ventium_ingot>]
	]);

	//heart of the machine god
	TableCrafting.addShaped(1, <contenttweaker:heart_of_the_machine_god>, [
		[<jaopca:dust.white_gem>, <contenttweaker:divine_large_circuit>, <jaopca:dust.white_gem>], 
		[<contenttweaker:divine_large_circuit>, <xnet:controller>, <contenttweaker:divine_large_circuit>], 
		[<jaopca:dust.white_gem>, <contenttweaker:divine_large_circuit>, <jaopca:dust.white_gem>]
	]);

	//controllers

	//the singularity
	TableCrafting.addShapeless(1, <dimensionhopper:the_singularity>, [<mekanism:basicblock:14>]);

	//ectoplasmic generator
	TableCrafting.addShapeless(1, <dimensionhopper:ectoplasmic_generator>, [<contenttweaker:mek_wall>]);

	//assembler
	TableCrafting.addShapeless(1, <dimensionhopper:assembler>, [<contenttweaker:large_circuit>]);

	//rocket t1
	TableCrafting.addShapeless(1, <dimensionhopper:rocket_t1>, [<contenttweaker:large_circuit>, <contenttweaker:rocket_block_1>]);

	//rocket t7
	TableCrafting.addShapeless(1, <dimensionhopper:rocket_t7>, [<contenttweaker:heart_of_the_machine_god>, <contenttweaker:rocket_block_7>]);

	//rocket t10
	TableCrafting.addShapeless(1, <dimensionhopper:rocket_t10>, [<contenttweaker:heart_of_the_machine_god>, <contenttweaker:rocket_block_10>]);

	//oil cracker 1
	TableCrafting.addShapeless(1, <dimensionhopper:oil_cracker_mk_1>, [<storagedrawers:controller>, <minecraft:coal_block>]);

	//psionic generator 1
	TableCrafting.addShapeless(1, <dimensionhopper:psionic_generator_mk_1>, [<storagedrawers:controller>, <psi:psi_decorative:2>]);

	//the factory 1
	TableCrafting.addShapeless(1, <dimensionhopper:the_factory_mk_1>, [<storagedrawers:controller>, <chisel:technical1:1>]);

	//oil cracker 2
	TableCrafting.addShapeless(1, <dimensionhopper:oil_cracker_mk_2>, [<contenttweaker:heart_of_the_machine_god>, <minecraft:coal_block>]);

	//psionic generator 2
	TableCrafting.addShapeless(1, <dimensionhopper:psionic_generator_mk_2>, [<contenttweaker:heart_of_the_machine_god>, <psi:psi_decorative:2>]);

	//the factory 2
	TableCrafting.addShapeless(1, <dimensionhopper:the_factory_mk_2>, [<contenttweaker:heart_of_the_machine_god>, <chisel:technical1:1>]);

	//oil cracker 3
	TableCrafting.addShapeless(1, <dimensionhopper:oil_cracker_mk_3>, [<appliedenergistics2:controller>, <minecraft:coal_block>]);

	//psionic generator 3
	TableCrafting.addShapeless(1, <dimensionhopper:psionic_generator_mk_3>, [<appliedenergistics2:controller>, <psi:psi_decorative:2>]);

	//the factory 3
	TableCrafting.addShapeless(1, <dimensionhopper:the_factory_mk_3>, [<appliedenergistics2:controller>, <chisel:technical1:1>]);

	//limbonic generator
	TableCrafting.addShapeless(1, <dimensionhopper:limbonic_generator>, [<contenttweaker:heart_of_the_machine_god>, <extendedcrafting:singularity_ultimate>]);

	//lightning infuser mk 1
	TableCrafting.addShapeless(1, <dimensionhopper:lightning_infuser_mk_1>, [<lightningcraft:stone_block>, <lightningcraft:ingot>]);

	//lightning infuser mk 2
	TableCrafting.addShapeless(1, <dimensionhopper:lightning_infuser_mk_2>, [<lightningcraft:stone_block>, <lightningcraft:ingot:1>]);

	//lightning infuser mk 3
	TableCrafting.addShapeless(1, <dimensionhopper:lightning_infuser_mk_3>, [<lightningcraft:stone_block:3>, <lightningcraft:ingot:2>]);

	//lightning infuser mk 4
	TableCrafting.addShapeless(1, <dimensionhopper:lightning_infuser_mk_4>, [<lightningcraft:metal_block:2>, <extendedcrafting:material:32>]);

	//infinity infuser
	TableCrafting.addShapeless(1, <dimensionhopper:lightning_infuser_mk_5>, [<extendedcrafting:storage:4>, <avaritia:resource:6>]);

	//parts

	//fluid
	TableCrafting.addShapeless(1, <dimensionhopper:limbonic_fluid_hatch>, [<contenttweaker:heart_of_the_machine_god>, <mekanism:machineblock2:11>.withTag({tier: 3})]);

	//energy
	TableCrafting.addShapeless(1, <dimensionhopper:limbonic_energy_hatch>, [<contenttweaker:heart_of_the_machine_god>, <draconicevolution:reactor_core>]);

}