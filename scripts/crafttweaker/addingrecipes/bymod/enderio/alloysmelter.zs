import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.enderio.AlloySmelter;

//conduit binder
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:22>*4, [<minecraft:clay_ball>*2, <minecraft:sand>*2, <minecraft:gravel>*5], 1500, 3.3);

//enhanced machine chassis
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:54>, [<mekanism:basicblock:8>, <enderio:item_material:66>, <thermalfoundation:material:262>], 20000, 35.7);

//energy conduits

//crude
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit>*4, [<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:crude_steel_plate>*4], 2000, 1.5);
//iron
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:1>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit>*4, <thermalfoundation:material:32>*4], 2200, 1.5);
//aluminum
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:2>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:1>*4, <thermalfoundation:material:324>*4], 2400, 3.0);
//gold
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:3>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:2>*4, <thermalfoundation:material:33>*4], 2600, 3.0);
//copper
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:4>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:3>*4, <thermalfoundation:material:320>*4], 2800, 6.0);
//basic
mods.enderio.AlloySmelter.addRecipe(<enderio:item_power_conduit>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:4>*4, <moreplates:conductive_iron_plate>*4], 3000, 6.0);
//silver
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:5>*4, [<enderio:item_material:4>*4, <enderio:item_power_conduit>*4, <thermalfoundation:material:322>*4], 3200, 12.0);
//electrum
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:6>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:5>*4, <thermalfoundation:material:353>*4], 3400, 12.0);
//enhanced
mods.enderio.AlloySmelter.addRecipe(<enderio:item_power_conduit:1>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:6>*4, <moreplates:energetic_alloy_plate>*4], 3600, 24.0);
//energetic silver
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:7>*4, [<enderio:item_material:4>*4, <enderio:item_power_conduit:1>*4, <moreplates:energetic_silver_plate>*4], 3800, 24.0);
//ender
mods.enderio.AlloySmelter.addRecipe(<enderio:item_power_conduit:2>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:7>*4, <moreplates:vibrant_alloy_plate>*4], 4000, 48.0);
//crystalline
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:8>*4, [<enderio:item_material:4>*4, <enderio:item_power_conduit:2>*4, <moreplates:crystalline_alloy_plate>*4], 4500, 48.0);
//crystalline pink slime
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:9>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:8>*4, <moreplates:crystalline_pink_slime_plate>*4], 5000, 96.0);
//melodic
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:10>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:9>*4, <moreplates:melodic_alloy_plate>*4], 5500, 96.0);
//stellar
mods.enderio.AlloySmelter.addRecipe(<enderio:item_endergy_conduit:11>*4, [<enderio:item_material:4>*4, <enderio:item_endergy_conduit:10>*4, <moreplates:stellar_alloy_plate>*4], 6000, 192.0);

//fluid conduits

//t1
mods.enderio.AlloySmelter.addRecipe(<enderio:item_liquid_conduit>*4, [<enderio:item_material:4>*4, <enderio:item_material:75>*4, <ore:fusedGlass>*4], 3000, 1.5);
//t2
mods.enderio.AlloySmelter.addRecipe(<enderio:item_liquid_conduit:1>*4, [<enderio:item_material:4>*4, <enderio:item_liquid_conduit>*4, <ore:fusedQuartz>*4], 4500, 3.0);
//t3
mods.enderio.AlloySmelter.addRecipe(<enderio:item_liquid_conduit:2>*4, [<enderio:item_material:4>*4, <enderio:item_liquid_conduit:1>*4, <moreplates:vivid_alloy_plate>*4], 6000, 6.0);

//other conduits

//item
mods.enderio.AlloySmelter.addRecipe(<enderio:item_item_conduit>*4, [<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:pulsating_iron_plate>*4], 4000, 3.0);
//redstone
mods.enderio.AlloySmelter.addRecipe(<enderio:item_redstone_conduit>*4, [<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:redstone_alloy_plate>*4], 4000, 3.0);
//me
mods.enderio.AlloySmelter.addRecipe(<enderio:item_me_conduit>, [<enderio:item_item_conduit>*4, <appliedenergistics2:part:56>, <enderio:item_liquid_conduit:2>*4], 5000, 10.0);


//dark steel
mods.enderio.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<thermalfoundation:material:160>, <minecraft:obsidian>], 20000, 3.0);

//electrical steel
mods.enderio.AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<thermalfoundation:material:160>, <appliedenergistics2:material:5>], 10000, 2.0);

//electrum alt
mods.enderio.AlloySmelter.addRecipe(<thermalfoundation:material:161>, [<enderio:item_alloy_ingot>, <goodnightsleep:positite_gem>], 10000, 5.0);