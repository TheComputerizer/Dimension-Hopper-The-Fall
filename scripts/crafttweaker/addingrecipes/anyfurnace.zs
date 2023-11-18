#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//stone
furnace.addRecipe(<minecraft:stone>, <minecraft:cobblestone>, 0.1);

//glass
for item in <ore:sand>.items {
	furnace.addRecipe(<minecraft:glass>, item, 0.1);
}

//plastic
furnace.addRecipe(<industrialforegoing:plastic>, <industrialforegoing:dryrubber>, 0.2);

//printed circuit board
furnace.addRecipe(<opencomputers:material:4>, <opencomputers:material:2>, 0.5);

//tenebrum
furnace.addRecipe(<midnight:tenebrum_ingot>, <midnight:tenebrum_ore>, 2.5);

//nagrilite
furnace.addRecipe(<midnight:nagrilite_ingot>, <midnight:nagrilite_ore>, 2.5);

//niobium
furnace.addRecipe(<mist:niobium_ingot>, <mist:niobium_ore>, 2.5);

//syrmorite
furnace.addRecipe(<thebetweenlands:items_misc:11>, <thebetweenlands:syrmorite_ore>, 3.0);

//octine
furnace.addRecipe(<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ore>, 3.3);

//rubber
furnace.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>, <thebetweenlands:bl_bucket_rubber:1>, 5.0);

//swampreed
furnace.addRecipe(<thebetweenlands:items_misc:6>, <thebetweenlands:swamp_reed_item>, 0.5);

//glitter
furnace.addRecipe(<gaiadimension:thick_glitter_block>, <gaiadimension:gummy_glitter_block>, 5.0);

//glitter
furnace.addRecipe(<cavern:cave_item:1>, <cavern:cave_block:2>, 2.0);

//wet sand
furnace.addRecipe(<mist:sand>, <mist:sand:1>, 1.0);

//ventium
furnace.addRecipe(<blue_skies:ventium_ingot>, <blue_skies:ventium_ore>, 2.2);

//scatterglass
furnace.addRecipe(<aether:scatterglass>, <aether:crude_scatterglass>, 1.0);

//silicon
furnace.addRecipe(<appliedenergistics2:material:5>, <galacticraftcore:basic_block_core:8>, 2.0);

//silicon 2
furnace.addRecipe(<appliedenergistics2:material:5>, <galacticraftplanets:venus:10>, 2.5);

//green slime crystal
furnace.addRecipe(<tconstruct:materials:9>, <tconstruct:soil:1>, 10.0);
//blue slime crystal
furnace.addRecipe(<tconstruct:materials:10>, <tconstruct:soil:2>, 10.0);
//red slime crystal
furnace.addRecipe(<tconstruct:materials:11>, <tconstruct:soil:5>, 10.0);

//tin can
furnace.addRecipe(<aquaculture:loot:2>, <minecraft:iron_nugget>, 0.1);

//food
val foods = [
	<minecraft:apple>,
	<minecraft:chicken>,
	<minecraft:mutton>,
	<minecraft:porkchop>,
	<minecraft:beef>,
	<minecraft:fish:1>,
	<minecraft:fish>,
	<minecraft:rabbit>,
	<aquaculture:food:3>,
	<aquaculture:food:2>,
	<atum:camel_raw>,
	<netherex:ghast_meat_raw>,
	<natura:edibles>,
	<minecraft:bread>,
	<blue_skies:raw_venison>,
	<midnight:raw_suavis>,
	<midnight:raw_stag_flank>,
	<midnight:stinger_egg>,
	<midnight:hunter_wing>,
	<mist:meat_food>,
	<mist:meat_food:1>,
	<mist:meat_food:2>,
	<mist:meat_food:3>,
	<mist:meat_food:4>,
	<mist:meat_food:5>,
	<mist:meat_food:6>,
	<mist:meat_food:7>,
	<mist:meat_food:8>,
	<mist:meat_food:9>,
	<mist:meat_food:10>,
	<mist:meat_food:11>,
	<mist:meat_food:12>,
	<mist:meat_food:13>,
	<twilightforest:raw_venison>,
	<thebetweenlands:frog_legs_raw>,
	<thebetweenlands:snail_flesh_raw>,
	<thebetweenlands:mire_snail_egg>,
	<tp:bread_slice>,
	<xlfoodmod:raw_corn>,
	<xlfoodmod:dough>,
	<twilightforest:raw_meef>,
	<xlfoodmod:raw_chicken_wing>,
	<xlfoodmod:onion>,
	<minecraft:sugar>,
	<xlfoodmod:rice>,
	<minecraft:dye:3>,
	<xlfoodmod:cheese>,
	<minecraft:egg>,
	<xlfoodmod:pepper>,
	<xlfoodmod:tomato>,
	<xlfoodmod:marshmallow>,
	<minecraft:rotten_flesh>,
	<natura:materials:2>,
	<tconstruct:spaghetti:2>,
	<minecraft:potato>,
	<botania:tinypotato>,
	<silentgems:food:3>,
	<erebus:materials:62>
] as IIngredient[];

val cookedfoods = [
	<tp:cooked_apple>,
	<minecraft:cooked_chicken>,
	<minecraft:cooked_mutton>,
	<minecraft:cooked_porkchop>,
	<minecraft:cooked_beef>,
	<minecraft:cooked_fish:1>,
	<minecraft:cooked_fish>,
	<minecraft:cooked_rabbit>,
	<aquaculture:food:4>,
	<aquaculture:food:5>,
	<atum:camel_cooked>,
	<netherex:ghast_meat_cooked>,
	<natura:edibles:1>,
	<tp:toasted_bread>,
	<blue_skies:venison_steak>,
	<midnight:cook_suavis>,
	<midnight:cook_stag_flank>,
	<midnight:cook_stinger_egg>,
	<midnight:cook_hunter_wing>,
	<mist:meat_cook>,
	<mist:meat_cook:1>,
	<mist:meat_cook:2>,
	<mist:meat_cook:3>,
	<mist:meat_cook:4>,
	<mist:meat_cook:5>,
	<mist:meat_cook:6>,
	<mist:meat_cook:7>,
	<mist:meat_cook:8>,
	<mist:meat_cook:9>,
	<mist:meat_cook:10>,
	<mist:meat_cook:11>,
	<mist:meat_cook:12>,
	<mist:meat_cook:13>,
	<twilightforest:cooked_venison>,
	<thebetweenlands:frog_legs_cooked>,
	<thebetweenlands:snail_flesh_cooked>,
	<thebetweenlands:mire_snail_egg_cooked>,
	<actuallyadditions:item_food:10>,
	<xlfoodmod:corn>,
	<xlfoodmod:cooked_dough>,
	<twilightforest:cooked_meef>,
	<xlfoodmod:cooked_chicken_wing>,
	<xlfoodmod:onion_rings>,
	<xlfoodmod:marshmallow>,
	<xlfoodmod:fried_rice>,
	<xlfoodmod:chocolate_syrup>,
	<xlfoodmod:cheese_puff>,
	<xlfoodmod:fried_egg>,
	<xlfoodmod:hot_sauce>,
	<xlfoodmod:tomato_sauce>,
	<xlfoodmod:roasted_marshmallow>,
	<xlfoodmod:flesh>,
	<minecraft:bread>,
	<tconstruct:moms_spaghetti>,
	<minecraft:baked_potato>,
	<minecraft:baked_potato>,
	<silentgems:food:4>,
	<erebus:erebus_food:16>
] as IItemStack[];

for i, raw in foods {
	furnace.addRecipe(cookedfoods[i], raw, 0.1);
}

//terracotta

val glazed = [
<minecraft:white_glazed_terracotta>,
<minecraft:orange_glazed_terracotta>,
<minecraft:magenta_glazed_terracotta>,
<minecraft:light_blue_glazed_terracotta>,
<minecraft:yellow_glazed_terracotta>,
<minecraft:lime_glazed_terracotta>,
<minecraft:pink_glazed_terracotta>,
<minecraft:gray_glazed_terracotta>,
<minecraft:silver_glazed_terracotta>,
<minecraft:cyan_glazed_terracotta>,
<minecraft:purple_glazed_terracotta>,
<minecraft:blue_glazed_terracotta>,
<minecraft:brown_glazed_terracotta>,
<minecraft:green_glazed_terracotta>,
<minecraft:red_glazed_terracotta>,
<minecraft:black_glazed_terracotta>
] as IItemStack[];

for i, colors in glazed {
	furnace.addRecipe(colors, <minecraft:stained_hardened_clay>.definition.makeStack(i), 0.5);
}

//clay
val unfired = [
<ceramics:unfired_clay:4>,
<ceramics:unfired_clay:6>,
<ceramics:unfired_clay:7>,
<ceramics:unfired_clay>,
<ceramics:unfired_clay:1>,
<ceramics:clay_soft>
] as IItemStack[];

val fired = [
<ceramics:unfired_clay:5>,
<ceramics:faucet>,
<ceramics:channel>,
<ceramics:clay_bucket>,
<ceramics:clay_shears>,
<ceramics:porcelain>
] as IItemStack[];

for i, raw in unfired {
	furnace.addRecipe(fired[i], raw, 0.1);
}

//thickened glass
furnace.addRecipe(<extrautils2:decorativeglass>, <extrautils2:decorativesolid:4>, 0.2);

//sky stone
furnace.addRecipe(<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:sky_stone_block>, 0.2);

//cactus
furnace.addRecipe(<minecraft:dye:2>, <minecraft:cactus>, 0.2);

//soulstone
furnace.addRecipe(<mysticalagriculture:soulstone>, <mysticalagriculture:soulstone:1>, 0.2);

//pink essence
furnace.addRecipe(<gaiadimension:pink_essence>, <gaiadimension:gaia_stone>, 0.5);