#reloadable

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static recipeHolders as Holder[] = [
  //aeadditions
  Util.simpleShaped(<aeadditions:storage.component:7>, "me", [
    <appliedenergistics2:material:22>,
    <galacticraftcore:oil_canister_partial:1001>,
    <appliedenergistics2:material:10>,
    <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //1k me gas storage component
    
  Util.simpleShaped(<aeadditions:storage.component:8>, "me", [
    <appliedenergistics2:material:22>,
    <galacticraftcore:oil_canister_partial:1001>,
    <aeadditions:storage.component:7>,
    <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //4k me gas storage component
    
  Util.simpleShaped(<aeadditions:storage.component:9>, "me", [
    <appliedenergistics2:material:22>,
    <galacticraftplanets:methane_canister_partial:1>,
    <aeadditions:storage.component:8>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //16k me gas storage component
    
  Util.simpleShaped(<aeadditions:storage.component:10>, "me", [
    <appliedenergistics2:material:22>,
    <aoa3:rainbow_druse>,
    <aeadditions:storage.component:9>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //64k me gas storage component
    
  Util.bigShaped(<aeadditions:storage.component>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <appliedenergistics2:material:38>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <extraplanets:tier6_items:3>,
    <mekanism:controlcircuit:2>,
    <extraplanets:tier6_items:3>])
    .addTools({<ore:artisansDriver>:52,<ore:artisansSolderer>:52,<ore:artisansCutters>:52})
    .addFluids([<liquid:charger>*4000]), //256k me storage component
    
  Util.bigShaped(<aeadditions:storage.component:4>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <appliedenergistics2:material:57>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <mekanism:machineblock2:11>.withTag({tier: 2}),
    <mekanism:controlcircuit:2>,
    <extraplanets:tier6_items:3>])
    .addTools({<ore:artisansDriver>:52,<ore:artisansSolderer>:52,<ore:artisansCutters>:52})
    .addFluids([<liquid:charger>*4000]), //256k me fluid storage component

  Util.bigShaped(<aeadditions:storage.component:11>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:10>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <extraplanets:oxygen_tank_extremely_heavy_full>,
    <mekanism:controlcircuit:2>,
    <extraplanets:tier6_items:3>])
    .addTools({<ore:artisansDriver>:52,<ore:artisansSolderer>:52,<ore:artisansCutters>:52})
    .addFluids([<liquid:charger>*4000]), //256k me gas storage component
    
  Util.bigShaped(<aeadditions:storage.component:1>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <moreplates:awakened_draconium_plate>,
    <mekanism:controlcircuit:4>,
    <moreplates:awakened_draconium_plate>])
    .addTools({<ore:artisansDriver>:104,<ore:artisansSolderer>:104,<ore:artisansCutters>:104})
    .addFluids([<liquid:charger>*8000]), //1024k me storage component
    
  Util.bigShaped(<aeadditions:storage.component:5>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:11>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <moreplates:awakened_draconium_plate>,
    <mekanism:controlcircuit:4>,
    <moreplates:awakened_draconium_plate>])
    .addTools({<ore:artisansDriver>:104,<ore:artisansSolderer>:104,<ore:artisansCutters>:104})
    .addFluids([<liquid:charger>*8000]), //1024k me fluid storage component
    
  Util.bigShaped(<aeadditions:storage.component:12>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:11>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <moreplates:awakened_draconium_plate>,
    <mekanism:controlcircuit:2>,
    <moreplates:awakened_draconium_plate>])
    .addTools({<ore:artisansDriver>:104,<ore:artisansSolderer>:104,<ore:artisansCutters>:104})
    .addFluids([<liquid:charger>*8000]), //1024k me gas storage component
    
  Util.bigShaped(<aeadditions:storage.component:2>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:1>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <moreplates:neutronium_plate>,
    <mekanism:controlcircuit:3>,
    <moreplates:neutronium_plate>])
    .addTools({<ore:artisansDriver>:208,<ore:artisansSolderer>:208,<ore:artisansCutters>:208})
    .addFluids([<liquid:charger>*16000]), //4096k me storage component
    
  Util.bigShaped(<aeadditions:storage.component:6>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:5>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <mekanism:machineblock2:11>.withTag({tier: 3}),
    <mekanism:controlcircuit:3>,
    <moreplates:neutronium_plate>])
    .addTools({<ore:artisansDriver>:208,<ore:artisansSolderer>:208,<ore:artisansCutters>:208})
    .addFluids([<liquid:charger>*16000]), //4096k me fluid storage component
    
  Util.bigShaped(<aeadditions:storage.component:13>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:12>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <mekanism:gastank>.withTag({tier: 3}),
    <mekanism:controlcircuit:3>,
    <moreplates:neutronium_plate>])
    .addTools({<ore:artisansDriver>:208,<ore:artisansSolderer>:208,<ore:artisansCutters>:208})
    .addFluids([<liquid:charger>*16000]), //4096k me gas storage component
    
  Util.bigShaped(<aeadditions:storage.component:3>, "component", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:2>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <extendedcrafting:material:19>,
    <mekanism:controlcircuit:3>,
    <extendedcrafting:material:32>])
    .addTools({<ore:artisansDriver>:1234,<ore:artisansSolderer>:1234,<ore:artisansCutters>:1234})
    .addFluids([<liquid:genetic_chaos_fluid>*16000]), //16384k me storage component
  
  //appliedenergistics2
  Util.simpleShaped(<appliedenergistics2:material:35>, "plus", [<appliedenergistics2:material:22>, <appliedenergistics2:material:10>, <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //1k me storage component

  Util.simpleShaped(<appliedenergistics2:material:54>, "tank", [
    <appliedenergistics2:material:22>, 
    <aeadditions:certustank>, 
    <appliedenergistics2:material:10>,
    <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //1k me fluid storage component

  Util.simpleShaped(<appliedenergistics2:material:36>, "me", [
    <appliedenergistics2:material:22>,
    <thermalfoundation:material:323>,
    <appliedenergistics2:material:35>,
    <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //4k me storage component
    
  Util.simpleShaped(<appliedenergistics2:material:55>, "me", [
    <appliedenergistics2:material:22>,
    <mekanism:machineblock2:11>.withTag({tier: 0}),
    <appliedenergistics2:material:54>,
    <mekanism:controlcircuit>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //4k me fluid storage component
    
  Util.simpleShaped(<appliedenergistics2:material:37>, "me", [
    <appliedenergistics2:material:22>,
    <galacticraftcore:item_basic_moon:1>,
    <appliedenergistics2:material:36>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //16k me storage component
    
  Util.simpleShaped(<appliedenergistics2:material:56>, "me", [
    <appliedenergistics2:material:22>,
    <mekanism:machineblock2:11>.withTag({tier: 1}),
    <appliedenergistics2:material:55>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //16k me fluid storage component
    
  Util.simpleShaped(<appliedenergistics2:material:38>, "me", [
    <appliedenergistics2:material:22>,
    <aoa3:rainbow_druse>,
    <appliedenergistics2:material:37>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //64k me storage component
    
  Util.simpleShaped(<appliedenergistics2:material:57>, "me", [
    <appliedenergistics2:material:22>,
    <aoa3:rainbow_druse>,
    <appliedenergistics2:material:56>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:13,<ore:artisansSolderer>:13})
    .addFluids([<liquid:empoweredoil>*1000]), //64k me fluid storage component
    
  Util.simpleShaped(<appliedenergistics2:material:32>, "spatial", [
    <appliedenergistics2:material:22>,
    <aoa3:rainbow_druse>,
    <appliedenergistics2:material:37>,
    <aeadditions:storage.component:9>,
    <appliedenergistics2:material:56>,
    <mekanism:controlcircuit:1>])
    .addTools({<ore:artisansDriver>:130,<ore:artisansSolderer>:130})
    .addFluids([<liquid:empoweredoil>*1000]), //2^3 spatial component
    
  Util.bigShaped(<appliedenergistics2:material:33>, "spatial", [
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component>,
    <aeadditions:storage.component:11>,
    <aeadditions:storage.component:8>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <moreplates:awakened_draconium_plate>,
    <mekanism:controlcircuit:2>])
    .addTools({<ore:artisansDriver>:104,<ore:artisansSolderer>:104,<ore:artisansCutters>:104})
    .addFluids([<liquid:charger>*8000]), //16^3 spatial component
    
  Util.bigShaped(<appliedenergistics2:material:33>, "spatial", [
    <appliedenergistics2:material:33>,
    <appliedenergistics2:material:48>,
    <aeadditions:storage.component:2>,
    <aeadditions:storage.component:13>,
    <aeadditions:storage.component:6>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>,
    <extendedcrafting:material:19>,
    <mekanism:controlcircuit:3>,
    <extendedcrafting:material:32>])
    .addTools({<ore:artisansDriver>:1234,<ore:artisansSolderer>:1234,<ore:artisansCutters>:1234})
    .addFluids([<liquid:genetic_chaos_fluid>*16000]), //128^3 spatial component

  //artisanworktables
  Util.simpleShaped(<artisanworktables:workstation:6>, "table", [
    <artisanworktables:worktable:6>,
    <immersiveengineering:material:27>,
    <cavern:cave_block:6>,
    <immersiveengineering:metal_decoration0:5>,
    <immersiveengineering:material:26>, null]) 
    .addTools({<ore:artisansDriver>:100})
    .addFluids([<liquid:superhot_magma>*1000]), //engineers workstation

  Util.simpleShaped(<artisanworktables:workshop:6>, "table", [
    <artisanworktables:workstation:6>,
    <mekanism:controlcircuit:1>,
    <aoa3:lyon_block>,
    <contenttweaker:divine_large_circuit>,
    <galacticraftplanets:item_basic_mars:5>, null]) 
    .addTools({<ore:artisansDriver>:468,<ore:artisansSolderer>:468})
    .addFluids([<liquid:ghoulish>*8000]), //engineers workshop

  //immersiveengineering
  Util.simpleShaped(<immersiveengineering:material:27>, "tri", 
    [<immersiveengineering:material:26>, <immersiveengineering:stone_decoration:8>, <thermalfoundation:material:320>])
    .addTools({<ore:artisansSolderer>:25})
    .addFluids([<liquid:copper>*72]), //circuit board

  //mekanism
  Util.simpleShaped(<mekanism:controlcircuit>, "plus", [<calculator:circuitboard:7>, <opencomputers:material:4>, <immersiveengineering:material:27>])
    .addTools({<ore:artisansDriver>:7,<ore:artisansSolderer>:7})
    .addFluids([<liquid:pulsating_iron>*144]), //green circuit

  Util.simpleShaped(<mekanism:controlcircuit:1>, "plus", [<forestry:thermionic_tubes:13>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>])
    .addTools({<ore:artisansDriver>:35,<ore:artisansSolderer>:35})
    .addFluids([<liquid:redstone_alloy>*288]), //red circuit

  Util.simpleShaped(<mekanism:controlcircuit:2>, "plus", [<forestry:thermionic_tubes:10>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>])
    .addTools({<ore:artisansDriver>:79,<ore:artisansSolderer>:79})
    .addFluids([<liquid:refinedobsidian>*576]), //blue circuit

  Util.simpleShaped(<mekanism:controlcircuit:3>, "plus", [<silentgems:gem:37>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>])
    .addTools({<ore:artisansDriver>:253,<ore:artisansSolderer>:253})
    .addFluids([<liquid:draconium>*1152]), //purple circuit

  //opencomputers
  Util.simpleShaped(<opencomputers:material:6>*4, "piston", [
    <enderio:item_material:77>, 
    <calculator:redstoneingot>, 
    <extendedcrafting:material:1>, 
    <calculator:enrichedgold>,
    <calculator:reinforcedironingot>])
    .addTools({<ore:artisansSolderer>:1})
    .addFluids([<liquid:liquidslime>*250]), //transistor

  Util.simpleShaped(<opencomputers:material:6>*4, "piston", [
    <enderio:item_material:77>, 
    <calculator:redstoneingot>, 
    <extendedcrafting:material:1>, 
    <calculator:enrichedgold>,
    <calculator:reinforcedironingot>])
    .addTools({<ore:artisansSolderer>:1})
    .addFluids([<liquid:blueslime>*250]), //transistor blue slime

  Util.simpleShaped(<opencomputers:material:6>*4, "piston", [
    <enderio:item_material:77>, 
    <calculator:redstoneingot>, 
    <extendedcrafting:material:1>, 
    <calculator:enrichedgold>,
    <calculator:reinforcedironingot>])
    .addTools({<ore:artisansSolderer>:1})
    .addFluids([<liquid:purpleslime>*250]), //transistor purple slime

  Util.simpleShaped(<opencomputers:material:7>*4, "sandwich", [<opencomputers:material:6>, <calculator:redstoneingot>, <minecraft:iron_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:liquidslime>*250]), //t1 microchip

  Util.simpleShaped(<opencomputers:material:7>*4, "sandwich", [<opencomputers:material:6>, <calculator:redstoneingot>, <minecraft:iron_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:blueslime>*250]), //t1 microchip blue slime

  Util.simpleShaped(<opencomputers:material:7>*4, "sandwich", [<opencomputers:material:6>, <calculator:redstoneingot>, <minecraft:iron_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:purpleslime>*250]), //t1 microchip purple slime

  Util.simpleShaped(<opencomputers:material:8>, "star", [
    <opencomputers:material:7>, 
    <calculator:enrichedgold>, 
    <minecraft:gold_nugget>, 
    <extendedcrafting:material:1>, 
    <minecraft:gold_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:liquidslime>*250]), //t2 microchip

  Util.simpleShaped(<opencomputers:material:8>, "star", [
    <opencomputers:material:7>, 
    <calculator:enrichedgold>, 
    <minecraft:gold_nugget>, 
    <extendedcrafting:material:1>, 
    <minecraft:gold_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:blueslime>*250]), //t2 microchip blue slime

  Util.simpleShaped(<opencomputers:material:8>, "star", [
    <opencomputers:material:7>, 
    <calculator:enrichedgold>, 
    <minecraft:gold_nugget>, 
    <extendedcrafting:material:1>, 
    <minecraft:gold_nugget>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:purpleslime>*250]), //t2 microchip purple slime

  Util.simpleShaped(<opencomputers:material:9>, "sandwich", [<opencomputers:material:8>, <extendedcrafting:material:1>, <opencomputers:material:29>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:liquidslime>*500]), //t3 microchip

  Util.simpleShaped(<opencomputers:material:9>, "sandwich", [<opencomputers:material:8>, <extendedcrafting:material:1>, <opencomputers:material:29>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:blueslime>*500]), //t3 microchip blue slime

  Util.simpleShaped(<opencomputers:material:9>, "sandwich", [<opencomputers:material:8>, <extendedcrafting:material:1>, <opencomputers:material:29>])
    .addTools({<ore:artisansSolderer>:1,<ore:artisansDriver>:1})
    .addFluids([<liquid:purpleslime>*500]), //t3 microchip purple slime
] as Holder[];

function run() {
	Artisans.build("engineer", recipeHolders);
}