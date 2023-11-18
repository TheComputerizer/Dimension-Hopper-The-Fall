#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.avaritia.ExtremeCrafting;

recipes.addShapeless("xtremecrafting",<avaritia:extreme_crafting_table>,[<extendedcrafting:table_ultimate>,<avaritia:resource:5>]);

ExtremeCrafting.remove(<avaritia:neutron_collector>);
ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
ExtremeCrafting.remove(<avaritia:resource:5>);
ExtremeCrafting.remove(<avaritia:resource:6>);
ExtremeCrafting.remove(<solarflux:solar_panel_neutronium>);
ExtremeCrafting.remove(<solarflux:solar_panel_infinity>);
ExtremeCrafting.remove(<rftools:powercell_creative>);
ExtremeCrafting.remove(<extrautils2:creativeenergy>);
ExtremeCrafting.remove(<extrautils2:spike_creative>);
ExtremeCrafting.remove(<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}));
ExtremeCrafting.remove(<appliedenergistics2:creative_energy_cell>);
ExtremeCrafting.remove(<draconicevolution:creative_rf_source>);
ExtremeCrafting.remove(<avaritia:endest_pearl>);
ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
ExtremeCrafting.remove(<avaritia:ultimate_stew>);
ExtremeCrafting.remove(<avaritia:infinity_helmet>);
ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
ExtremeCrafting.remove(<avaritia:infinity_pants>);
ExtremeCrafting.remove(<avaritia:infinity_boots>);

ExtremeCrafting.addShaped("infinityingot",<avaritia:resource:6>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[<psi:material:3>, <ore:gaiaIngot>, <ore:ingotStellarAlloy>, <naturesaura:sky_ingot>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>, <aoa3:shyrestone_ingot>, <ore:ingotEvilMetal>, <ore:ingotOsgloglas>], 
	[<blue_skies:pyrope_block>, <gaiadimension:benitoite>, <avaritia:resource:5>, <gaiadimension:ixiolite>, <avaritia:resource:5>, <gaiadimension:diopside>, <avaritia:resource:5>, <gaiadimension:chalcedony>, <blue_skies:moonstone_block>], 
	[<ore:blockPositite>, <avaritia:resource:5>, <blue_skies:ventium_ingot>, <avaritia:resource:5>, <projectex:matter:11>, <avaritia:resource:5>, <blue_skies:falsite_ingot>, <avaritia:resource:5>, <ore:blockNegatite>], 
	[<blue_skies:turquoise_block>, <gaiadimension:proustite>, <avaritia:resource:5>, <gaiadimension:carnelian>, <avaritia:resource:5>, <gaiadimension:leucite>, <avaritia:resource:5>, <gaiadimension:euclase>, <ore:blockNecrum>], 
	[<ore:ingotOctine>, <ore:ingotZollernium>, <ore:ingotReinforcedObsidian>, <ore:ingotDarkIron>, <extendedcrafting:material:48>, <ore:ingotDraconiumAwakened>, <ore:ingotInsanium>, <ore:ingotMystic>, <psi:material:4>], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

ExtremeCrafting.addShaped("bedrockbreaker",<bedrockcraft:bedrock_breaker>, [
	[<projectex:matter:11>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <projectex:matter:11>], 
	[<silentgems:miscblock:4>, <projectex:matter:11>, <overloaded:compressed_obsidian:15>, <overloaded:compressed_obsidian:15>, <avaritia:endest_pearl>, <overloaded:compressed_obsidian:15>, <overloaded:compressed_obsidian:15>, <projectex:matter:11>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <overloaded:compressed_obsidian:15>, <projectex:matter:11>, <actuallyadditions:block_crystal_empowered:4>, <avaritia:endest_pearl>, <actuallyadditions:block_crystal_empowered:4>, <projectex:matter:11>, <overloaded:compressed_obsidian:15>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <overloaded:compressed_obsidian:15>, <actuallyadditions:block_crystal_empowered:4>, <projectex:matter:11>, <avaritia:infinity_shovel>, <projectex:matter:11>, <actuallyadditions:block_crystal_empowered:4>, <overloaded:compressed_obsidian:15>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:infinity_hoe>, <contenttweaker:dimensional_singularity>, <avaritia:infinity_pickaxe>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <overloaded:compressed_obsidian:15>, <actuallyadditions:block_crystal_empowered:4>, <projectex:matter:11>, <avaritia:infinity_axe>, <projectex:matter:11>, <actuallyadditions:block_crystal_empowered:4>, <overloaded:compressed_obsidian:15>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <overloaded:compressed_obsidian:15>, <projectex:matter:11>, <actuallyadditions:block_crystal_empowered:4>, <avaritia:endest_pearl>, <actuallyadditions:block_crystal_empowered:4>, <projectex:matter:11>, <overloaded:compressed_obsidian:15>, <silentgems:miscblock:4>], 
	[<silentgems:miscblock:4>, <projectex:matter:11>, <overloaded:compressed_obsidian:15>, <overloaded:compressed_obsidian:15>, <avaritia:endest_pearl>, <overloaded:compressed_obsidian:15>, <overloaded:compressed_obsidian:15>, <projectex:matter:11>, <silentgems:miscblock:4>], 
	[<projectex:matter:11>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <silentgems:miscblock:4>, <projectex:matter:11>]
]);

ExtremeCrafting.addShaped("neutroniumsolar",<solarflux:solar_panel_neutronium>, [
	[<ore:circuitUltimate>, <ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>, <ore:circuitUltimate>], 
	[<ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotUltimate>, <solarflux:solar_panel_chaotic>, <ore:ingotUltimate>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <solarflux:solar_panel_chaotic>, <ore:nuggetCosmicNeutronium>, <solarflux:solar_panel_chaotic>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotUltimate>, <solarflux:solar_panel_chaotic>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <solarflux:solar_panel_chaotic>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>], 
	[<ore:circuitUltimate>, <solarflux:solar_panel_chaotic>, <ore:nuggetCosmicNeutronium>, <avaritia:resource:2>, <avaritia:resource:5>, <avaritia:resource:2>, <ore:nuggetCosmicNeutronium>, <solarflux:solar_panel_chaotic>, <ore:circuitUltimate>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotUltimate>, <solarflux:solar_panel_chaotic>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <solarflux:solar_panel_chaotic>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <solarflux:solar_panel_chaotic>, <ore:nuggetCosmicNeutronium>, <solarflux:solar_panel_chaotic>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotUltimate>, <solarflux:solar_panel_chaotic>, <ore:ingotUltimate>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>], 
	[<ore:circuitUltimate>, <ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:circuitUltimate>, <ore:circuitUltimate>]
]);

ExtremeCrafting.addShaped("infinitysolar",<solarflux:solar_panel_infinity>, [
	[<ore:gearInfinity>, <ore:blockUltimate>, <ore:plateInfinity>, <ore:plateInfinity>, <ore:gearInfinity>, <ore:plateInfinity>, <ore:plateInfinity>, <ore:blockUltimate>, <ore:gearInfinity>], 
	[<ore:blockUltimate>, <ore:plateInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotUltimate>, <solarflux:solar_panel_neutronium>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>, <ore:plateInfinity>, <ore:blockUltimate>], 
	[<ore:plateInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <solarflux:solar_panel_neutronium>, <avaritiatweaks:enhancement_crystal>, <solarflux:solar_panel_neutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:plateInfinity>], 
	[<ore:plateInfinity>, <ore:ingotUltimate>, <solarflux:solar_panel_neutronium>, <ore:nuggetUltimate>, <ore:nuggetUltimate>, <ore:nuggetUltimate>, <solarflux:solar_panel_neutronium>, <ore:ingotUltimate>, <ore:plateInfinity>], 
	[<ore:gearInfinity>, <solarflux:solar_panel_neutronium>, <avaritiatweaks:enhancement_crystal>, <ore:nuggetUltimate>, <ore:blockInfinity>, <ore:nuggetUltimate>, <avaritiatweaks:enhancement_crystal>, <solarflux:solar_panel_neutronium>, <ore:gearInfinity>], 
	[<ore:plateInfinity>, <ore:ingotUltimate>, <solarflux:solar_panel_neutronium>, <ore:nuggetUltimate>, <ore:nuggetUltimate>, <ore:nuggetUltimate>, <solarflux:solar_panel_neutronium>, <ore:ingotUltimate>, <ore:plateInfinity>], 
	[<ore:plateInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <solarflux:solar_panel_neutronium>, <avaritiatweaks:enhancement_crystal>, <solarflux:solar_panel_neutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:plateInfinity>], 
	[<ore:blockUltimate>, <ore:plateInfinity>, <ore:ingotCosmicNeutronium>, <ore:ingotUltimate>, <solarflux:solar_panel_neutronium>, <ore:ingotUltimate>, <ore:ingotCosmicNeutronium>, <ore:plateInfinity>, <ore:blockUltimate>], 
	[<ore:gearInfinity>, <ore:blockUltimate>, <ore:plateInfinity>, <ore:plateInfinity>, <ore:gearInfinity>, <ore:plateInfinity>, <ore:plateInfinity>, <ore:blockUltimate>, <ore:gearInfinity>]
]);

ExtremeCrafting.addShaped("creativefluidtank", <mekanism:machineblock2:11>.withTag({tier: 4}), [
	[<contenttweaker:heart_of_the_machine_god>, <silentgems:miscblock:2>, <mekanism:gaugedropper>, <mekanism:machineblock2:11>.withTag({tier: 3}), <ore:blockInfinity>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:gaugedropper>, <silentgems:miscblock:2>, <contenttweaker:heart_of_the_machine_god>], 
	[<mekanism:basicblock:8>, <silentgems:miscblock:2>, <mekanismgenerators:reactorglass>, <moreplanets:red_tinted_glass>, <ore:circuitUltimate>, <moreplanets:gray_tinted_glass>, <mekanismgenerators:reactorglass>, <silentgems:miscblock:2>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <contenttweaker:rocket_block_10>, <extendedcrafting:singularity_ultimate>, <moreplanets:orange_tinted_glass>, <ore:circuitUltimate>, <moreplanets:silver_tinted_glass>, <extendedcrafting:singularity_ultimate>, <contenttweaker:rocket_block_10>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <silentgems:miscblock:2>, <mekanismgenerators:reactorglass>, <moreplanets:magenta_tinted_glass>, <aeadditions:storage.component:3>, <moreplanets:cyan_tinted_glass>, <mekanismgenerators:reactorglass>, <silentgems:miscblock:2>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <contenttweaker:rocket_block_10>, <extendedcrafting:singularity_ultimate>, <moreplanets:light_blue_tinted_glass>, <aeadditions:storage.component:3>, <moreplanets:purple_tinted_glass>, <extendedcrafting:singularity_ultimate>, <contenttweaker:rocket_block_10>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <silentgems:miscblock:2>, <mekanismgenerators:reactorglass>, <moreplanets:yellow_tinted_glass>, <aeadditions:storage.component:3>, <moreplanets:blue_tinted_glass>, <mekanismgenerators:reactorglass>, <silentgems:miscblock:2>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <contenttweaker:rocket_block_10>, <extendedcrafting:singularity_ultimate>, <moreplanets:lime_tinted_glass>, <ore:circuitUltimate>, <moreplanets:brown_tinted_glass>, <extendedcrafting:singularity_ultimate>, <contenttweaker:rocket_block_10>, <mekanism:basicblock:8>], 
	[<mekanism:basicblock:8>, <silentgems:miscblock:2>, <mekanismgenerators:reactorglass>, <moreplanets:pink_tinted_glass>, <ore:circuitUltimate>, <moreplanets:green_tinted_glass>, <mekanismgenerators:reactorglass>, <silentgems:miscblock:2>, <mekanism:basicblock:8>], 
	[<contenttweaker:heart_of_the_machine_god>, <silentgems:miscblock:2>, <mekanism:gaugedropper>, <mekanism:machineblock2:11>.withTag({tier: 3}), <ore:blockInfinity>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:gaugedropper>, <silentgems:miscblock:2>, <contenttweaker:heart_of_the_machine_god>]
]);

ExtremeCrafting.addShaped("creativemanatablet", <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [
	[<ore:runeEnvyB>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:runeGluttonyB>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, null], 
	[<ore:ingotInfinity>, <botania:pool:3>, <botania:pool:3>, <botania:infinitefruit>, <avaritiatweaks:gaia_block>, <botania:kingkey>, <botania:pool:3>, <botania:pool:3>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <botania:pool:3>, <botania:storage:1>, <botania:storage:1>, <botania:flugeleye>, <botania:storage:1>, <botania:storage:1>, <botania:pool:3>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <botania:odinring>, <botania:storage:1>, <botania:spawnermover>, <botania:manamirror>, <botania:spawnermover>, <botania:storage:1>, <botania:thorring>, <ore:ingotInfinity>], 
	[<ore:runeLustB>, <botania:storage:1>, <botania:storage:1>, <botania:manamirror>, <botania:manatablet>, <botania:manamirror>, <botania:storage:1>, <botania:storage:1>, <ore:runePrideB>], 
	[<ore:ingotInfinity>, <botania:dice>, <botania:storage:1>, <botania:spawnermover>, <botania:manamirror>, <botania:spawnermover>, <botania:storage:1>, <botania:dice>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <botania:pool:3>, <botania:storage:1>, <botania:storage:1>, <botania:storage:1>, <botania:storage:1>, <botania:storage:1>, <botania:pool:3>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <botania:pool:3>, <botania:pool:3>, <botania:dice>, <botania:storage:1>, <botania:dice>, <botania:pool:3>, <botania:pool:3>, <ore:ingotInfinity>], 
	[<ore:runeWrathB>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:runeGreedB>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:runeSlothB>]
]);

ExtremeCrafting.addShaped("infinityhelmet",<avaritia:infinity_helmet>, [
	[null, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, <contenttweaker:armor_core_8>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <moreplates:infinity_gear>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, null, <moreplates:infinity_plate>, null, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);

ExtremeCrafting.addShaped("infinitychestplate",<avaritia:infinity_chestplate>, [
	[null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null],
	[<moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <avaritia:block_resource:2>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <avaritia:block_resource:2>, <contenttweaker:armor_core_8>, <avaritia:block_resource:2>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <avaritia:block_resource:2>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, null]
]);

ExtremeCrafting.addShaped("infinitypants",<avaritia:infinity_pants>, [
	[<moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:infinity_gear>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <contenttweaker:armor_core_8>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:infinity_gear>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <avaritia:block_resource:2>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <avaritia:block_resource:2>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, null, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>]
]);

ExtremeCrafting.addShaped("infinityboots",<avaritia:infinity_boots>, [
	[null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null, <moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>, null],
	[<moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <moreplates:infinity_gear>, <moreplates:neutronium_gear>, <contenttweaker:armor_core_8>, <moreplates:neutronium_gear>, <moreplates:infinity_gear>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:infinity_plate>, <moreplates:infinity_gear>, <moreplates:neutronium_plate>, null, <moreplates:neutronium_plate>, <moreplates:infinity_gear>, <moreplates:infinity_plate>, <moreplates:neutronium_plate>],
	[<moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, null, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);