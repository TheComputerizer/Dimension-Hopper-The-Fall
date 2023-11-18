#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;

//spawners
RecipeBuilder.get("mage")
  .setShapeless([<enderio:block_powered_spawner>, <enderio:item_broken_spawner>.marked("spawner").transformNew(function(item) { return item.withTag(item.tag - "entityId"); })])
  .setRecipeFunction(function (out, ins, cInfo) {
	if (ins.spawner.tag has "entityId") {
	  return out.withTag({entityId: ins.spawner.tag.entityId});
	}
	return <enderio:block_powered_spawner> as IItemStack;
  })
  .setRecipeAction(function (out, ins, player) {
	player.xp -= 16;
  })
  .setFluid(<liquid:blood> * 16000)
  .addTool(<ore:artisansAthame>, 100)
  .addTool(<ore:artisansGrimoire>, 100)
  .addTool(<ore:artisansHammer>, 100)
  .addOutput(<enderio:block_powered_spawner>)
  .create();

//mage t2
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:13>, <naturesaura:aura_trove>, <botania:rune:14>],
    [<naturesaura:aura_trove>, <artisanworktables:worktable:7>, <naturesaura:aura_trove>],
    [<botania:rune:12>, <naturesaura:aura_trove>, <botania:rune:15>]])
  .setFluid(<liquid:mana> * 4000)
  .addTool(<ore:artisansGrimoire>, 100)
  .addOutput(<artisanworktables:workstation:7>)
  .create();

//mage t3
RecipeBuilder.get("mage")
  .setShaped([
    [<avaritiatweaks:gaia_block>, <naturesaura:generator_limit_remover>, <avaritiatweaks:gaia_block>],
    [<naturesaura:generator_limit_remover>, <artisanworktables:workstation:7>, <naturesaura:generator_limit_remover>],
    [<avaritiatweaks:gaia_block>, <naturesaura:generator_limit_remover>, <avaritiatweaks:gaia_block>]])
  .setFluid(<liquid:mana> * 8000)
  .addTool(<ore:artisansGrimoire>, 200)
  .addTool(<ore:artisansAthame>, 200)
  .addOutput(<artisanworktables:workshop:7>)
  .create();

//nether star block
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>],
    [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>],
    [<minecraft:nether_star>, <minecraft:nether_star>, <xreliquary:witherless_rose>, <minecraft:nether_star>, <minecraft:nether_star>],
    [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>],
    [<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>]])
  .setFluid(<liquid:superium> * 1152)
  .addTool(<ore:artisansHammer>, 420)
  .addTool(<ore:artisansAthame>, 420)
  .addTool(<ore:artisansGrimoire>, 420)
  .addOutput(<overloaded:nether_star_block>)
  .setExtraOutputOne(<lightningcraft:material>*3, 0.75)
  .setExtraOutputTwo(<lightningcraft:material>*2, 0.50)
  .setExtraOutputThree(<lightningcraft:material>*1, 0.25)
  .create();

//mana lens
RecipeBuilder.get("mage")
  .setShaped([
    [null, <moreplates:manasteel_plate>, null],
    [<moreplates:manasteel_plate>, <psicosts:material_glassy>, <moreplates:manasteel_plate>],
    [null, <moreplates:manasteel_plate>, null]])
  .addTool(<ore:artisansGrimoire>, 13)
  .addOutput(<botania:lens>.withTag({}))
  .create();

//mana tablet
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:livingrock>, <botania:livingrock0slab>, <botania:livingrock>],
    [<botania:livingrock0slab>, <botania:manaresource:2>, <botania:livingrock0slab>],
    [<botania:livingrock>, <botania:livingrock0slab>, <botania:livingrock>]])
  .setFluid(<liquid:mana> * 2000)
  .addTool(<ore:artisansGrimoire>, 37)
  .addOutput(<botania:manatablet>.withTag({}))
  .create();

//horn of the wild
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:livingwood>, null],
    [<botania:livingwood>, <botania:grassseeds>, <botania:livingwood>],
    [<botania:livingwood>, <botania:livingwood>, null]])
  .addTool(<ore:artisansGrimoire>, 1)
  .addOutput(<botania:grasshorn>)
  .create();

//gaia ingot
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:manaresource:5>, null],
    [<botania:manaresource:5>, <botania:manaresource:4>, <botania:manaresource:5>],
    [null, <botania:manaresource:5>, null]])
  .setFluid(<liquid:terrasteel> * 72)
  .addTool(<ore:artisansGrimoire>, 77)
  .addTool(<ore:artisansAthame>, 77)
  .addOutput(<botania:manaresource:14>)
  .create();

  //band of mana
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:manaresource:1>, <moreplates:manasteel_plate>, null],
    [<moreplates:manasteel_plate>, <botania:manatablet>.withTag({}), <moreplates:manasteel_plate>],
    [null, <moreplates:manasteel_plate>, null]])
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 33)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 33)
  .addOutput(<botania:manaring>)
  .create();

  //soujourners sash
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:2>, <natura:materials:6>, null],
    [<natura:materials:6>, null, <natura:materials:6>],
    [<moreplates:manasteel_gear>, <natura:materials:6>, <botania:rune:3>]])
  .setFluid(<liquid:manasteel> * 144)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 65)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 65)
  .addOutput(<botania:travelbelt>)
  .create();

  //snowflake pendant
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:7>, <botania:manaresource:16>, null],
    [<botania:manaresource:16>, null, <botania:manaresource:16>],
    [<cavern:slippery_ice>, <botania:manaresource:16>, <botania:rune>]])
  .setFluid(<liquid:manasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 57)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 57)
  .addOutput(<botania:icependant>)
  .create();

  //pyroclast pendant
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:5>, <botania:manaresource:16>, null],
    [<botania:manaresource:16>, null, <botania:manaresource:16>],
    [<thebetweenlands:items_misc:18>, <botania:manaresource:16>, <botania:rune:1>]])
  .setFluid(<liquid:manasteel> * 864)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 59)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 59)
  .addOutput(<botania:lavapendant>)
  .create();

  //ring of magnetization
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens:10>.withTag({}), <moreplates:manasteel_plate>, null],
    [<moreplates:manasteel_plate>, null, <moreplates:manasteel_plate>],
    [null, <moreplates:manasteel_plate>, null]])
  .setFluid(<liquid:manasteel> * 596)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 38)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 38)
  .addOutput(<botania:magnetring>)
  .create();

  //charm of the diva
  RecipeBuilder.get("mage")
  .setShaped([
    [<silentgems:craftingmaterial:1>, <calculator:enrichedgold>, <botania:manaresource:5>, <botania:tinyplanet>, <botania:tinyplanet>],
    [<silentgems:craftingmaterial:1>, <botania:manaresource:5>, <botania:manaresource:5>, <moreplates:enriched_gold_gear>, <botania:tinyplanet>],
    [null, <botania:manatablet>.withTag({}), <botania:rune:15>, <botania:manaresource:5>, <botania:manaresource:5>],
    [null, null, <botania:manatablet>.withTag({}), <botania:manaresource:5>, <calculator:enrichedgold>],
    [null, null, null, <silentgems:craftingmaterial:1>, <silentgems:craftingmaterial:1>]])
  .setFluid(<liquid:terrasteel> * 1152)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 137)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 137)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 137)
  .addOutput(<botania:divacharm>)
  .create();

  //great fairy ring
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:manaresource:8>, <moreplates:elementium_plate>, null],
    [<moreplates:elementium_plate>, null, <moreplates:elementium_plate>],
    [null, <moreplates:elementium_plate>, null]])
  .setFluid(<liquid:manasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 42)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 42)
  .addOutput(<botania:pixiering>)
  .create();

  //gobetrotters sash
  RecipeBuilder.get("mage")
  .setShaped([
    [<moreplates:elementium_plate>, <botania:manaresource:8>, null, null, null],
    [<moreplates:elementium_plate>, <moreplates:elementium_plate>, <moreplates:elementium_plate>, <botania:manaresource:8>, null],
    [null, <botania:manaresource:5>, <botania:travelbelt>, <moreplates:elementium_plate>, null],
    [null, <botania:manaresource:5>, <botania:manaresource:5>, <moreplates:elementium_plate>, <botania:manaresource:8>],
    [null, null, null, <moreplates:elementium_plate>, <moreplates:elementium_plate>]])
  .setFluid(<liquid:terrasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 99)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 99)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 99)
  .addOutput(<botania:supertravelbelt>)
  .create();

  //ring of far reach
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:15>, <moreplates:elementium_plate>, null],
    [<moreplates:elementium_plate>, null, <moreplates:elementium_plate>],
    [null, <moreplates:elementium_plate>, null]])
  .setFluid(<liquid:manasteel> * 864)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 47)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 47)
  .addOutput(<botania:reachring>)
  .create();

  //the spectator
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <moreplates:electrical_steel_plate>, null],
    [<moreplates:electrical_steel_plate>, <minecraft:ender_eye>, <moreplates:electrical_steel_plate>],
    [<moreplates:electrical_steel_plate>, <moreplates:emeradic_plate>, <moreplates:electrical_steel_plate>]])
  .setFluid(<liquid:manasteel> * 462)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 69)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 69)
  .addOutput(<botania:itemfinder>)
  .create();

  //crimson pendant
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:nether_brick>, <netherex:blazed_wither_bone>, <minecraft:nether_brick>, null],
    [<minecraft:nether_brick>, <netherex:blazed_wither_bone>, <botania:manaresource:16>, <netherex:blazed_wither_bone>, <minecraft:nether_brick>],
    [<netherex:blazed_wither_bone>, <botania:manaresource:16>, <botania:lavapendant>.withTag({}), <botania:manaresource:16>, <netherex:blazed_wither_bone>],
    [<minecraft:nether_brick>, <botania:manaresource:5>, <botania:manaresource:16>, <botania:manaresource:5>, <minecraft:nether_brick>],
    [null, <minecraft:nether_brick>, <botania:manaresource:5>, <minecraft:nether_brick>, null]])
  .setFluid(<liquid:terrasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 101)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 101)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 101)
  .addOutput(<botania:superlavapendant>)
  .create();

  //cloak of virtue
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <enderio:item_material:76>, <enderio:item_material:76>, <enderio:item_material:76>, null],
    [<enderio:item_material:76>, <quark:quilted_wool>, <quark:quilted_wool>, <quark:quilted_wool>, <enderio:item_material:76>],
    [<enderio:item_material:76>, <quark:quilted_wool>, <botania:manaresource:14>, <quark:quilted_wool>, <enderio:item_material:76>],
    [<enderio:item_material:76>, <quark:quilted_wool>, <botania:manaresource:14>, <quark:quilted_wool>, <enderio:item_material:76>],
    [null, <enderio:item_material:76>, null, <enderio:item_material:76>, null]])
  .setFluid(<liquid:terrasteel> * 576)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 175)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 175)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 175)
  .addOutput(<botania:holycloak>)
  .create();

  //cloak of sin
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <tp:colored_dust:13>, <tp:colored_dust:13>, <tp:colored_dust:13>, null],
    [<tp:colored_dust:13>, <quark:quilted_wool:15>, <quark:quilted_wool:15>, <quark:quilted_wool:15>, <tp:colored_dust:13>],
    [<tp:colored_dust:13>, <quark:quilted_wool:15>, <botania:manaresource:14>, <quark:quilted_wool:15>, <tp:colored_dust:13>],
    [<tp:colored_dust:13>, <quark:quilted_wool:15>, <botania:manaresource:14>, <quark:quilted_wool:15>, <tp:colored_dust:13>],
    [null, <tp:colored_dust:13>, null, <tp:colored_dust:13>, null]])
  .setFluid(<liquid:terrasteel> * 576)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 175)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 175)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 175)
  .addOutput(<botania:unholycloak>)
  .create();

  //cloak of balance
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <zollerngalaxy:emeralddust>, <zollerngalaxy:emeralddust>, <zollerngalaxy:emeralddust>, null],
    [<zollerngalaxy:emeralddust>, <quark:quilted_wool:8>, <quark:quilted_wool:8>, <quark:quilted_wool:8>, <zollerngalaxy:emeralddust>],
    [<zollerngalaxy:emeralddust>, <quark:quilted_wool:8>, <botania:manaresource:14>, <quark:quilted_wool:8>, <zollerngalaxy:emeralddust>],
    [<zollerngalaxy:emeralddust>, <quark:quilted_wool:8>, <botania:manaresource:14>, <quark:quilted_wool:8>, <zollerngalaxy:emeralddust>],
    [null, <zollerngalaxy:emeralddust>, null, <zollerngalaxy:emeralddust>, null]])
  .setFluid(<liquid:terrasteel> * 576)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 175)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 175)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 175)
  .addOutput(<botania:balancecloak>)
  .create();

  //ring of correction
  RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:clay>, <moreplates:manasteel_plate>, null],
    [<moreplates:manasteel_plate>, null, <moreplates:manasteel_plate>],
    [null, <moreplates:manasteel_plate>, null]])
  .setFluid(<liquid:manasteel> * 288)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 13)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 13)
  .addOutput(<botania:swapring>)
  .create();

  //planetstriders sash
  RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <darkutils:material:3>, null, null],
    [null, <botania:grassseeds>, <minecraft:map>, <botania:grassseeds:5>, null],
    [<darkutils:material:3>, <botania:grassseeds:3>, <botania:travelbelt>, <botania:grassseeds:6>, <darkutils:material:3>],
    [null, <botania:grassseeds:4>, <botania:grassseeds:8>, <botania:grassseeds:7>, null],
    [null, null, <darkutils:material:3>, null, null]])
  .setFluid(<liquid:terrasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 127)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 127)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 127)
  .addOutput(<botania:speedupbelt>)
  .create();

  //ring of dexterous motion
  RecipeBuilder.get("mage")
  .setShaped([
    [<moreplates:emeradic_plate>, <moreplates:manasteel_plate>, null],
    [<moreplates:manasteel_plate>, null, <moreplates:manasteel_plate>],
    [null, <moreplates:manasteel_plate>, <botania:rune:3>]])
  .setFluid(<liquid:manasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 72)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 72)
  .addOutput(<botania:dodgering>)
  .create();

  //invisibility cloak
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:managlass>, <botania:managlass>, <botania:managlass>, null],
    [<botania:managlass>, <quark:quilted_wool>, <quark:quilted_wool>, <quark:quilted_wool>, <botania:managlass>],
    [<botania:managlass>, <quark:quilted_wool>, <minecraft:prismarine_crystals>, <quark:quilted_wool>, <botania:managlass>],
    [<botania:managlass>, <quark:quilted_wool>, <botania:manaresource:1>, <quark:quilted_wool>, <botania:managlass>],
    [null, <botania:managlass>, null, <botania:managlass>, null]])
  .setFluid(<liquid:terrasteel> * 288)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 111)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 111)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 111)
  .addOutput(<botania:invisibilitycloak>)
  .create();

  //cirrus amulet
  RecipeBuilder.get("mage")
  .setShaped([
    [<botania:rune:6>, <botania:manaresource:16>, null],
    [<botania:manaresource:16>, null, <botania:manaresource:16>],
    [<moreplates:manasteel_gear>, <botania:manaresource:16>, <botania:rune:3>]])
  .setFluid(<liquid:manasteel> * 720)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 82)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 82)
  .addOutput(<botania:cloudpendant>)
  .create();

  //nimbus amulet
  RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <botania:manaresource:5>, null, null],
    [null, <botania:manaresource:5>, <netherex:ghast_queen_tear>, <botania:manaresource:5>, null],
    [<botania:manaresource:5>, <netherex:ghast_queen_tear>, <botania:cloudpendant>, <netherex:ghast_queen_tear>, <botania:manaresource:5>],
    [<quark:quilted_wool>, <quark:quilted_wool>, <netherex:ghast_queen_tear>, <quark:quilted_wool>, <quark:quilted_wool>],
    [null, null, <quark:quilted_wool>, null, null]])
  .setFluid(<liquid:terrasteel> * 464)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 107)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 107)
  .addTool(<artisanworktables:artisans_pliers_manasteel>, 107)
  .addOutput(<botania:supercloudpendant>)
  .create();

  //third eye
  RecipeBuilder.get("mage")
  .setShaped([
    [<extrabees:honey_comb:75>, <botania:rune:2>, <extrabees:honey_comb:75>],
    [<botania:quartztypeelf>, <minecraft:ender_eye>, <botania:quartztypeelf>],
    [<extrabees:honey_comb:75>, <botania:manaresource:2>, <extrabees:honey_comb:75>]])
  .setFluid(<liquid:manasteel> * 1296)
  .addTool(<artisanworktables:artisans_grimoire_manasteel>, 68)
  .addTool(<artisanworktables:artisans_athame_manasteel>, 68)
  .addOutput(<botania:thirdeye>)
  .create();

  //Rocket Schematic T3 Duper
  RecipeBuilder.get("mage")
  .setShaped([
    [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <xlfoodmod:paper_cup>, <xlfoodmod:paper_cup>, <xlfoodmod:paper_cup>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <xlfoodmod:paper_cup>, <galacticraftplanets:schematic>, <xlfoodmod:paper_cup>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <xlfoodmod:paper_cup>, <xlfoodmod:paper_cup>, <xlfoodmod:paper_cup>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>]])
  .setFluid(<liquid:latex> * 16000)
  .addTool(<ore:artisansAthame>, 99)
  .addTool(<ore:artisansGrimoire>, 99)
  .addTool(<ore:artisansBurner>, 99)
  .addOutput(<galacticraftplanets:schematic>)
  .setExtraOutputOne(<galacticraftplanets:schematic>, 1.0)
  .create();

  //Gaia Spirit Automatable
  RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <randomthings:ingredient:2>, null, null],
    [null, <randomthings:ingredient:2>, <randomthings:spectreilluminator>, <randomthings:ingredient:2>, null],
    [<randomthings:ingredient:2>, <psi:material:6>, <moreplates:terrasteel_gear>, <psi:material:5>, <randomthings:ingredient:2>],
    [<randomthings:ingredient:2>, <naturesaura:calling_spirit>, <botania:dye:6>, <naturesaura:calling_spirit>, <randomthings:ingredient:2>],
    [null, <randomthings:ingredient:2>, <botania:manatablet>.withTag({mana: 500000}), <randomthings:ingredient:2>, null]])
  .setFluid(<liquid:binnie.spirit.neutral> * 4000)
  .addTool(<ore:artisansAthame>, 123)
  .addTool(<ore:artisansGrimoire>, 123)
  .addTool(<ore:artisansBeaker>, 123)
  .addOutput(<botania:manaresource:5>)
  .setExtraOutputOne(<botania:manatablet>.withTag({mana: 450000}), 1.0)
  .create();
  
  //master infusion crystal
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <silentgems:gemsuper:34>, <avaritiatweaks:gaia_block>, <silentgems:gemsuper:34>, null],
    [<silentgems:gemsuper:34>, <contenttweaker:empowered_essence>, <mysticalagriculture:infusion_crystal>, <contenttweaker:empowered_essence>, <silentgems:gemsuper:34>],
    [<silentgems:miscblock:2>, <mysticalagriculture:infusion_crystal>, <extrautils2:opinium:8>, <mysticalagriculture:infusion_crystal>, <silentgems:miscblock:2>],
    [<silentgems:gemsuper:34>, <contenttweaker:empowered_essence>, <mysticalagriculture:infusion_crystal>, <contenttweaker:empowered_essence>, <silentgems:gemsuper:34>],
    [null, <silentgems:gemsuper:34>, <avaritiatweaks:gaia_block>, <silentgems:gemsuper:34>, null]])
  .setFluid(<liquid:supremium> * 576)
  .addOutput(<mysticalagriculture:master_infusion_crystal>)
  .setExtraOutputOne(<mysticalagriculture:crafting:44>, 0.9)
  .setExtraOutputTwo(<mysticalagriculture:crafting:44>, 0.6)
  .setExtraOutputThree(<mysticalagriculture:crafting:44>, 0.3)
  .addTool(<ore:artisansAthame>, 955)
  .addTool(<ore:artisansGrimoire>, 955)
  .addTool(<ore:artisansBeaker>, 955)
  .create();