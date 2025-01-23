#priority 550
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crafttweaker.early.util.GlobalHelper as Helper;
import scripts.crafttweaker.early.util.Globals as Global;

static extraAxes as IItemStack[] = [
    <enderio:item_capacitor_totemic>
];

static extraChestplates as IItemStack[] = [
    <botania:terrasteelchest>
];

static extraHelmets as IItemStack[] = [
    <actuallyadditions:item_helm_crystal_blue>,
    <actuallyadditions:item_helm_crystal_red>,
    <actuallyadditions:item_helm_crystal_white>,
    <botania:terrasteelhelm>,
    <botania:terrasteelhelmreveal>,
    <draconicevolution:draconic_helm>
];

static extraLegs as IItemStack[] = [
    <extraplanets:tier1_space_suit_legings:*>
];

static extraSwords as IItemStack[] = [
    <xreliquary:magicbane>
];

//generic
oreDict.aoaAll.addItems(Global.aoaAll);

oreDict.beeCombBlock.addItems([
    <biomesoplenty:hive:3>,
    <forestry:bee_combs_0:*>,
    <forestry:bee_combs_1>
]);

oreDict.netherGrass.addItems([
    <biomesoplenty:grass:6>
]);

oreDict.oreCobalt.addItems([
    <zollerngalaxy:edencobaltore>,
    <zollerngalaxy:kriffcobaltore>,
    <zollerngalaxy:purgcobaltore>
]);

oreDict.overgrownStone.addItems([
    <biomesoplenty:grass:1>
]);

oreDict.pressurizedTank.addItems([
    <enderio:block_tank:1>
]);

//plants
oreDict.bushPlant.addItems([
    <minecraft:deadbush>,
    <thebetweenlands:dead_weedwood_bush>
]);

oreDict.fernPlant.addItems([
    <greenery:plant/upland/tall/eagle_fern>,
    <minecraft:tallgrass:2>
]);

oreDict.grassPlant.addItems([
    <aether:tall_aether_grass:*>,
    <aoa3:blue_candy_grass>,
    <aoa3:candy_grass>,
    <aoa3:creep_grass>,
    <aoa3:dawn_grass>,
    <aoa3:dead_grass>,
    <aoa3:deep_grass>,
    <aoa3:garden_grass>,
    <aoa3:haven_grass_plant>,
    <aoa3:iro_grass>,
    <aoa3:lucon_grass>,
    <aoa3:rainbow_grass>,
    <aoa3:rainbow_grass2>,
    <aoa3:rainbow_grass3>,
    <atum:oasis_grass>,
    <biomesoplenty:plant_0>,
    <biomesoplenty:plant_0:1>,
    <biomesoplenty:plant_0:7>,
    <biomesoplenty:plant_0:8>,
    <biomesoplenty:plant_0:13>,
    <biomesoplenty:plant_0:14>,
    <biomesoplenty:plant_1>,
    <blue_skies:cherry_tallgrass>,
    <blue_skies:turquoise_tallgrass>,
    <extraplanets:kepler22b_flowers:*>,
    <glacidus:lumicia_tallgrass>,
    <goodnightsleep:tall_dream_grass>,
    <greenery:plant/upland/tall/barley>,
    <greenery:plant/upland/tall/foxtail>,
    <greenery:plant/upland/tall/ryegrass>,
    <minecraft:double_plant:2>,
    <minecraft:tallgrass:1>,
    <theaurorian:auroriantallgrass>,
    <theaurorian:auroriantallgrasslight>,
    <traverse:dead_grass>,
    <traverse:cold_grass>
]);

oreDict.lightningStorage.addItems([
    <lightningcraft:lightning_cell>,
    <lightningcraft:lightning_cell:1>,
    <lightningcraft:lightning_cell:2>,
    <lightningcraft:lightning_cell:3>
]);

oreDict.vaguelyGrass.addItems([
    <aether:tall_aether_grass:*>,
    <aoa3:blue_candy_grass>,
    <aoa3:candy_grass>,
    <aoa3:creep_grass>,
    <aoa3:dawn_grass>,
    <aoa3:dead_grass>,
    <aoa3:deep_grass>,
    <aoa3:garden_grass>,
    <aoa3:haven_grass_plant>,
    <aoa3:iro_grass>,
    <aoa3:lucon_grass>,
    <aoa3:rainbow_grass>,
    <aoa3:rainbow_grass2>,
    <aoa3:rainbow_grass3>,
    <atum:dead_grass>,
    <atum:oasis_grass>,
    <biomesoplenty:plant_0>,
    <biomesoplenty:plant_0:1>,
    <biomesoplenty:plant_0:7>,
    <biomesoplenty:plant_0:8>,
    <biomesoplenty:plant_0:13>,
    <biomesoplenty:plant_0:14>,
    <biomesoplenty:plant_1>,
    <blue_skies:cherry_tallgrass>,
    <blue_skies:turquoise_tallgrass>,
    <extraplanets:kepler22b_flowers:*>,
    <goodnightsleep:tall_dream_grass>,
    <goodnightsleep:tall_nightmare_grass>,
    <greenery:plant/emergent/cattail>,
    <greenery:plant/emergent/pickerelweed>,
    <greenery:plant/upland/tall/barley>,
    <greenery:plant/upland/tall/eagle_fern>,
    <greenery:plant/upland/tall/foxtail>,
    <greenery:plant/upland/tall/nettle>,
    <greenery:plant/upland/tall/ryegrass>,
    <greenery:plant/submerged/kelp>,
    <greenery:plant/submerged/seagrass>,
    <greenery:plant/submerged/watermilfoil>,
    <minecraft:double_plant:2>,
    <minecraft:tallgrass:*>,
    <theaurorian:auroriantallgrass>,
    <theaurorian:auroriantallgrasslight>,
    <thebetweenlands:dead_weedwood_bush>,
    <traverse:dead_grass>,
    <traverse:cold_grass>
]);

oreDict.waterPlant.addItems([
    <greenery:plant/emergent/cattail>,
    <greenery:plant/emergent/pickerelweed>,
    <greenery:plant/submerged/kelp>,
    <greenery:plant/submerged/seagrass>,
    <greenery:plant/submerged/watermilfoil>
]);

//enchantables
addEnchantItems("axe",Global.axes,extraAxes);
addEnchantItems("boots",Global.boots);
addEnchantItems("bow",Global.bows);
addEnchantItems("chest",Global.chestplates,extraChestplates);
addEnchantItems("fishing",Global.fishingrods);
addEnchantItems("helm",Global.helmets,extraHelmets);
addEnchantItems("hoe",Global.hoes);
addEnchantItems("legs",Global.leggings,extraLegs);
addEnchantItems("shears",Global.shears);
addEnchantItems("shovel",Global.shovels);
addEnchantItems("sword",Global.swords,extraSwords);

function addEnchantItems(name as string, items as IItemStack[], extraItems as IItemStack[] = []) {
    val entry as IOreDictEntry = Global.enchant[name]; 
    entry.addItems(Helper.getEnchantItems(name,items));
    entry.addItems(extraItems);
}