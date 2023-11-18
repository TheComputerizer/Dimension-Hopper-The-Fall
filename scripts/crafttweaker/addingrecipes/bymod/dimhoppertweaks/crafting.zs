#reloadable

import crafttweaker.item.IIngredient;

//prestige tokens chapter 1
recipes.addShapeless("prestige token 1", <dimhoppertweaks:prestige_token_1>, [<minecraft:paper>, <thermalfoundation:storage>]);
recipes.addShapeless("prestige token 2", <dimhoppertweaks:prestige_token_2>, [<dimhoppertweaks:prestige_token_1>, <minecraft:nether_star>]);

//prestige tokens chapter 2
recipes.addShapeless("prestige token 3", <dimhoppertweaks:prestige_token_3>, [<dimhoppertweaks:prestige_token_2>, <labyrinth:daedalus>]);
recipes.addShapeless("prestige token 4", <dimhoppertweaks:prestige_token_4>, [<dimhoppertweaks:prestige_token_3>, <blue_skies:ventium_ingot>]);
recipes.addShapeless("prestige token 5", <dimhoppertweaks:prestige_token_5>, [<dimhoppertweaks:prestige_token_4>, <actuallyadditions:block_leaf_generator>]);

//prestige tokens chapter 3
recipes.addShapeless("prestige token 6", <dimhoppertweaks:prestige_token_6>, [<dimhoppertweaks:prestige_token_5>, <minecraft:emerald>]);
recipes.addShapeless("prestige token 7", <dimhoppertweaks:prestige_token_8>, [<dimhoppertweaks:prestige_token_7>, <actuallyadditions:item_crystal_empowered:4>]);
recipes.addShapeless("prestige token 8", <dimhoppertweaks:prestige_token_7>, [<dimhoppertweaks:prestige_token_6>, <contenttweaker:crazy_zombie_essence>]);
recipes.addShapeless("prestige token 8 alt1", <dimhoppertweaks:prestige_token_7>, [<dimhoppertweaks:prestige_token_6>, <contenttweaker:crazy_spider_essence>]);
recipes.addShapeless("prestige token 8 alt2", <dimhoppertweaks:prestige_token_7>, [<dimhoppertweaks:prestige_token_6>, <contenttweaker:crazy_skeleton_essence>]);
recipes.addShapeless("prestige token 8 alt3", <dimhoppertweaks:prestige_token_7>, [<dimhoppertweaks:prestige_token_6>, <contenttweaker:crazy_creeper_essence>]);

//prestige tokens chapter 4
recipes.addShapeless("prestige token 9", <dimhoppertweaks:prestige_token_9>, [<dimhoppertweaks:prestige_token_8>, <thermalfoundation:storage:3>]);
recipes.addShapeless("prestige token 10", <dimhoppertweaks:prestige_token_10>, [<dimhoppertweaks:prestige_token_9>, <jaopca:dust.life_crystal>]);
recipes.addShapeless("prestige token 11", <dimhoppertweaks:prestige_token_11>, [<dimhoppertweaks:prestige_token_10>, <thebetweenlands:mummy_bait>]);

//prestige tokens chapter 5
recipes.addShapeless("prestige token 12", <dimhoppertweaks:prestige_token_12>, [<dimhoppertweaks:prestige_token_11>, <contenttweaker:rocket_block_1>]);
recipes.addShapeless("prestige token 13", <dimhoppertweaks:prestige_token_13>, [<dimhoppertweaks:prestige_token_12>, <galacticraftcore:item_basic_moon:2>]);
recipes.addShapeless("prestige token 14", <dimhoppertweaks:prestige_token_14>, [<dimhoppertweaks:prestige_token_13>, <contenttweaker:rocket_block_2>]);
recipes.addShapeless("prestige token 15", <dimhoppertweaks:prestige_token_15>, [<dimhoppertweaks:prestige_token_14>, <contenttweaker:rocket_block_3>]);

//prestige tokens chapter 6
recipes.addShapeless("prestige token 16", <dimhoppertweaks:prestige_token_16>, [<dimhoppertweaks:prestige_token_15>, <aoa3:blank_realmstone>]);
recipes.addShapeless("prestige token 17", <dimhoppertweaks:prestige_token_17>, [<dimhoppertweaks:prestige_token_16>, <aoa3:darkly_powder>]);
recipes.addShapeless("prestige token 18", <dimhoppertweaks:prestige_token_18>, [<dimhoppertweaks:prestige_token_17>, <aoa3:lyon_ingot>]);
recipes.addShapeless("prestige token 19", <dimhoppertweaks:prestige_token_19>, [<dimhoppertweaks:prestige_token_18>, <aoa3:shyregem>]);
recipes.addShapeless("prestige token 20", <dimhoppertweaks:prestige_token_20>, [<dimhoppertweaks:prestige_token_19>, <aoa3:progress_coin4>]);

//prestige tokens chapter 7
recipes.addShapeless("prestige token 21", <dimhoppertweaks:prestige_token_21>, [<dimhoppertweaks:prestige_token_20>, <contenttweaker:rocket_block_4>]);
recipes.addShapeless("prestige token 22", <dimhoppertweaks:prestige_token_22>, [<dimhoppertweaks:prestige_token_21>, <contenttweaker:rocket_block_5>]);
recipes.addShapeless("prestige token 23", <dimhoppertweaks:prestige_token_23>, [<dimhoppertweaks:prestige_token_22>, <contenttweaker:rocket_block_6>]);
recipes.addShapeless("prestige token 24", <dimhoppertweaks:prestige_token_24>, [<dimhoppertweaks:prestige_token_23>, <contenttweaker:rocket_block_7>]);

//prestige tokens chapter 8
recipes.addShapeless("prestige token 25", <dimhoppertweaks:prestige_token_25>, [<dimhoppertweaks:prestige_token_24>, <lightningcraft:metal_block:2>]);
recipes.addShapeless("prestige token 26", <dimhoppertweaks:prestige_token_26>, [<dimhoppertweaks:prestige_token_25>, <draconicevolution:draconium_block>]);
recipes.addShapeless("prestige token 27", <dimhoppertweaks:prestige_token_27>, [<dimhoppertweaks:prestige_token_26>, <draconicevolution:awakened_core>]);

//prestige tokens chapter 9
recipes.addShapeless("prestige token 28", <dimhoppertweaks:prestige_token_28>, [<dimhoppertweaks:prestige_token_27>, <contenttweaker:rocket_block_10>]);
recipes.addShapeless("prestige token 29", <dimhoppertweaks:prestige_token_29>, [<dimhoppertweaks:prestige_token_28>, <projecte:item.pe_klein_star:5>]);
recipes.addShapeless("prestige token 30", <dimhoppertweaks:prestige_token_30>, [<dimhoppertweaks:prestige_token_29>, <projectex:matter:11>]);
recipes.addShapeless("prestige token 31", <dimhoppertweaks:prestige_token_31>, [<dimhoppertweaks:prestige_token_30>, <minecraft:bedrock>]);

function addToken(level as int, input as IIngredient) {
    
}