#reloadable

import crafttweaker.item.IIngredient;
import scripts.crafttweaker.mid.additions.enderio.EIOHelper as Helper;
import scripts.crafttweaker.mid.additions.enderio.RecipeClasses.AlloySmelterRecipe as Recipe;

static recipes as Recipe[] = [
    Recipe([<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:pulsating_iron_plate>*4],
        <enderio:item_item_conduit>*4, 4000, 3.0),                                                  //item conduit
    Recipe([<enderio:item_item_conduit:4>*4, <appliedenergistics2:part:56>, <enderio:item_liquid_conduit:2>*4],
        <enderio:item_me_conduit>*4, 5000, 10.0),                                                   //me conduit
    Recipe([<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:redstone_alloy_plate>*4],
        <enderio:item_redstone_conduit>*4, 4000, 3.0),                                              //redstone conduit
    Recipe([<enderio:item_material:4>*4, <enderio:item_material:75>*4, <ore:fusedGlass>*4],
        <enderio:item_liquid_conduit>*4, 3000, 1.5),                                                //t1 fluid conduit
    Helper.conduit(<ore:fusedQuartz>, 1, 4500, 3.0, "liquid" ),                                     //t2 fluid conduit
    Helper.conduit(<moreplates:vivid_alloy_plate>, 2, 6000, 6.0, "liquid" ),                        //t3 fluid conduit
    Recipe([<enderio:item_material:4>*4, <enderio:item_material:75>*4, <moreplates:crude_steel_plate>*4],
        <enderio:item_endergy_conduit>*4, 2000, 1.5),                                               //crude energy conduit
    Helper.conduit(<thermalfoundation:material:32>, 1, 2200, 1.5),                                  //iron energy conduit
    Helper.conduit(<thermalfoundation:material:324>, 2, 2400, 3.0),                                 //aluminum energy conduit
    Helper.conduit(<thermalfoundation:material:33>, 3, 2600, 3.0),                                  //gold energy conduit
    Helper.conduit(<thermalfoundation:material:320>, 4, 2800, 6.0),                                 //copper energy conduit
    Helper.conduit(<moreplates:conductive_iron_plate>, 0, 3000, 6.0, "power", "endergy", 4),        //basic energy conduit
    Helper.conduit(<thermalfoundation:material:322>, 5, 3200, 12.0, "endergy", "power", 0),         //silver energy conduit
    Helper.conduit(<thermalfoundation:material:353>, 6, 3400, 12.0),                                //electrum energy conduit
    Helper.conduit(<moreplates:energetic_alloy_plate>, 1, 3600, 24.0, "power", "endergy", 6),       //enhanced energy conduit
    Helper.conduit(<moreplates:energetic_silver_plate>, 7, 3800, 24.0, "endergy", "power", 1),      //energetic silver energy conduit
    Helper.conduit(<moreplates:vibrant_alloy_plate>, 2, 4000, 48.0, "power", "endergy", 7),         //ender energy conduit
    Helper.conduit(<moreplates:crystalline_alloy_plate>, 8, 4500, 48.0, "endergy", "power", 2),     //crystalline energy conduit
    Helper.conduit(<moreplates:crystalline_pink_slime_plate>, 9, 5000, 96.0),                       //crystalline pink slime energy conduit
    Helper.conduit(<moreplates:melodic_alloy_plate>, 10, 5500, 96.0),                               //melodic energy conduit
    Helper.conduit(<moreplates:stellar_alloy_plate>, 11, 6000, 128.0),                              //stellar energy conduit
    Recipe([<minecraft:clay_ball>*2, <minecraft:sand>*2, <minecraft:gravel>*5], 
        <enderio:item_material:22>*4, 1500, 3.3),                                                   //conduit binder
    Recipe([<mekanism:basicblock:8>, <enderio:item_material:66>, <thermalfoundation:material:262>], 
        <enderio:item_material:54>, 20000, 35.7),                                                   //enhanced machine chassis
    Recipe([<thermalfoundation:material:160>, <minecraft:obsidian>], 
        <enderio:item_alloy_ingot:6>, 10000, 3.0),                                                  //dark steel
    Recipe([<thermalfoundation:material:160>, <appliedenergistics2:material:5>], 
        <enderio:item_alloy_ingot>, 10000, 2.0),                                                    //electrical steel
    Recipe([<enderio:item_alloy_ingot>, <goodnightsleep:positite_gem>], 
        <thermalfoundation:material:161>, 10000, 5.0),                                              //electrum alt
    Recipe([<gaiadimension:gaia_stone>, <randomthings:spectreanchor>, <extrabees:misc:3>], 
        <gaiadimension:speckled_rock>, 5000, 1.0),                                                  //speckled rock
    Recipe([<gaiadimension:speckled_rock>, <thebetweenlands:coarse_swamp_dirt>, <mist:rocks>], 
        <gaiadimension:coarse_rock>, 7500, 2.5),                                                    //coarse rock
    Recipe([<gaiadimension:coarse_rock>, <randomthings:ingredient:9>, <gaiadimension:thick_glitter_block>], 
        <gaiadimension:speckled_rock>, 10000, 5.0)                                                  //preciou rock
];

function run() {
    for recipe in recipes {
        recipe.make();
    }
}