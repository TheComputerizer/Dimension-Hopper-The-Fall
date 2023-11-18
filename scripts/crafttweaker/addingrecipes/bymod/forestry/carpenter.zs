#reloadable

import mods.forestry.Carpenter;

Carpenter.removeRecipe(<genetics:geneticdatabase>);

Carpenter.addRecipe(<gendustry:sampler>, 
[[<thermalfoundation:material:291>, <gendustry:genetics_processor>, <thermalfoundation:material:291>],
[<gendustry:bee_receptacle>, <forestry:sturdy_machine>, <gendustry:labware>],
[<thermalfoundation:material:291>, <gendustry:power_module>, <thermalfoundation:material:291>]], 30, <liquid:mutagen> * 10000);

Carpenter.addRecipe(<gendustry:gene_template>, 
[[<calculator:redstoneingot>, <thermalfoundation:material:321>, <calculator:redstoneingot>],
[<thermalfoundation:material:321>, <moreplates:empowered_diamatine_plate>, <thermalfoundation:material:321>],
[<calculator:redstoneingot>, <thermalfoundation:material:321>, <calculator:redstoneingot>]], 30, <liquid:mutagen> * 1000);

Carpenter.addRecipe(<portalgun:item_portalgun>, 
[[<tp:reinforced_obsidian_ingot>, <dimdoors:stable_fabric>, <silentgems:craftingmaterial:30>],
[<dimdoors:stable_fabric>, <portalgun:item_miniature_black_hole>, <dimdoors:stable_fabric>],
[<silentgems:craftingmaterial:30>, <dimdoors:stable_fabric>, <tp:reinforced_obsidian_ingot>]], 60, <liquid:enderium>*4608);

Carpenter.addRecipe(<extratrees:machine:4>, 
[[<moreplates:pulsating_iron_plate>, <thermalfoundation:glass:1>, <moreplates:pulsating_iron_plate>],
[<extratrees:food:34>, <forestry:sturdy_machine>, <extratrees:food:34>],
[<thermalfoundation:material:321>, <thermalfoundation:material:291>, <thermalfoundation:material:321>]], 30, <liquid:liquiddna>*2000);

Carpenter.addRecipe(<genetics:geneticdatabase>, 
[[<moreplates:empowered_diamatine_plate>, <aether:scatterglass_pane>, <moreplates:empowered_diamatine_plate>],
[<moreplates:empowered_diamatine_plate>, <tp:reinforced_obsidian>, <moreplates:empowered_diamatine_plate>],
[<gendustry:gene_template>, <extendedcrafting:material:48>, <gendustry:gene_template>]], 30, <liquid:mutagen> * 5000);

Carpenter.addRecipe(<genetics:misc:4>, 
[[<naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"})],
[<naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <xreliquary:mob_ingredient:9>, <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"})],
[<naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"}), <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"})]], 5);

Carpenter.addRecipe(<genetics:misc:8>, 
[[<actuallyadditions:item_crystal_empowered:1>, null, <enderio:block_holier_fog>],
[null, <forestry:chipsets:3>.withTag({T: 3 as short}), null],
[<enderio:block_holier_fog>, null, <actuallyadditions:item_crystal_empowered:1>]], 10, <liquid:latex> * 250);

Carpenter.addRecipe(<genetics:misc:9>, 
[[<genetics:misc:8>, <genetics:misc:8>, <genetics:misc:8>],
[<genetics:misc:8>, <calculator:enddiamond>, <genetics:misc:8>],
[<genetics:misc:8>, <genetics:misc:8>, <genetics:misc:8>]], 30, <liquid:latex> * 1000);

Carpenter.addRecipe(<genetics:lab_machine:1>, 
[[<aether:scatterglass_pane>, <forestry:portable_alyzer>, <aether:scatterglass_pane>],
[<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
[<genetics:misc:1>, <thermalfoundation:material:291>, <genetics:misc:1>]], 60, <liquid:latex> * 2000);

Carpenter.addRecipe(<genetics:lab_machine:2>, 
[[<aether:scatterglass_pane>, <calculator:reinforcedfurnace>, <aether:scatterglass_pane>],
[<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
[<moreplates:electrical_steel_gear>, <thermalfoundation:material:291>, <moreplates:electrical_steel_gear>]], 60, <liquid:latex> * 2000);

Carpenter.addRecipe(<genetics:lab_machine:3>, 
[[<aether:scatterglass_pane>, <thermalfoundation:material:291>, <aether:scatterglass_pane>],
[<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
[<aether:scatterglass>, <thermalfoundation:material:291>, <aether:scatterglass>]], 60, <liquid:latex> * 2000);

Carpenter.addRecipe(<genetics:lab_machine:4>, 
[[<aether:scatterglass_pane>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <aether:scatterglass_pane>],
[<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
[<thermalexpansion:florb>.withTag({Fluid: "water"}), <thermalfoundation:material:291>, <thermalexpansion:florb>.withTag({Fluid: "water"})]], 60, <liquid:latex> * 2000);