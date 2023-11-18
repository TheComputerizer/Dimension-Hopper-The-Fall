#reloadable

import mods.extendedcrafting.TableCrafting;

TableCrafting.remove(<extendedcrafting:material:24>);
//me controller
TableCrafting.addShaped(3, <appliedenergistics2:controller>, [
	[<extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>, <ore:compressedMeteoricIron>, <appliedenergistics2:part:76>, <ore:compressedMeteoricIron>, <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>], 
	[<extendedcrafting:trimmed:2>, <ore:pearlFluix>, <appliedenergistics2:material:23>, <appliedenergistics2:condenser>, <calculator:circuitboard:8>	, <ore:pearlFluix>, <extendedcrafting:trimmed:2>], 
	[<ore:plateGaia>, <appliedenergistics2:material:24>, <appliedenergistics2:material:6>, <contenttweaker:divine_large_circuit>, <appliedenergistics2:material:6>, <calculator:circuitboard:11>, <ore:plateGaia>], 
	[<appliedenergistics2:part:76>, <appliedenergistics2:drive>, <contenttweaker:divine_large_circuit>, <ore:oc:cpu3>, <contenttweaker:divine_large_circuit>, <appliedenergistics2:drive>, <appliedenergistics2:part:76>], 
	[<ore:plateGaia>, <calculator:circuitboard:5>, <appliedenergistics2:material:6>, <contenttweaker:divine_large_circuit>, <appliedenergistics2:material:6>, <appliedenergistics2:material:24>, <ore:plateGaia>], 
	[<extendedcrafting:trimmed:2>, <ore:pearlFluix>, <calculator:circuitboard:2>, <appliedenergistics2:condenser>, <appliedenergistics2:material:23>, <ore:pearlFluix>, <extendedcrafting:trimmed:2>], 
	[<extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>, <ore:compressedMeteoricIron>, <appliedenergistics2:part:76>, <ore:compressedMeteoricIron>, <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:2>]
]);
//automation interface
TableCrafting.addShaped(3, <extendedcrafting:interface>, [
	[<extendedcrafting:trimmed:2>, <appliedenergistics2:crafting_storage_1k>, <botania:opencrate:1>, <extendedcrafting:trimmed:2>, <botania:opencrate:1>, <appliedenergistics2:crafting_storage_1k>, <extendedcrafting:trimmed:2>], 
	[<appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_4k>, <appliedenergistics2:crafting_storage_16k>, <appliedenergistics2:crafting_storage_4k>, <appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_1k>], 
	[<botania:opencrate:1>, <appliedenergistics2:crafting_storage_4k>, <rftools:crafter1>, <naturesaura:auto_crafter>, <rftools:crafter1>, <appliedenergistics2:crafting_storage_4k>, <botania:opencrate:1>], 
	[<extendedcrafting:trimmed:2>, <appliedenergistics2:crafting_storage_16k>, <naturesaura:auto_crafter>, <extendedcrafting:frame>, <naturesaura:auto_crafter>, <appliedenergistics2:crafting_storage_16k>, <extendedcrafting:trimmed:2>], 
	[<botania:opencrate:1>, <appliedenergistics2:crafting_storage_4k>, <rftools:crafter1>, <naturesaura:auto_crafter>, <rftools:crafter1>, <appliedenergistics2:crafting_storage_4k>, <botania:opencrate:1>], 
	[<appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_4k>, <appliedenergistics2:crafting_storage_16k>, <appliedenergistics2:crafting_storage_4k>, <appliedenergistics2:crafting_storage_1k>, <appliedenergistics2:crafting_storage_1k>], 
	[<extendedcrafting:trimmed:2>, <appliedenergistics2:crafting_storage_1k>, <botania:opencrate:1>, <extendedcrafting:trimmed:2>, <botania:opencrate:1>, <appliedenergistics2:crafting_storage_1k>, <extendedcrafting:trimmed:2>]
]);
// void ore miner t1
TableCrafting.addShaped(3, <environmentaltech:void_ore_miner_cont_1>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockLitherite>, <calculator:enddiamond>, <lightningcraft:lightning_miner>, <ore:plateEnderium>, <lightningcraft:lightning_miner>, <calculator:enddiamond>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <calculator:enddiamond>, <ore:circuitAdvanced>, <calculator:enddiamond>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <ore:plateEnderium>, <ore:circuitAdvanced>, <minecraft:beacon>, <ore:circuitAdvanced>, <ore:plateEnderium>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <calculator:enddiamond>, <ore:circuitAdvanced>, <calculator:enddiamond>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <calculator:enddiamond>, <extrautils2:miner>, <ore:plateEnderium>, <extrautils2:miner>, <calculator:enddiamond>, <ore:blockLitherite>], 
	[<overloaded:compressed_obsidian:2>, <chisel:energizedvoidstone:6>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:2>, <chisel:energizedvoidstone:6>, <overloaded:compressed_obsidian:2>]
]);
//void ore miner t2
TableCrafting.addShaped(3, <environmentaltech:void_ore_miner_cont_2>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockErodium>, <ore:compressedTitanium>, <lightningcraft:lightning_miner>, <ore:plateEnderium>, <lightningcraft:lightning_miner>, <ore:compressedTitanium>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <ore:compressedTitanium>, <ore:circuitAdvanced>, <ore:compressedTitanium>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <ore:plateEnderium>, <ore:circuitAdvanced>, <environmentaltech:void_ore_miner_cont_1>, <ore:circuitAdvanced>, <ore:plateEnderium>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <ore:compressedTitanium>, <ore:circuitAdvanced>, <ore:compressedTitanium>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <ore:compressedTitanium>, <extrautils2:miner>, <ore:plateEnderium>, <extrautils2:miner>, <ore:compressedTitanium>, <ore:blockErodium>], 
	[<overloaded:compressed_obsidian:4>, <chisel:energizedvoidstone:6>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:4>, <chisel:energizedvoidstone:6>, <overloaded:compressed_obsidian:4>]
]);
//void resource miner t1
TableCrafting.addShaped(3, <environmentaltech:void_res_miner_cont_1>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockLitherite>, <ore:gemDiamondFake>, <extrautils2:miner>, <ore:plateEnderium>, <extrautils2:miner>, <ore:gemDiamondFake>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <ore:gemDiamondFake>, <ore:circuitBasic>, <ore:gemDiamondFake>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <ore:plateEnderium>, <ore:circuitBasic>, <minecraft:beacon>, <ore:circuitBasic>, <ore:plateEnderium>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <ore:gemDiamondFake>, <ore:circuitBasic>, <ore:gemDiamondFake>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <ore:gemDiamondFake>, <extrautils2:miner>, <ore:plateEnderium>, <extrautils2:miner>, <ore:gemDiamondFake>, <ore:blockLitherite>], 
	[<ore:blockLonsdaleite>, <chisel:energizedvoidstone:6>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <chisel:energizedvoidstone:6>, <ore:blockLonsdaleite>]
]);
//void resource miner t2
TableCrafting.addShaped(3, <environmentaltech:void_res_miner_cont_2>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockErodium>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <galacticraftplanets:item_basic_asteroids:6>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <galacticraftplanets:item_basic_asteroids:6>, <ore:circuitBasic>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <environmentaltech:mica>, <ore:circuitBasic>, <environmentaltech:void_res_miner_cont_1>, <ore:circuitBasic>, <environmentaltech:mica>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <galacticraftplanets:item_basic_asteroids:6>, <ore:circuitBasic>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <galacticraftplanets:item_basic_asteroids:6>, <ore:blockErodium>], 
	[<ore:blockLonsdaleite>, <chisel:energizedvoidstone:6>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <chisel:energizedvoidstone:6>, <ore:blockLonsdaleite>]
]);
//void botanic miner t1
TableCrafting.addShaped(3, <environmentaltech:void_botanic_miner_cont_1>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockLitherite>, <ore:gemDiamondFake>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <ore:gemDiamondFake>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <ore:gemDiamondFake>, <ore:circuitBasic>, <ore:gemDiamondFake>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <environmentaltech:mica>, <ore:circuitBasic>, <minecraft:beacon>, <ore:circuitBasic>, <environmentaltech:mica>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <extrautils2:interactionproxy>, <ore:gemDiamondFake>, <ore:circuitBasic>, <ore:gemDiamondFake>, <extrautils2:interactionproxy>, <ore:blockLitherite>], 
	[<ore:blockLitherite>, <ore:gemDiamondFake>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <ore:gemDiamondFake>, <ore:blockLitherite>], 
	[<ore:blockQuartzBlack>, <chisel:energizedvoidstone:6>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <chisel:energizedvoidstone:6>, <ore:blockQuartzBlack>]
]);
//void botanic miner t2
TableCrafting.addShaped(3, <environmentaltech:void_botanic_miner_cont_2>, [
	[<ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <chisel:energizedvoidstone:6>, <ore:blockReinforcedGlass>], 
	[<ore:blockErodium>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <galacticraftplanets:item_basic_asteroids:6>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <galacticraftplanets:item_basic_asteroids:6>, <ore:circuitBasic>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <environmentaltech:mica>, <ore:circuitBasic>, <environmentaltech:void_botanic_miner_cont_1>, <ore:circuitBasic>, <environmentaltech:mica>, <ore:blockErodium>], 
	[<ore:blockErodium>, <extrautils2:interactionproxy>, <galacticraftplanets:item_basic_asteroids:6>, <ore:circuitBasic>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:interactionproxy>, <ore:blockErodium>], 
	[<ore:blockErodium>, <galacticraftplanets:item_basic_asteroids:6>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <galacticraftplanets:item_basic_asteroids:6>, <ore:blockErodium>], 
	[<ore:blockQuartzBlack>, <chisel:energizedvoidstone:6>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <chisel:energizedvoidstone:6>, <ore:blockQuartzBlack>]
]);
//enhanced combustion generator
TableCrafting.addShaped(3, <enderio:block_enhanced_combustion_generator>, [
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <ore:oc:pistonUpgrade>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <enderio:block_combustion_generator>, <ore:itemEnhancedMachineChassi>, <enderio:block_combustion_generator>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <ore:oc:pistonUpgrade>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>]
]);
//enhanced vat
TableCrafting.addShaped(3, <enderio:block_enhanced_vat>, [
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <xreliquary:apothecary_cauldron>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <enderio:block_vat>, <ore:itemEnhancedMachineChassi>, <enderio:block_vat>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <xreliquary:apothecary_cauldron>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>]
]);
//enhanced alloy smelter
TableCrafting.addShaped(3, <enderio:block_enhanced_alloy_smelter>, [
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>], 
	[<ore:ingotUnstable>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:ingotUnstable>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <thermalexpansion:machine>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <enderio:block_alloy_smelter>, <ore:itemEnhancedMachineChassi>, <enderio:block_alloy_smelter>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <thermalexpansion:machine>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:ingotUnstable>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:ingotUnstable>], 
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>]
]);
//enhanced sag mill
TableCrafting.addShaped(3, <enderio:block_enhanced_sag_mill>, [
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>], 
	[<ore:ingotUnstable>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:ingotUnstable>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <thermalexpansion:machine:1>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <enderio:block_sag_mill>, <ore:itemEnhancedMachineChassi>, <enderio:block_sag_mill>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>], 
	[<ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <thermalexpansion:machine:1>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>], 
	[<ore:ingotUnstable>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:gearElectricalSteel>, <ore:plateEndSteel>, <ore:ingotUnstable>], 
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateEndSteel>, <ore:compressed2xDustBedrock>, <ore:plateEndSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>]
]);
//enhanced wired charger
TableCrafting.addShaped(3, <enderio:block_enhanced_wired_charger>, [
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:compressed2xDustBedrock>, <ore:plateElectricalSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <randomthings:spectrecharger:1>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>], 
	[<ore:compressed2xDustBedrock>, <ore:plateElectricalSteel>, <enderio:block_wired_charger>, <ore:itemEnhancedMachineChassi>, <enderio:block_wired_charger>, <ore:plateElectricalSteel>, <ore:compressed2xDustBedrock>], 
	[<ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:gearEndSteel>, <randomthings:spectrecharger:1>, <ore:gearEndSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>], 
	[<ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:gearElectricalSteel>, <ore:plateElectricalSteel>, <ore:ingotUnstable>], 
	[<extendedcrafting:material:10>, <ore:ingotUnstable>, <ore:plateElectricalSteel>, <ore:compressed2xDustBedrock>, <ore:plateElectricalSteel>, <ore:ingotUnstable>, <extendedcrafting:material:10>]
]);
//basic enriching factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 1}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:gearEnrichedGold>, <ore:circuitAdvanced>, <ore:gearEnrichedGold>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:gearEnrichedGold>, <ore:alloyElite>, <silentgems:craftingmaterial:1>, <ore:alloyElite>, <ore:gearEnrichedGold>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <ore:plateEnrichedGold>, <mekanism:machineblock>, <ore:plateEnrichedGold>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:gearEnrichedGold>, <ore:alloyElite>, <silentgems:craftingmaterial:1>, <ore:alloyElite>, <ore:gearEnrichedGold>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:gearEnrichedGold>, <ore:circuitAdvanced>, <ore:gearEnrichedGold>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced enriching factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 1}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:gearEnrichedGold>, <ore:circuitElite>, <ore:gearEnrichedGold>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:gearEnrichedGold>, <ore:alloyUltimate>, <silentgems:craftingmaterial:1>, <ore:alloyUltimate>, <ore:gearEnrichedGold>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:plateEnrichedGold>, <mekanism:machineblock:5>.withTag({recipeType: 1}), <ore:plateEnrichedGold>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:gearEnrichedGold>, <ore:alloyUltimate>, <silentgems:craftingmaterial:1>, <ore:alloyUltimate>, <ore:gearEnrichedGold>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:gearEnrichedGold>, <ore:circuitElite>, <ore:gearEnrichedGold>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic crusher
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 2}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:oc:pistonUpgrade>, <ore:circuitAdvanced>, <ore:oc:pistonUpgrade>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:itemGrindingBallSignalum>, <ore:alloyElite>, <ore:oc:pistonUpgrade>, <ore:alloyElite>, <ore:itemGrindingBallSignalum>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <thermalexpansion:machine:1>, <mekanism:machineblock:3>, <thermalexpansion:machine:1>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:itemGrindingBallSignalum>, <ore:alloyElite>, <ore:oc:pistonUpgrade>, <ore:alloyElite>, <ore:itemGrindingBallSignalum>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:oc:pistonUpgrade>, <ore:circuitAdvanced>, <ore:oc:pistonUpgrade>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced crusher
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 2}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:oc:pistonUpgrade>, <ore:circuitElite>, <ore:oc:pistonUpgrade>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:itemGrindingBallEnderium>, <ore:alloyUltimate>, <ore:oc:pistonUpgrade>, <ore:alloyUltimate>, <ore:itemGrindingBallEnderium>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <thermalexpansion:machine:1>, <mekanism:machineblock:5>.withTag({recipeType: 2}), <thermalexpansion:machine:1>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:itemGrindingBallEnderium>, <ore:alloyUltimate>, <ore:oc:pistonUpgrade>, <ore:alloyUltimate>, <ore:itemGrindingBallEnderium>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:oc:pistonUpgrade>, <ore:circuitElite>, <ore:oc:pistonUpgrade>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic sawing factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 8}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <thermalfoundation:material:657>, <ore:circuitAdvanced>, <thermalfoundation:material:657>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <thermalfoundation:material:657>, <ore:alloyElite>, <thermalfoundation:material:657>, <ore:alloyElite>, <thermalfoundation:material:657>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <thermalexpansion:machine:2>, <mekanism:machineblock2:5>, <thermalexpansion:machine:2>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <thermalfoundation:material:657>, <ore:alloyElite>, <thermalfoundation:material:657>, <ore:alloyElite>, <thermalfoundation:material:657>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <thermalfoundation:material:657>, <ore:circuitAdvanced>, <thermalfoundation:material:657>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced sawing factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 8}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <thermalfoundation:material:657>, <ore:circuitElite>, <thermalfoundation:material:657>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <thermalfoundation:material:657>, <ore:alloyUltimate>, <thermalfoundation:material:657>, <ore:alloyUltimate>, <thermalfoundation:material:657>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <thermalexpansion:machine:2>, <mekanism:machineblock:5>.withTag({recipeType: 8}), <thermalexpansion:machine:2>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <thermalfoundation:material:657>, <ore:alloyUltimate>, <thermalfoundation:material:657>, <ore:alloyUltimate>, <thermalfoundation:material:657>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <thermalfoundation:material:657>, <ore:circuitElite>, <thermalfoundation:material:657>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic infusing factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 7}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:circuitAdvanced>, <ore:plateRedstoneAlloy>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:alloyElite>, <enderio:block_simple_furnace>, <ore:alloyElite>, <ore:plateRedstoneAlloy>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <ore:gearRedstoneAlloy>, <mekanism:machineblock:8>, <ore:gearRedstoneAlloy>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:alloyElite>, <enderio:block_simple_furnace>, <ore:alloyElite>, <ore:plateRedstoneAlloy>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:circuitAdvanced>, <ore:plateRedstoneAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced infusing factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 7}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:plateRedstoneAlloy>, <ore:circuitElite>, <ore:plateRedstoneAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRedstoneAlloy>, <ore:alloyUltimate>, <enderio:block_simple_alloy_smelter>, <ore:alloyUltimate>, <ore:plateRedstoneAlloy>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:gearRedstoneAlloy>, <mekanism:machineblock:5>.withTag({recipeType: 7}), <ore:gearRedstoneAlloy>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRedstoneAlloy>, <ore:alloyUltimate>, <enderio:block_simple_alloy_smelter>, <ore:alloyUltimate>, <ore:plateRedstoneAlloy>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:plateRedstoneAlloy>, <ore:circuitElite>, <ore:plateRedstoneAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic purifying factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 5}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <calculator:purifiedobsidian>, <ore:circuitAdvanced>, <calculator:purifiedobsidian>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:crystalPureFluix>, <ore:alloyElite>, <ore:crystalPureFluix>, <ore:alloyElite>, <ore:crystalPureFluix>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <calculator:purifiedobsidian>, <mekanism:machineblock:9>, <calculator:purifiedobsidian>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:crystalPureFluix>, <ore:alloyElite>, <ore:crystalPureFluix>, <ore:alloyElite>, <ore:crystalPureFluix>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <calculator:purifiedobsidian>, <ore:circuitAdvanced>, <calculator:purifiedobsidian>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced purifying factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 5}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <calculator:purifiedobsidian>, <ore:circuitElite>, <calculator:purifiedobsidian>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:crystalPureFluix>, <ore:alloyUltimate>, <ore:crystalPureFluix>, <ore:alloyUltimate>, <ore:crystalPureFluix>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <calculator:purifiedobsidian>, <mekanism:machineblock:5>.withTag({recipeType: 5}), <calculator:purifiedobsidian>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:crystalPureFluix>, <ore:alloyUltimate>, <ore:crystalPureFluix>, <ore:alloyUltimate>, <ore:crystalPureFluix>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <calculator:purifiedobsidian>, <ore:circuitElite>, <calculator:purifiedobsidian>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic combining factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 4}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateVibrantAlloy>, <ore:circuitAdvanced>, <ore:plateCrystallineAlloy>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:gearVividAlloy>, <ore:alloyElite>, <ore:plateVibrantAlloy>, <ore:alloyElite>, <ore:gearCrystallineAlloy>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <ore:gearVividAlloy>, <mekanism:machineblock:2>, <ore:gearVibrantAlloy>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:gearCrystallineAlloy>, <ore:alloyElite>, <ore:plateVividAlloy>, <ore:alloyElite>, <ore:gearVibrantAlloy>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateCrystallineAlloy>, <ore:circuitAdvanced>, <ore:plateVividAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advacned combining factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 4}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:plateVibrantAlloy>, <ore:circuitElite>, <ore:plateMelodicAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:gearVividAlloy>, <ore:alloyUltimate>, <ore:plateVibrantAlloy>, <ore:alloyUltimate>, <ore:gearMelodicAlloy>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:gearVividAlloy>, <mekanism:machineblock:5>.withTag({recipeType: 4}), <ore:gearVibrantAlloy>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:gearMelodicAlloy>, <ore:alloyUltimate>, <ore:plateVividAlloy>, <ore:alloyUltimate>, <ore:gearVibrantAlloy>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <ore:plateMelodicAlloy>, <ore:circuitElite>, <ore:plateVividAlloy>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//basic compressing factory
TableCrafting.addShaped(3, <mekanism:machineblock:5>.withTag({recipeType: 3}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <forestry:refractory_wax>, <ore:circuitAdvanced>, <forestry:refractory_wax>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:ingotOctine>, <ore:alloyElite>, <ore:ingotOctine>, <ore:alloyElite>, <ore:ingotOctine>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <forestry:refractory_wax>, <mekanism:machineblock:1>, <forestry:refractory_wax>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:ingotOctine>, <ore:alloyElite>, <ore:ingotOctine>, <ore:alloyElite>, <ore:ingotOctine>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <forestry:refractory_wax>, <ore:circuitAdvanced>, <forestry:refractory_wax>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//advanced compressing factory
TableCrafting.addShaped(3, <mekanism:machineblock:6>.withTag({recipeType: 3}), [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <forestry:refractory_wax>, <ore:circuitElite>, <forestry:refractory_wax>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:ingotOctine>, <ore:alloyUltimate>, <ore:ingotOctine>, <ore:alloyUltimate>, <ore:ingotOctine>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <forestry:refractory_wax>, <mekanism:machineblock:5>.withTag({recipeType: 3}), <forestry:refractory_wax>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:ingotOctine>, <ore:alloyUltimate>, <ore:ingotOctine>, <ore:alloyUltimate>, <ore:ingotOctine>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearOsmium>, <forestry:refractory_wax>, <ore:circuitElite>, <forestry:refractory_wax>, <ore:gearOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//Solar T6
TableCrafting.addShaped(3, <solarflux:solar_panel_6>, [
	[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>], 
	[<ore:platePlatinum>, <minecraft:redstone_lamp>, <randomthings:rainbowlamp>, <ore:circuitAdvanced>, <randomthings:rainbowlamp>, <minecraft:redstone_lamp>, <ore:platePlatinum>], 
	[<ore:platePlatinum>, <randomthings:rainbowlamp>, <ore:circuitAdvanced>, <solarflux:solar_panel_5>, <ore:circuitAdvanced>, <randomthings:rainbowlamp>, <ore:platePlatinum>], 
	[<moreplates:end_steel_gear>, <ore:circuitAdvanced>, <solarflux:solar_panel_5>, <bigreactors:blockblutonium>, <solarflux:solar_panel_5>, <ore:circuitAdvanced>, <moreplates:end_steel_gear>], 
	[<ore:platePlatinum>, <randomthings:rainbowlamp>, <ore:circuitAdvanced>, <solarflux:solar_panel_5>, <ore:circuitAdvanced>, <randomthings:rainbowlamp>, <ore:platePlatinum>], 
	[<ore:platePlatinum>, <minecraft:redstone_lamp>, <randomthings:rainbowlamp>, <ore:circuitAdvanced>, <randomthings:rainbowlamp>, <minecraft:redstone_lamp>, <ore:platePlatinum>], 
	[<moreplates:end_steel_gear>, <ore:platePlatinum>, <ore:platePlatinum>, <moreplates:end_steel_gear>, <ore:platePlatinum>, <ore:platePlatinum>, <moreplates:end_steel_gear>]
]);
//Solar T7
TableCrafting.addShaped(3, <solarflux:solar_panel_7>, [
	[<solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>], 
	[<extraplanets:tier7_items:6>, <minecraft:redstone_lamp>, <randomthings:rainbowlamp>, <actuallyadditions:block_crystal_empowered:2>, <randomthings:rainbowlamp>, <minecraft:redstone_lamp>, <extraplanets:tier7_items:6>], 
	[<extraplanets:tier6_items:4>, <randomthings:rainbowlamp>, <ore:circuitElite>, <solarflux:solar_panel_6>, <ore:circuitElite>, <randomthings:rainbowlamp>, <extraplanets:tier6_items:4>], 
	[<extraplanets:tier7_items:6>, <actuallyadditions:block_crystal_empowered:2>, <solarflux:solar_panel_6>, <ore:blockLudicrite>, <solarflux:solar_panel_6>, <actuallyadditions:block_crystal_empowered:2>, <extraplanets:tier7_items:6>], 
	[<extraplanets:tier6_items:4>, <randomthings:rainbowlamp>, <ore:circuitElite>, <solarflux:solar_panel_6>, <ore:circuitElite>, <randomthings:rainbowlamp>, <extraplanets:tier6_items:4>], 
	[<extraplanets:tier7_items:6>, <minecraft:redstone_lamp>, <randomthings:rainbowlamp>, <actuallyadditions:block_crystal_empowered:2>, <randomthings:rainbowlamp>, <minecraft:redstone_lamp>, <extraplanets:tier7_items:6>], 
	[<extraplanets:tier6_items:4>, <extraplanets:tier7_items:6>, <extraplanets:tier6_items:4>, <extraplanets:tier7_items:6>, <extraplanets:tier6_items:4>, <extraplanets:tier7_items:6>, <extraplanets:tier6_items:4>]
]);
//Solar T8
TableCrafting.addShaped(3, <solarflux:solar_panel_8>, [
	[<solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>], 
	[<extraplanets:tier8_items:4>, <ore:blockLudicrite>, <randomthings:rainbowlamp>, <ore:circuitElite>, <randomthings:rainbowlamp>, <ore:blockLudicrite>, <extraplanets:tier8_items:4>], 
	[<silentgems:gemsuper:13>, <randomthings:rainbowlamp>, <ore:circuitElite>, <solarflux:solar_panel_7>, <ore:circuitElite>, <randomthings:rainbowlamp>, <silentgems:gemsuper:13>], 
	[<extraplanets:tier8_items:4>, <ore:circuitElite>, <solarflux:solar_panel_7>, <ore:blockAmber>, <solarflux:solar_panel_7>, <ore:circuitElite>, <extraplanets:tier8_items:4>], 
	[<silentgems:gemsuper:13>, <randomthings:rainbowlamp>, <ore:circuitElite>, <solarflux:solar_panel_7>, <ore:circuitElite>, <randomthings:rainbowlamp>, <silentgems:gemsuper:13>], 
	[<extraplanets:tier8_items:4>, <ore:blockLudicrite>, <randomthings:rainbowlamp>, <ore:circuitElite>, <randomthings:rainbowlamp>, <ore:blockLudicrite>, <extraplanets:tier8_items:4>], 
	[<silentgems:gemsuper:13>, <extraplanets:tier8_items:4>, <silentgems:gemsuper:13>, <extraplanets:tier8_items:4>, <silentgems:gemsuper:13>, <extraplanets:tier8_items:4>, <silentgems:gemsuper:13>]
]);
//T4 Table
TableCrafting.addShaped(3, <extendedcrafting:table_ultimate>, [
	[<extendedcrafting:material:11>, <ore:plateMystic>, <ore:plateMystic>, <draconicevolution:draconic_core>, <ore:plateMystic>, <ore:plateMystic>, <extendedcrafting:material:11>], 
	[<ore:plateMystic>, <extendedcrafting:storage:7>, <draconicevolution:draconic_core>, <extendedcrafting:trimmed:3>, <draconicevolution:draconic_core>, <extendedcrafting:storage:7>, <ore:plateMystic>], 
	[<ore:plateMystic>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <ore:blockJade>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:plateMystic>], 
	[<draconicevolution:draconic_core>, <extendedcrafting:table_basic>, <extendedcrafting:table_advanced>, <extendedcrafting:table_elite>, <extendedcrafting:table_advanced>, <extendedcrafting:table_basic>, <draconicevolution:draconic_core>], 
	[<ore:plateMystic>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <ore:blockJade>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:plateMystic>], 
	[<ore:plateMystic>, <extendedcrafting:storage:7>, <draconicevolution:draconic_core>, <extendedcrafting:trimmed:3>, <draconicevolution:draconic_core>, <extendedcrafting:storage:7>, <ore:plateMystic>], 
	[<extendedcrafting:material:11>, <ore:plateMystic>, <ore:plateMystic>, <draconicevolution:draconic_core>, <ore:plateMystic>, <ore:plateMystic>, <extendedcrafting:material:11>]
]);
//fusion crafting core
TableCrafting.addShaped(3, <draconicevolution:fusion_crafting_core>, [
	[<ore:blockLapis>, <draconicevolution:draconic_core>, <ore:blockEndSteel>, <ore:blockEndSteel>, <ore:blockEndSteel>, <draconicevolution:draconic_core>, <ore:blockLapis>], 
	[<draconicevolution:draconic_core>, <ore:blockQuartzElven>, <tombstone:impregnated_diamond>, <ore:gearDraconium>, <tombstone:impregnated_diamond>, <ore:blockQuartzElven>, <draconicevolution:draconic_core>], 
	[<ore:blockEndSteel>, <tombstone:impregnated_diamond>, <ore:plateDraconium>, <draconicevolution:wyvern_core>, <ore:plateDraconium>, <tombstone:impregnated_diamond>, <ore:blockEndSteel>], 
	[<ore:blockEndSteel>, <ore:gearDraconium>, <draconicevolution:wyvern_core>, <botania:blackholetalisman>, <draconicevolution:wyvern_core>, <ore:gearDraconium>, <ore:blockEndSteel>], 
	[<ore:blockEndSteel>, <tombstone:impregnated_diamond>, <ore:plateDraconium>, <draconicevolution:wyvern_core>, <ore:plateDraconium>, <tombstone:impregnated_diamond>, <ore:blockEndSteel>], 
	[<draconicevolution:draconic_core>, <ore:blockQuartzElven>, <tombstone:impregnated_diamond>, <ore:gearDraconium>, <tombstone:impregnated_diamond>, <ore:blockQuartzElven>, <draconicevolution:draconic_core>], 
	[<ore:blockLapis>, <draconicevolution:draconic_core>, <ore:blockEndSteel>, <ore:blockEndSteel>, <ore:blockEndSteel>, <draconicevolution:draconic_core>, <ore:blockLapis>]
]);
//void ore miner T3
TableCrafting.addShaped(3, <environmentaltech:void_ore_miner_cont_3>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockKyronite>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <lightningcraft:lightning_miner>, <ore:plateOsmiridium>, <lightningcraft:lightning_miner>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <ore:circuitElite>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <ore:plateOsmiridium>, <ore:circuitElite>, <environmentaltech:void_ore_miner_cont_2>, <ore:circuitElite>, <ore:plateOsmiridium>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <ore:circuitElite>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <extrautils2:miner>, <ore:plateOsmiridium>, <extrautils2:miner>, <openblocks:tank>.withTag({tank: {FluidName: "candied_water", Amount: 16000}}), <ore:blockKyronite>], 
	[<overloaded:compressed_obsidian:6>, <actuallyadditions:block_crystal_empowered:3>, <overloaded:compressed_obsidian:6>, <overloaded:compressed_obsidian:6>, <overloaded:compressed_obsidian:6>, <actuallyadditions:block_crystal_empowered:3>, <overloaded:compressed_obsidian:6>]
]);
//void resource miner T3
TableCrafting.addShaped(3, <environmentaltech:void_res_miner_cont_3>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockKyronite>, <aoa3:rammerhead_hide>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <aoa3:rammerhead_hide>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <aoa3:rammerhead_hide>, <ore:circuitAdvanced>, <aoa3:rammerhead_hide>, <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <environmentaltech:mica>, <ore:circuitAdvanced>, <environmentaltech:void_res_miner_cont_2>, <ore:circuitAdvanced>, <environmentaltech:mica>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <aoa3:rammerhead_hide>, <ore:circuitAdvanced>, <aoa3:rammerhead_hide>, <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <aoa3:rammerhead_hide>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <aoa3:rammerhead_hide>, <ore:blockKyronite>], 
	[<ore:blockLonsdaleite>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockLonsdaleite>]
]);
//void botanic miner T3
TableCrafting.addShaped(3, <environmentaltech:void_botanic_miner_cont_3>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockKyronite>, <aoa3:rammerhead_hide>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <aoa3:rammerhead_hide>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <aoa3:rammerhead_hide>, <ore:circuitAdvanced>, <aoa3:rammerhead_hide>, <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <environmentaltech:mica>, <ore:circuitAdvanced>, <environmentaltech:void_botanic_miner_cont_2>, <ore:circuitAdvanced>, <environmentaltech:mica>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <extrautils2:interactionproxy>, <aoa3:rammerhead_hide>, <ore:circuitAdvanced>, <aoa3:rammerhead_hide>, <extrautils2:interactionproxy>, <ore:blockKyronite>], 
	[<ore:blockKyronite>, <aoa3:rammerhead_hide>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <aoa3:rammerhead_hide>, <ore:blockKyronite>], 
	[<ore:blockQuartzBlack>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockQuartzBlack>]
]);
//void ore miner T4
TableCrafting.addShaped(3, <environmentaltech:void_ore_miner_cont_4>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:6>, <lightningcraft:lightning_miner>, <ore:plateOsmiridium>, <lightningcraft:lightning_miner>, <extraplanets:tier7_items:6>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:6>, <ore:circuitElite>, <extraplanets:tier7_items:6>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <ore:plateOsmiridium>, <ore:circuitElite>, <environmentaltech:void_ore_miner_cont_3>, <ore:circuitElite>, <ore:plateOsmiridium>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:6>, <ore:circuitElite>, <extraplanets:tier7_items:6>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:6>, <extrautils2:miner>, <ore:plateOsmiridium>, <extrautils2:miner>, <extraplanets:tier7_items:6>, <ore:blockPladium>], 
	[<overloaded:compressed_obsidian:8>, <actuallyadditions:block_crystal_empowered:3>, <overloaded:compressed_obsidian:8>, <overloaded:compressed_obsidian:8>, <overloaded:compressed_obsidian:8>, <actuallyadditions:block_crystal_empowered:3>, <overloaded:compressed_obsidian:8>]
]);
//void resource miner T4
TableCrafting.addShaped(3, <environmentaltech:void_res_miner_cont_4>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:4>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <extraplanets:tier7_items:4>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:4>, <ore:circuitAdvanced>, <extraplanets:tier7_items:4>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <environmentaltech:mica>, <ore:circuitAdvanced>, <environmentaltech:void_res_miner_cont_3>, <ore:circuitAdvanced>, <environmentaltech:mica>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:4>, <ore:circuitAdvanced>, <extraplanets:tier7_items:4>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:4>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <extraplanets:tier7_items:4>, <ore:blockPladium>], 
	[<ore:blockLonsdaleite>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <ore:blockLonsdaleite>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockLonsdaleite>]
]);
//void botanic miner T4
TableCrafting.addShaped(3, <environmentaltech:void_botanic_miner_cont_4>, [
	[<ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <ore:blockReinforcedGlass>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockReinforcedGlass>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:4>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <extraplanets:tier7_items:4>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:4>, <ore:circuitAdvanced>, <extraplanets:tier7_items:4>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <environmentaltech:mica>, <ore:circuitAdvanced>, <environmentaltech:void_botanic_miner_cont_3>, <ore:circuitAdvanced>, <environmentaltech:mica>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extrautils2:interactionproxy>, <extraplanets:tier7_items:4>, <ore:circuitAdvanced>, <extraplanets:tier7_items:4>, <extrautils2:interactionproxy>, <ore:blockPladium>], 
	[<ore:blockPladium>, <extraplanets:tier7_items:4>, <extrautils2:miner>, <environmentaltech:mica>, <extrautils2:miner>, <extraplanets:tier7_items:4>, <ore:blockPladium>], 
	[<ore:blockQuartzBlack>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <ore:blockQuartzBlack>, <actuallyadditions:block_crystal_empowered:3>, <ore:blockQuartzBlack>]
]);
//advanced mutatron
TableCrafting.addShaped(3, <gendustry:mutatron_advanced>, [
	[<ore:gearBronze>, <ore:gearBronze>, <appliedenergistics2:part:76>, <gendustry:genetics_processor>, <appliedenergistics2:part:76>, <ore:gearBronze>, <ore:gearBronze>], 
	[<ore:gearBronze>, <appliedenergistics2:part:76>, <appliedenergistics2:part:76>, <gendustry:genetics_processor>, <appliedenergistics2:part:76>, <appliedenergistics2:part:76>, <ore:gearBronze>], 
	[<ore:plateBronze>, <gendustry:genetics_processor>, <ore:circuitElite>, <ore:circuitElite>, <ore:circuitElite>, <gendustry:genetics_processor>, <ore:plateBronze>], 
	[<gendustry:genetics_processor>, <gendustry:genetics_processor>, <ore:circuitElite>, <gendustry:mutatron>, <ore:circuitElite>, <gendustry:genetics_processor>, <gendustry:genetics_processor>], 
	[<ore:plateBronze>, <gendustry:genetics_processor>, <ore:circuitElite>, <ore:circuitElite>, <ore:circuitElite>, <gendustry:genetics_processor>, <ore:plateBronze>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:power_module>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:gearBronze>, <ore:gearBronze>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:power_module>, <ore:gearBronze>, <ore:gearBronze>]
]);
//T9 solar
TableCrafting.addShaped(3, <solarflux:solar_panel_wyvern>, [
	[<ore:plateSupremium>, <ore:plateSupremium>, <ore:plateSupremium>, <ore:plateSupremium>, <ore:plateSupremium>, <ore:plateSupremium>, <ore:plateSupremium>], 
	[<ore:plateDraconium>, <draconicevolution:wyvern_energy_core>, <actuallyadditions:block_crystal_empowered:4>, <draconicevolution:wyvern_core>, <actuallyadditions:block_crystal_empowered:4>, <draconicevolution:wyvern_energy_core>, <ore:plateDraconium>], 
	[<silentgems:chaosgem:37>, <actuallyadditions:block_crystal_empowered:4>, <ore:circuitUltimate>, <draconicevolution:wyvern_energy_core>, <ore:circuitUltimate>, <actuallyadditions:block_crystal_empowered:4>, <silentgems:chaosgem:37>], 
	[<ore:plateDraconium>, <draconicevolution:wyvern_core>, <solarflux:solar_panel_8>, <ore:blockDraconium>, <solarflux:solar_panel_8>, <draconicevolution:wyvern_core>, <ore:plateDraconium>], 
	[<silentgems:chaosgem:37>, <actuallyadditions:block_crystal_empowered:4>, <ore:circuitUltimate>, <draconicevolution:wyvern_energy_core>, <ore:circuitUltimate>, <actuallyadditions:block_crystal_empowered:4>, <silentgems:chaosgem:37>], 
	[<ore:plateDraconium>, <draconicevolution:wyvern_energy_core>, <actuallyadditions:block_crystal_empowered:4>, <draconicevolution:wyvern_core>, <actuallyadditions:block_crystal_empowered:4>, <draconicevolution:wyvern_energy_core>, <ore:plateDraconium>], 
	[<silentgems:chaosgem:37>, <ore:plateDraconium>, <silentgems:chaosgem:37>, <ore:plateDraconium>, <silentgems:chaosgem:37>, <ore:plateDraconium>, <silentgems:chaosgem:37>]
]);
//electrolytic separator
TableCrafting.addShaped(3,<mekanism:machineblock2:4>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <mekanism:electrolyticcore>, <ore:circuitAdvanced>, <mekanism:electrolyticcore>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <mekanism:electrolyticcore>, <ore:alloyElite>, <calculator:material:9>, <ore:alloyElite>, <mekanism:electrolyticcore>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <calculator:material:9>, <mekanism:basicblock:8>, <calculator:material:9>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <mekanism:electrolyticcore>, <ore:alloyElite>, <calculator:material:9>, <ore:alloyElite>, <mekanism:electrolyticcore>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <mekanism:electrolyticcore>, <ore:circuitAdvanced>, <mekanism:electrolyticcore>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//rotary condensentrator
TableCrafting.addShaped(3, <mekanism:machineblock2>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <mekanism:basicblock:10>, <ore:circuitAdvanced>, <mekanism:basicblock:10>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <mekanism:basicblock:10>, <ore:alloyElite>, <ore:battery>, <ore:alloyElite>, <mekanism:basicblock:10>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <mekanism:gastank>.withTag({tier: 0}), <mekanism:basicblock:8>, <mekanism:machineblock2:11>.withTag({tier: 0}), <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <mekanism:basicblock:10>, <ore:alloyElite>, <ore:battery>, <ore:alloyElite>, <mekanism:basicblock:10>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <mekanism:basicblock:10>, <ore:circuitAdvanced>, <mekanism:basicblock:10>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical crystallizer
TableCrafting.addShaped(3, <mekanism:machineblock2:8>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <ore:shardSyrmorite>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:shardSyrmorite>, <mekanism:basicblock:8>, <ore:shardSyrmorite>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <ore:shardSyrmorite>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical washer
TableCrafting.addShaped(3, <mekanism:machineblock2:7>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <mekanism:machineblock2:11>.withTag({tier: 2}), <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <mekanism:gastank>.withTag({tier: 2}), <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical dissolution chamber
TableCrafting.addShaped(3, <mekanism:machineblock2:6>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <mekanism:gastank>.withTag({tier: 2}), <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>, <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <mekanism:gastank>.withTag({tier: 2}), <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical injection chamber
TableCrafting.addShaped(3, <mekanism:machineblock2:3>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateEnrichedGold>, <ore:circuitAdvanced>, <ore:plateEnrichedGold>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:platePlatinum>, <ore:plateEnrichedGold>, <ore:alloyElite>, <mekanism:gastank>.withTag({tier: 1}), <ore:alloyElite>, <ore:plateEnrichedGold>, <ore:platePlatinum>], 
	[<ore:gearOsmium>, <ore:circuitAdvanced>, <ore:circuitAdvanced>, <mekanism:basicblock:8>, <ore:circuitAdvanced>, <ore:circuitAdvanced>, <ore:gearOsmium>], 
	[<ore:platePlatinum>, <ore:plateEnrichedGold>, <ore:alloyElite>, <mekanism:gastank>.withTag({tier: 1}), <ore:alloyElite>, <ore:plateEnrichedGold>, <ore:platePlatinum>], 
	[<ore:plateOsmium>, <ore:platePlatinum>, <ore:plateEnrichedGold>, <ore:circuitAdvanced>, <ore:plateEnrichedGold>, <ore:platePlatinum>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:platePlatinum>, <ore:gearOsmium>, <ore:platePlatinum>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical infuser
TableCrafting.addShaped(3, <mekanism:machineblock2:2>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <mekanism:gastank>.withTag({tier: 2}), <mekanism:basicblock:8>, <mekanism:gastank>.withTag({tier: 2}), <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//chemical oxidizer
TableCrafting.addShaped(3, <mekanism:machineblock2:1>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <extrautils2:minichest>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <mekanism:machineblock2:11>.withTag({tier: 2}), <mekanism:basicblock:8>, <mekanism:gastank>.withTag({tier: 2}), <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <extrautils2:minichest>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearRefinedObsidian>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearRefinedObsidian>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//pressurized reaction chamber
TableCrafting.addShaped(3, <mekanism:machineblock2:10>, [
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:gearElectricalSteel>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearElectricalSteel>, <ore:plateOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <extrautils2:minichest>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:gearOsmium>, <ore:circuitElite>, <mekanism:machineblock2:11>.withTag({tier: 2}), <mekanism:basicblock:8>, <mekanism:gastank>.withTag({tier: 2}), <ore:circuitElite>, <ore:gearOsmium>], 
	[<ore:ingotShyrestone>, <ore:plateRefinedObsidian>, <ore:alloyUltimate>, <extrautils2:minichest>, <ore:alloyUltimate>, <ore:plateRefinedObsidian>, <ore:ingotShyrestone>], 
	[<ore:plateOsmium>, <ore:gearElectricalSteel>, <ore:plateRefinedObsidian>, <ore:circuitElite>, <ore:plateRefinedObsidian>, <ore:gearElectricalSteel>, <ore:plateOsmium>], 
	[<ore:plateOsmium>, <ore:plateOsmium>, <ore:ingotShyrestone>, <ore:gearOsmium>, <ore:ingotShyrestone>, <ore:plateOsmium>, <ore:plateOsmium>]
]);
//genetic replicator
TableCrafting.addShaped(3, <gendustry:replicator>, [
	[<ore:plateBronze>, <ore:gearBronze>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:power_module>, <ore:gearBronze>, <ore:plateBronze>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:power_module>, <ore:gearBronze>], 
	[<gendustry:power_module>, <gendustry:genetics_processor>, <openblocks:tank>.withTag({tank: {FluidName: "binnie.dna.raw", Amount: 16000}}), <ore:circuitElite>, <openblocks:tank>.withTag({tank: {FluidName: "binnie.dna.raw", Amount: 16000}}), <gendustry:genetics_processor>, <gendustry:power_module>], 
	[<gendustry:genetics_processor>, <gendustry:genetics_processor>, <ore:circuitElite>, <rftools:machine_frame>, <ore:circuitElite>, <gendustry:genetics_processor>, <gendustry:genetics_processor>], 
	[<gendustry:power_module>, <gendustry:genetics_processor>, <openblocks:tank>.withTag({tank: {FluidName: "binnie.dna.raw", Amount: 16000}}), <ore:circuitElite>, <openblocks:tank>.withTag({tank: {FluidName: "binnie.dna.raw", Amount: 16000}}), <gendustry:genetics_processor>, <gendustry:power_module>], 
	[<ore:gearBronze>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:genetics_processor>, <gendustry:power_module>, <ore:gearBronze>], 
	[<ore:plateBronze>, <ore:gearBronze>, <gendustry:power_module>, <gendustry:genetics_processor>, <gendustry:power_module>, <ore:gearBronze>, <ore:plateBronze>]
]);
//splicer
TableCrafting.addShaped(3, <genetics:adv_machine>, [
	[<ore:boneWitheredBlazed>, <ore:gearBronze>, <genetics:misc:9>, <ore:plateEnrichedGold>, <genetics:misc:9>, <ore:gearBronze>, <ore:boneWitheredBlazed>], 
	[<ore:gearBronze>, <genetics:misc:9>, <ore:gearDiamatineEmpowered>, <ore:circuitElite>, <ore:gearDiamatineEmpowered>, <genetics:misc:9>, <ore:gearBronze>], 
	[<genetics:misc:9>, <ore:gearDiamatineEmpowered>, <genetics:misc:10>, <ore:circuitElite>, <genetics:misc:10>, <ore:gearDiamatineEmpowered>, <genetics:misc:9>], 
	[<ore:plateEnrichedGold>, <ore:circuitElite>, <ore:circuitElite>, <genetics:machine:3>, <ore:circuitElite>, <ore:circuitElite>, <ore:plateEnrichedGold>], 
	[<genetics:misc:9>, <ore:gearDiamatineEmpowered>, <genetics:misc:10>, <ore:circuitElite>, <genetics:misc:10>, <ore:gearDiamatineEmpowered>, <genetics:misc:9>], 
	[<ore:gearBronze>, <genetics:misc:9>, <ore:gearDiamatineEmpowered>, <ore:circuitElite>, <ore:gearDiamatineEmpowered>, <genetics:misc:9>, <ore:gearBronze>], 
	[<ore:boneWitheredBlazed>, <ore:gearBronze>, <genetics:misc:9>, <ore:plateEnrichedGold>, <genetics:misc:9>, <ore:gearBronze>, <ore:boneWitheredBlazed>]
]);
//crafter tier 3
TableCrafting.addShaped(3, <rftools:crafter3>, [
	[<ore:blockDraconium>, <extraplanets:module_items:2>, <extrabees:misc>, <ore:gearDraconium>, <extrabees:misc>, <extraplanets:module_items:2>, <ore:blockDraconium>], 
	[<extraplanets:module_items:2>, <artisanautomation:upgrade_speed>, <calculator:atomicassembly>, <calculator:atomicassembly>, <calculator:atomicassembly>, <artisanautomation:upgrade_speed>, <extraplanets:module_items:2>], 
	[<extrabees:misc>, <calculator:atomicassembly>, <ore:gearEmeradicEmpowered>, <ore:skullGuardianDiode>, <ore:gearDiamatineEmpowered>, <calculator:atomicassembly>, <extrabees:misc>], 
	[<ore:gearDraconium>, <calculator:atomicassembly>, <appliedenergistics2:molecular_assembler>, <ore:itemSoulMachineChassi>, <appliedenergistics2:molecular_assembler>, <calculator:atomicassembly>, <ore:gearDraconium>], 
	[<extrabees:misc>, <calculator:atomicassembly>, <ore:gearDiamatineEmpowered>, <enderio:item_capacitor_totemic>, <ore:gearEmeradicEmpowered>, <calculator:atomicassembly>, <extrabees:misc>], 
	[<extraplanets:module_items:2>, <artisanautomation:upgrade_speed>, <calculator:atomicassembly>, <calculator:atomicassembly>, <calculator:atomicassembly>, <artisanautomation:upgrade_speed>, <extraplanets:module_items:2>], 
	[<ore:blockDraconium>, <extraplanets:module_items:2>, <extrabees:misc>, <ore:gearDraconium>, <extrabees:misc>, <extraplanets:module_items:2>, <ore:blockDraconium>]
]);