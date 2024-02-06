#reloadable

import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.recipes.IRecipeFunction;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static shapedHolders as Holder[] = [
  //artisanworktables
  Util.simpleShaped(<artisanworktables:workstation:7>, "corners", [
    <artisanworktables:worktable:7>, 
    <naturesaura:aura_trove>,
    <botania:rune:13>,
    <botania:rune:14>,
    <botania:rune:12>,
    <botania:rune:15>])
    .addTools({<ore:artisansGrimoire>:100})
    .addFluids([<liquid:mana>*4000]), //mages workstation

  Util.simpleShaped(<artisanworktables:workshop:7>, "plus", [<artisanworktables:workstation:7>, <naturesaura:generator_limit_remover>, <avaritiatweaks:gaia_block>])
    .addTools({<ore:artisansGrimoire>:200,<ore:artisansAthame>:200})
    .addFluids([<liquid:mana>*8000]), //mages workshop

  //botania
  Util.simpleShaped(<botania:lens>, "plus", [<psicosts:material_glassy>, <moreplates:manasteel_plate>, null])
    .addTools({<ore:artisansGrimoire>:13}), //mana lens

  Util.simpleShaped(<botania:lens>, "plus", [<botania:manaresource:2>, <botania:livingrock0slab>, <botania:livingrock>])
    .addTools({<ore:artisansGrimoire>:37})
    .addFluids([<liquid:mana>*2000]), //mana tablet

  Util.simpleShaped(<botania:grasshorn>, "horn", [<botania:grassseeds>, <botania:livingwood>])
    .addTools({<ore:artisansGrimoire>:1}), //horn of the wild

  Util.simpleShaped(<botania:manaresource:14>, "plus", [<botania:manaresource:4>, <botania:manaresource:5>, null])
    .addTools({<ore:artisansGrimoire>:77,<ore:artisansAthame>:77})
    .addFluids([<liquid:terrasteel>*72]), //gaia ingot

  Util.smallShaped(<botania:manaresource:22>, "block", [<botania:manaresource:16>])
    .addTools({<ore:artisansNeedle>:7}), //manaweave cloth

  Util.simpleShaped(<botania:manaring>, "band", [<botania:manatablet>, <moreplates:manasteel_plate>, <botania:manaresource:1>])
    .addTools({<ore:artisansGrimoire>:33,<ore:artisansAthame>:33}), //band of mana

  Util.simpleShaped(<botania:travelbelt>, "corners", [null, <natura:materials:6>, <botania:rune:2>, null, <moreplates:manasteel_gear>, <botania:rune:3>])
    .addTools({<ore:artisansGrimoire>:65,<ore:artisansAthame>:65})
    .addFluids([<liquid:mana>*144]), //soujourners sash

  Util.simpleShaped(<botania:icependant>, "corners", [null, <botania:manaresource:16>, <botania:rune:7>, null, <cavern:slippery_ice>, <botania:rune>])
    .addTools({<ore:artisansGrimoire>:57,<ore:artisansAthame>:57})
    .addFluids([<liquid:mana>*720]), //snowflake pendant

  Util.simpleShaped(<botania:lavapendant>, "corners", [null, <botania:manaresource:16>, <botania:rune:5>, null, <thebetweenlands:items_misc:18>, <botania:rune:1>])
    .addTools({<ore:artisansGrimoire>:59,<ore:artisansAthame>:59})
    .addFluids([<liquid:mana>*864]), //pyroclast pendant

  Util.simpleShaped(<botania:magnetring>, "band", [null, <moreplates:manasteel_plate>, <botania:lens:10>])
    .addTools({<ore:artisansGrimoire>:38,<ore:artisansAthame>:38})
    .addFluids([<liquid:mana>*596]), //ring of magnetization

  Util.simpleShaped(<botania:pixiering>, "band", [null, <moreplates:elementium_plate>, <botania:manaresource:8>])
    .addTools({<ore:artisansGrimoire>:42,<ore:artisansAthame>:42})
    .addFluids([<liquid:mana>*720]), //great fairy ring

  Util.simpleShaped(<botania:reachring>, "band", [null, <moreplates:elementium_plate>, <botania:rune:15>])
    .addTools({<ore:artisansGrimoire>:47,<ore:artisansAthame>:47})
    .addFluids([<liquid:mana>*864]), //ring of far reach

  Util.simpleShaped(<botania:swapring>, "band", [null, <moreplates:manasteel_plate>, <minecraft:clay>])
    .addTools({<ore:artisansGrimoire>:13,<ore:artisansAthame>:13})
    .addFluids([<liquid:mana>*288]), //ring of correction

  Util.simpleShaped(<botania:dodgering>, "corners", [null, <moreplates:manasteel_plate>, <moreplates:emeradic_plate>, null, null, <botania:rune:3>])
    .addTools({<ore:artisansGrimoire>:72,<ore:artisansAthame>:72})
    .addFluids([<liquid:mana>*720]), //ring of dexterous motion

  Util.simpleShaped(<botania:cloudpendant>, "corners", [null, <botania:manaresource:16>, <botania:rune:6>, null, <moreplates:manasteel_gear>, <botania:rune:3>])
    .addTools({<ore:artisansGrimoire>:82,<ore:artisansAthame>:82})
    .addFluids([<liquid:mana>*720]), //cirrus amulet

  Util.simpleShaped(<botania:itemfinder>, "wrap", [<minecraft:ender_eye>, <moreplates:emeradic_plate>, <moreplates:electrical_steel_plate>])
    .addTools({<ore:artisansGrimoire>:69,<ore:artisansAthame>:69})
    .addFluids([<liquid:mana>*462]), //the spectator

  Util.simpleShaped(<botania:thirdeye>, "spatial", [
    <minecraft:ender_eye>, 
    <botania:rune:2>, 
    <botania:quartztypeelf>,
    <botania:quartztypeelf>, 
    <botania:manaresource:2>, 
    <extrabees:honey_comb:75>])
    .addTools({<ore:artisansGrimoire>:68,<ore:artisansAthame>:68})
    .addFluids([<liquid:mana>*1296]), //third eye

  Util.bigShaped(<botania:superlavapendant>, "super", [
    <botania:lavapendant>, 
    <botania:manaresource:16>,
    <netherex:blazed_wither_bone>,
    <botania:manaresource:5>,
    <minecraft:nether_brick>, null])
    .addTools({<ore:artisansGrimoire>:101,<ore:artisansAthame>:101,<ore:artisansPliers>:101})
    .addFluids([<liquid:terrasteel>*720]), //crimson pendant

  Util.bigShaped(<botania:holycloak>, "cloak", [<botania:manaresource:14>, <quark:quilted_wool>, <enderio:item_material:76>])
    .addTools({<ore:artisansGrimoire>:175,<ore:artisansAthame>:175,<ore:artisansPliers>:175})
    .addFluids([<liquid:terrasteel>*576]), //cloak of virtue

  Util.bigShaped(<botania:unholycloak>, "cloak", [<botania:manaresource:14>, <quark:quilted_wool:15>, <tp:colored_dust:13>])
    .addTools({<ore:artisansGrimoire>:175,<ore:artisansAthame>:175,<ore:artisansPliers>:175})
    .addFluids([<liquid:terrasteel>*576]), //cloak of sin

  Util.bigShaped(<botania:unholycloak>, "cloak", [<botania:manaresource:14>, <quark:quilted_wool:8>, <zollerngalaxy:emeralddust>])
    .addTools({<ore:artisansGrimoire>:175,<ore:artisansAthame>:175,<ore:artisansPliers>:175})
    .addFluids([<liquid:terrasteel>*576]), //cloak of balance

  Util.bigShaped(<botania:unholycloak>, "cloak", [<botania:manaresource:14>, <quark:quilted_wool:8>, <zollerngalaxy:emeralddust>])
    .addTools({<ore:artisansGrimoire>:175,<ore:artisansAthame>:175,<ore:artisansPliers>:175})
    .addFluids([<liquid:terrasteel>*576]), //cloak of balance

  Util.bigShaped(<botania:invisibilitycloak>, "cloak", [
    <minecraft:prismarine_crystals>, 
    <botania:manaresource:1>, 
    <quark:quilted_wool>, 
    <botania:managlass>])
    .addTools({<ore:artisansGrimoire>:111,<ore:artisansAthame>:111,<ore:artisansPliers>:111})
    .addFluids([<liquid:terrasteel>*288]), //invisibility cloak

  Util.bigMetaShaped(<botania:speedupbelt>, "sash", {
    <botania:travelbelt>:([0] as int[]),
    <minecraft:map>:([0] as int[]),
    <botania:grassseeds>:[0,5,3,6,4,8,7]}, 
    [<darkutils:material:3>])
    .addTools({<ore:artisansGrimoire>:127,<ore:artisansAthame>:127,<ore:artisansPliers>:127})
    .addFluids([<liquid:terrasteel>*720]), //planetstriders sash

  Util.bigShaped(<botania:supercloudpendant>, "amulet", [
    <botania:cloudpendant>,
    <netherex:ghast_queen_tear>, 
    <quark:quilted_wool>, 
    <botania:manaresource:5>])
    .addTools({<ore:artisansGrimoire>:107,<ore:artisansAthame>:107,<ore:artisansPliers>:107})
    .addFluids([<liquid:terrasteel>*464]), //nimbus amulet

  Util.bigShaped(<botania:divacharm>, "charm", [
    <botania:rune:15>,
    <botania:manatablet>, 
    <botania:manaresource:5>, 
    <silentgems:craftingmaterial:1>,
    <calculator:enrichedgold>,
    <moreplates:enriched_gold_gear>,
    <botania:tinyplanet>])
    .addTools({<ore:artisansGrimoire>:137,<ore:artisansAthame>:137,<ore:artisansPliers>:137})
    .addFluids([<liquid:terrasteel>*1152]), //charm of the diva

  Util.bigShaped(<botania:supertravelbelt>, "sashalt", [
    <botania:travelbelt>,
    <botania:manaresource:5>,
    <moreplates:elementium_plate>,
    <botania:manaresource:8>])
    .addTools({<ore:artisansGrimoire>:99,<ore:artisansAthame>:99,<ore:artisansPliers>:99})
    .addFluids([<liquid:terrasteel>*720]), //globetrotters sash

  Util.bigShaped(<botania:manaresource:5>, "gaia", [
    <moreplates:terrasteel_gear>,
    <randomthings:ingredient:2>,
    <randomthings:spectreilluminator>,
    <psi:material:6>,
    <psi:material:5>,
    <naturesaura:calling_spirit>,
    <botania:dye:6>,
    <botania:manatablet>.withTag({mana: 500000})])
    .addTools({<ore:artisansGrimoire>:123,<ore:artisansAthame>:123,<ore:artisansBeaker>:123})
    .addFluids([<liquid:binnie.spirit.neutral>*4000])
    .addExtras([<botania:manatablet>.withTag({mana: 450000})]), //automatable gaia spirits

  //mysticalagriculture
  Util.bigShaped(<mysticalagriculture:master_infusion_crystal>, "crystal", [
    <extrautils2:opinium:8>,
    <mysticalagriculture:infusion_crystal>, 
    <contenttweaker:empowered_essence>,
    <avaritiatweaks:gaia_block>,
    <silentgems:gemsuper:34>,
    <silentgems:miscblock:2>])
    .addTools({<ore:artisansGrimoire>:955,<ore:artisansAthame>:955,<ore:artisansBeaker>:955})
    .addFluids([<liquid:supremium>*576])
    .addExtras([<mysticalagriculture:crafting:44>,<mysticalagriculture:crafting:44>,<mysticalagriculture:crafting:44>])
    .addNumbers([90,60,30]), //master infusion crystal

  //overloaded
  Util.bigShaped(<overloaded:nether_star_block>, "thicc", [<xreliquary:witherless_rose>, <minecraft:nether_star>])
    .addTools({<ore:artisansHammer>:420,<ore:artisansAthame>:420,<ore:artisansGrimoire>:420})
    .addFluids([<liquid:superium>*1152])
    .addExtras([<lightningcraft:material>*3, <lightningcraft:material>*2, <lightningcraft:material>])
    .addNumbers([75,50,25]) //nether star block
] as Holder[];

static shapelessHolders as Holder[] = [
  //enderio
  Util.shapeless(<enderio:block_powered_spawner>, [<enderio:block_powered_spawner>, <enderio:item_broken_spawner>]).setMarkIndex(1)
    .addFunction(function(output, map, info) {
      val xp = info.player.xp as int;
      if(xp>=16) {
        val outputTag as IData = {entityId: map.mark.tag.entityId};
        return output.withTag(outputTag);
      }
      return output;
    } as IRecipeFunction)
    .addAction(function(out, map, player) {
      if(player.xp>=16) {
        player.xp-=16;
      }
    } as IRecipeAction)
    .addTools({<ore:artisansAthame>:100,<ore:artisansGrimoire>:100,<ore:artisansHammer>:100})
    .addFluids([<liquid:blood>*16000]) //powered spawner
] as Holder[];

function run() {
	Artisans.build("mage", shapedHolders, shapelessHolders);
}