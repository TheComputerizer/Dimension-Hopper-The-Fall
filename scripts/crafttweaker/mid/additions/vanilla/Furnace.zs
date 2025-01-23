#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Stacks as Stack;

//ordered by xp and then alphabetically by the output
static recipeMap as double[IIngredient][IItemStack] = {
	<actuallyadditions:item_food:10>:{<tp:bread_slice>:0.1}, //toast
	<aquaculture:food:4>:{<aquaculture:food:3>:0.1}, //cooked fish fillet
	<aquaculture:food:5>:{<aquaculture:food:2>:0.1},  //cooked whale steak
    <minecraft:iron_nugget>:{<aquaculture:loot:2>:0.1}, //iron nugget from can
	<atum:camel_cooked>:{<atum:camel_raw>:0.1}, //cooked camel
	<blue_skies:venison_steak>:{<blue_skies:raw_venison>:0.1}, //venison steak
    <ceramics:channel>:{<ceramics:unfired_clay:7>:0.1}, //channel
    <ceramics:clay_bucket>:{<ceramics:unfired_clay>:0.1}, //clay bucket
    <ceramics:clay_shears>:{<ceramics:unfired_clay:1>:0.1}, //clay shears
    <ceramics:faucet>:{<ceramics:unfired_clay:6>:0.1}, //faucet
    <ceramics:porcelain>:{<ceramics:clay_soft>:0.1}, //white porcelain
    <ceramics:unfired_clay:5>:{<ceramics:unfired_clay:4>:0.1}, //porcelain brick
	<erebus:erebus_food:16>:{<erebus:materials:62>:0.1}, //cooked titan stew
    <gaiadimension:gaia_stone>:{<gaiadimension:gaia_cobblestone>:0.1}, //gaia stone
	<midnight:cook_hunter_wing>:{<midnight:hunter_wing>:0.1}, //hunter wing
	<midnight:cook_stag_flank>:{<midnight:raw_stag_flank>:0.1}, //stag flank
	<midnight:cook_stinger_egg>:{<midnight:stinger_egg>:0.1}, //stinger egg
	<midnight:cook_suavis>:{<midnight:raw_suavis>:0.1}, //suavis
	<minecraft:baked_potato>:{<minecraft:potato>:0.1,<botania:tinypotato>:0.1}, //baken potato
	<minecraft:bread>:{<natura:materials:2>:0.1}, //bread
	<minecraft:cooked_beef>:{<minecraft:beef>:0.1}, //steak
	<minecraft:cooked_chicken>:{<minecraft:chicken>:0.1}, //cooked chicken
	<minecraft:cooked_fish>:{<minecraft:fish>:0.1}, //cooked fish
	<minecraft:cooked_fish:1>:{<minecraft:fish:1>:0.1}, //cooked salmon
	<minecraft:cooked_mutton>:{<minecraft:mutton>:0.1}, //cooked mutton
	<minecraft:cooked_porkchop>:{<minecraft:porkchop>:0.1}, //cooked porkchop
	<minecraft:cooked_rabbit>:{<minecraft:rabbit>:0.1}, //cooked rabbit
    <minecraft:glass>:{<ore:sand>:0.1}, //glass
    <minecraft:stone>:{<minecraft:cobblestone>:0.1}, //stone
	<mist:meat_cook>:{<mist:meat_food>:0.1}, //cooked mossling meat
	<mist:meat_cook:1>:{<mist:meat_food:1>:0.1}, //cooked forest runner meat
	<mist:meat_cook:2>:{<mist:meat_food:2>:0.1}, //cooked momo meat
	<mist:meat_cook:3>:{<mist:meat_food:3>:0.1}, //cooked barvog meat
	<mist:meat_cook:4>:{<mist:meat_food:4>:0.1}, //cooked prickler meat
	<mist:meat_cook:5>:{<mist:meat_food:5>:0.1}, //cooked caravan meat
	<mist:meat_cook:6>:{<mist:meat_food:6>:0.1}, //cooked wulder meat
	<mist:meat_cook:7>:{<mist:meat_food:7>:0.1}, //cooked horb meat
	<mist:meat_cook:8>:{<mist:meat_food:8>:0.1}, //cooked sniff meat
	<mist:meat_cook:9>:{<mist:meat_food:9>:0.1}, //cooked sloth meat
	<mist:meat_cook:10>:{<mist:meat_food:10>:0.1}, //cooked monk meat
	<mist:meat_cook:11>:{<mist:meat_food:11>:0.1}, //cooked galaga meat
	<mist:meat_cook:12>:{<mist:meat_food:12>:0.1}, //cooked hulter meat
	<mist:meat_cook:13>:{<mist:meat_food:13>:0.1}, //cooked brachiodon meat
	<natura:edibles:1>:{<natura:edibles>:0.1}, //cooked imphide
	<netherex:ghast_meat_cooked>:{<netherex:ghast_meat_raw>:0.1}, //cooked ghast meat
	<silentgems:food:4>:{<silentgems:food:3>:0.1}, //meaty stew
	<tconstruct:moms_spaghetti>:{<tconstruct:spaghetti:2>:0.1}, //mom's spghetti
    <tp:cooked_apple>:{<minecraft:apple>:0.1}, //cooked apple
	<tp:toasted_bread>:{<minecraft:bread>:0.1}, //toasted bread
	<thebetweenlands:frog_legs_cooked>:{<thebetweenlands:frog_legs_raw>:0.1}, //fried frog's leg
	<thebetweenlands:mire_snail_egg_cooked>:{<thebetweenlands:mire_snail_egg>:0.1}, //cooked mire snail egg
	<thebetweenlands:snail_flesh_cooked>:{<thebetweenlands:snail_flesh_raw>:0.1}, //seared snail flesh
	<twilightforest:cooked_meef>:{<twilightforest:raw_meef>:0.1}, //cooked meef
	<twilightforest:cooked_venison>:{<twilightforest:raw_venison>:0.1}, //cooked venison
	<xlfoodmod:cheese_puff>:{<xlfoodmod:cheese>:0.1}, //cheese puff
	<xlfoodmod:chocolate_syrup>:{<minecraft:dye:3>:0.1}, //chocolate syrup
	<xlfoodmod:cooked_chicken_wing>:{<xlfoodmod:raw_chicken_wing>:0.1}, //cooked chicken wing
	<xlfoodmod:cooked_dough>:{<xlfoodmod:dough>:0.1}, //cooked dough
	<xlfoodmod:corn>:{<xlfoodmod:raw_corn>:0.1}, //corn
	<xlfoodmod:flesh>:{<minecraft:rotten_flesh>:0.1}, //flesh
	<xlfoodmod:fried_egg>:{<minecraft:egg>:0.1}, //fried egg
	<xlfoodmod:fried_rice>:{<xlfoodmod:rice>:0.1}, //fried rice
	<xlfoodmod:hot_sauce>:{<xlfoodmod:pepper>:0.1}, //hot sauce
	<xlfoodmod:marshmallow>:{<minecraft:sugar>:0.1}, //marshmellow
	<xlfoodmod:onion_rings>:{<xlfoodmod:onion>:0.1}, //onion rings
	<xlfoodmod:roasted_marshmallow>:{<xlfoodmod:marshmallow>:0.1}, //roasted marshmellow
	<xlfoodmod:tomato_sauce>:{<xlfoodmod:tomato>:0.1}, //tomato sauce
    <appliedenergistics2:smooth_sky_stone_block>:{<appliedenergistics2:sky_stone_block>:0.2}, //sky stone
    <extrautils2:decorativeglass>:{<extrautils2:decorativesolid:4>:0.2}, //tickened glass
    <industrialforegoing:plastic>:{<industrialforegoing:dryrubber>:0.2}, //plastic
    <minecraft:dye:2>:{<minecraft:cactus>:0.2}, //cactus green
    <mysticalagriculture:soulstone>:{<mysticalagriculture:soulstone:1>:0.2}, //soulstone
    <gaiadimension:pink_essence>:{<gaiadimension:gaia_stone>:0.5}, //pink essence
    <minecraft:white_glazed_terracotta>:{<minecraft:stained_hardened_clay>:0.5}, //white glazed terracotta
    <minecraft:orange_glazed_terracotta>:{<minecraft:stained_hardened_clay:1>:0.5}, //orange glazed terracotta
    <minecraft:magenta_glazed_terracotta>:{<minecraft:stained_hardened_clay:2>:0.5}, //magenta glazed terracotta
    <minecraft:light_blue_glazed_terracotta>:{<minecraft:stained_hardened_clay:3>:0.5}, //light blue glazed terracotta
    <minecraft:yellow_glazed_terracotta>:{<minecraft:stained_hardened_clay:4>:0.5}, //yellow glazed terracotta
    <minecraft:lime_glazed_terracotta>:{<minecraft:stained_hardened_clay:5>:0.5}, //lime glazed terracotta
    <minecraft:pink_glazed_terracotta>:{<minecraft:stained_hardened_clay:6>:0.5}, //pink glazed terracotta
    <minecraft:gray_glazed_terracotta>:{<minecraft:stained_hardened_clay:7>:0.5}, //gray glazed terracotta
    <minecraft:silver_glazed_terracotta>:{<minecraft:stained_hardened_clay:8>:0.5}, //silver glazed terracotta
    <minecraft:cyan_glazed_terracotta>:{<minecraft:stained_hardened_clay:9>:0.5}, //cyan glazed terracotta
    <minecraft:purple_glazed_terracotta>:{<minecraft:stained_hardened_clay:10>:0.5}, //purple glazed terracotta
    <minecraft:blue_glazed_terracotta>:{<minecraft:stained_hardened_clay:11>:0.5}, //blue glazed terracotta
    <minecraft:brown_glazed_terracotta>:{<minecraft:stained_hardened_clay:12>:0.5}, //brown glazed terracotta
    <minecraft:green_glazed_terracotta>:{<minecraft:stained_hardened_clay:13>:0.5}, //green glazed terracotta
    <minecraft:red_glazed_terracotta>:{<minecraft:stained_hardened_clay:14>:0.5}, //red glazed terracotta
    <minecraft:black_glazed_terracotta>:{<minecraft:stained_hardened_clay:15>:0.5}, //black glazed terracotta
    <opencomputers:material:4>:{<opencomputers:material:2>:0.5}, //PCB
    <thebetweenlands:items_misc:6>:{<thebetweenlands:swamp_reed_item>:0.5}, //dried swamp reed
    <aether:scatterglass>:{<aether:crude_scatterglass>:1.0}, //scatterglass
    <mist:sand>:{<mist:sand:1>:1.0}, //dry sand
    <appliedenergistics2:material:5>:{<galacticraftcore:basic_block_core:8>:2.0}, //silicon
    <cavern:cave_item:1>:{<cavern:cave_block:2>:2.0}, //magnite ingot
	<gaiadimension:impure_sludge>:{<thebetweenlands:sludge_jello>:2.0}, //sludge jello
    <blue_skies:ventium_ingot>:{<blue_skies:ventium_ore>:2.2}, //ventium ingot
    <appliedenergistics2:material:5>:{<galacticraftplanets:venus:10>:2.5}, //silicon
    <midnight:nagrilite_ingot>:{<midnight:nagrilite_ore>:2.5}, //nagrilite ingot
    <midnight:tenebrum_ingot>:{<midnight:tenebrum_ore>:2.5}, //tenebrum ingot
    <mist:niobium_ingot>:{<mist:niobium_ore>:2.5}, //niobium ingot
    <thebetweenlands:items_misc:11>:{<thebetweenlands:syrmorite_ore>:3.0}, //syrmorite ingot
    <thebetweenlands:octine_ingot>:{<thebetweenlands:octine_ore>:3.3}, //octine ingot
    <gaiadimension:thick_glitter_block>:{<gaiadimension:gummy_glitter_block>:5.0}, //thick glitter block
    <thebetweenlands:syrmorite_bucket_solid_rubber>:{<thebetweenlands:bl_bucket_rubber:1>:5.0}, //syrmorite bucket with solid rubber
    <tconstruct:materials:9>:{<tconstruct:soil:1>:10.0}, //green slime crystal
    <tconstruct:materials:10>:{<tconstruct:soil:2>:10.0}, //blue slime crystal
    <tconstruct:materials:11>:{<tconstruct:soil:5>:10.0} //magma slime crystal
};

static metaMaps as double[IItemStack[IItemStack]] = {
	Stack.mapCommonMetas(<botany:ceramic>,<botany:clay>,80):0.1
 } as double[IItemStack[IItemStack]];

function run() {
    for output, inputMap in recipeMap {
        for input, xp in inputMap {
            furnace.addRecipe(output,input,xp);
        }
    }
	for map, xp in metaMaps {
		for output, input in map {
			furnace.addRecipe(output,input,xp);
		}
	}
}