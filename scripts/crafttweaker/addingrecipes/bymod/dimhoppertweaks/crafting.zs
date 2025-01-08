#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//prestige tokens chapter 1
recipes.addShapeless("prestige token 1", <dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 1}), [<minecraft:paper>, <thermalfoundation:storage>]);
addToken(1, [<minecraft:nether_star>]);

//prestige tokens chapter 2
addToken(2, [<labyrinth:daedalus>]);
addToken(3, [<blue_skies:ventium_ingot>]);
addToken(4, [<actuallyadditions:block_leaf_generator>]);

//prestige tokens chapter 3
addToken(5, [<minecraft:emerald>]);
addToken(6, [<contenttweaker:crazy_zombie_essence>, <contenttweaker:crazy_spider_essence>, <contenttweaker:crazy_skeleton_essence>, <contenttweaker:crazy_creeper_essence>]);
addToken(7, [<actuallyadditions:item_crystal_empowered:4>]);

//prestige tokens chapter 4
addToken(8, [<thermalfoundation:storage:3>]);
addToken(9, [<jaopca:dust.life_crystal>]);
addToken(10, [<thebetweenlands:mummy_bait>]);

//prestige tokens chapter 5
addToken(11, [<contenttweaker:rocket_block_1>]);
addToken(12, [<galacticraftcore:item_basic_moon:2>]);
addToken(13, [<contenttweaker:rocket_block_2>]);
addToken(14, [<contenttweaker:rocket_block_3>]);

//prestige tokens chapter 6
addToken(15, [<aoa3:blank_realmstone>]);
addToken(16, [<aoa3:darkly_powder>]);
addToken(17, [<aoa3:lyon_ingot>]);
addToken(18, [<aoa3:shyregem>]);
addToken(19, [<aoa3:progress_coin4>]);

//prestige tokens chapter 7
addToken(20, [<contenttweaker:rocket_block_4>]);
addToken(21, [<contenttweaker:rocket_block_5>]);
addToken(22, [<contenttweaker:rocket_block_6>]);
addToken(23, [<contenttweaker:rocket_block_7>]);
 
//prestige tokens chapter 8
addToken(24, [<lightningcraft:metal_block:2>]);
addToken(25, [<draconicevolution:draconium_block>]);
addToken(26, [<draconicevolution:awakened_core>]);

//prestige tokens chapter 9
addToken(27, [<contenttweaker:rocket_block_10>]);
addToken(28, [<projecte:item.pe_klein_star:5>]);
addToken(29, [<projectex:matter:11>]);
addToken(30, [<minecraft:bedrock>]);

function addToken(level as int, inputs as IIngredient[]) {
    val token as IItemStack = <dimhoppertweaks:prestige_token>;
    if(inputs.length==1) {
        recipes.addShapeless("prestige token "+(level+1), token.withTag({prestigeLevel: level+1}), [token.withTag({prestigeLevel: level}), inputs[0]]);
    }
    else {
        for i, input in inputs {
            recipes.addShapeless("prestige token "+(level+1)+"_"+i, token.withTag({prestigeLevel: level+1}), [token.withTag({prestigeLevel: level}), input]);
        }
    }
}
//<dimhoppertweaks:skill_credit>.withTag({skill: "research",amount: 50})