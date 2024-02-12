#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

var twilightKeyWinter = VanillaFactory.createItem("twilight_key_winter");
twilightKeyWinter.maxStackSize = 1;
twilightKeyWinter.register();

var twilightKeySwamp = VanillaFactory.createItem("twilight_key_swamp");
twilightKeySwamp.maxStackSize = 1;
twilightKeySwamp.register();

var twilightKeyForest = VanillaFactory.createItem("twilight_key_forest");
twilightKeyForest.maxStackSize = 1;
twilightKeyForest.register();

var twilightKey = VanillaFactory.createItem("twilight_key");
twilightKey.maxStackSize = 1;
twilightKey.register();

var swampKey = VanillaFactory.createItem("swamp_key");
swampKey.maxStackSize = 1;
swampKey.register();

var neptuneKey = VanillaFactory.createItem("neptunic_key");
neptuneKey.maxStackSize = 1;
neptuneKey.register();

var crazyCreeperEssence = VanillaFactory.createItem("crazy_creeper_essence");
crazyCreeperEssence.maxStackSize = 64;
crazyCreeperEssence.register();

var crazyZombieEssence = VanillaFactory.createItem("crazy_zombie_essence");
crazyZombieEssence.maxStackSize = 64;
crazyZombieEssence.register();

var crazySkeletonEssence = VanillaFactory.createItem("crazy_skeleton_essence");
crazySkeletonEssence.maxStackSize = 64;
crazySkeletonEssence.register();

var crazySpiderEssence = VanillaFactory.createItem("crazy_spider_essence");
crazySpiderEssence.maxStackSize = 64;
crazySpiderEssence.register();

var dimensionalsingularity = VanillaFactory.createItem("dimensional_singularity");
dimensionalsingularity.maxStackSize = 16;
dimensionalsingularity.register();

var finalsingularity = VanillaFactory.createItem("final_singularity");
finalsingularity.maxStackSize = 16;
finalsingularity.register();

var geneticchaos = VanillaFactory.createItem("genetically_unstable_chaos_crystal");
geneticchaos.maxStackSize = 16;
geneticchaos.register();

var empoweredessence = VanillaFactory.createItem("empowered_essence");
empoweredessence.maxStackSize = 16;
empoweredessence.register();

var conglomeratecrystal = VanillaFactory.createItem("conglomerate_crystal");
conglomeratecrystal.maxStackSize = 16;
conglomeratecrystal.register();

var divinewill = VanillaFactory.createItem("divine_will");
divinewill.maxStackSize = 64;
divinewill.register();

var impressiveingot = VanillaFactory.createItem("impressive_ingot");
impressiveingot.maxStackSize = 64;
impressiveingot.register();

var machineparts = VanillaFactory.createItem("machine_parts");
machineparts.maxStackSize = 64;
machineparts.register();

var armorcoreone = VanillaFactory.createItem("armor_core_1");
armorcoreone.maxStackSize = 4;
armorcoreone.register();
var armorcoretwo = VanillaFactory.createItem("armor_core_2");
armorcoretwo.maxStackSize = 4;
armorcoretwo.register();
var armorcorethree = VanillaFactory.createItem("armor_core_3");
armorcorethree.maxStackSize = 4;
armorcorethree.register();
var armorcorefour = VanillaFactory.createItem("armor_core_4");
armorcorefour.maxStackSize = 4;
armorcorefour.register();
var armorcorefive = VanillaFactory.createItem("armor_core_5");
armorcorefive.maxStackSize = 4;
armorcorefive.register();
var armorcoresix = VanillaFactory.createItem("armor_core_6");
armorcoresix.maxStackSize = 4;
armorcoresix.register();
var armorcoreseven = VanillaFactory.createItem("armor_core_7");
armorcoreseven.maxStackSize = 4;
armorcoreseven.register();
var armorcoreeight = VanillaFactory.createItem("armor_core_8");
armorcoreeight.maxStackSize = 4;
armorcoreeight.register();
var armorcorenine = VanillaFactory.createItem("armor_core_9");
armorcorenine.maxStackSize = 4;
armorcorenine.register();

//rockets
var rocketBlockone = VanillaFactory.createBlock("rocket_block_1", <blockmaterial:iron>);
rocketBlockone.setWitherProof(true);
rocketBlockone.setBlockHardness(35.0);
rocketBlockone.setBlockResistance(1000.0);
rocketBlockone.setToolClass("pickaxe");
rocketBlockone.setToolLevel(5);
rocketBlockone.setEntitySpawnable(false);
rocketBlockone.register();

var rocketBlocktwo = VanillaFactory.createBlock("rocket_block_2", <blockmaterial:iron>);
rocketBlocktwo.setWitherProof(true);
rocketBlocktwo.setBlockHardness(40.0);
rocketBlocktwo.setBlockResistance(1200.0);
rocketBlocktwo.setToolClass("pickaxe");
rocketBlocktwo.setToolLevel(5);
rocketBlocktwo.setEntitySpawnable(false);
rocketBlocktwo.register();

var rocketBoosterOne = VanillaFactory.createBlock("booster_block_1", <blockmaterial:iron>);
rocketBoosterOne.setBlockHardness(30.0);
rocketBoosterOne.setBlockResistance(1000.0);
rocketBoosterOne.setToolClass("pickaxe");
rocketBoosterOne.setToolLevel(5);
rocketBoosterOne.setEntitySpawnable(false);
rocketBoosterOne.axisAlignedBB = AxisAlignedBB.create(0.2, 0, 0.2, 0.8, 1, 0.8);
rocketBoosterOne.register();

var rocketBoosterTwo = VanillaFactory.createBlock("booster_block_2", <blockmaterial:iron>);
rocketBoosterTwo.setBlockHardness(60.0);
rocketBoosterTwo.setBlockResistance(1800.0);
rocketBoosterTwo.setToolClass("pickaxe");
rocketBoosterTwo.setToolLevel(5);
rocketBoosterTwo.setEntitySpawnable(false);
rocketBoosterTwo.axisAlignedBB = AxisAlignedBB.create(0.2, 0, 0.2, 0.8, 1, 0.8);
rocketBoosterTwo.register();

var rocketBlockthree = VanillaFactory.createBlock("rocket_block_3", <blockmaterial:iron>);
rocketBlockthree.setWitherProof(true);
rocketBlockthree.setBlockHardness(45.0);
rocketBlockthree.setBlockResistance(1400.0);
rocketBlockthree.setToolClass("pickaxe");
rocketBlockthree.setToolLevel(5);
rocketBlockthree.setEntitySpawnable(false);
rocketBlockthree.register();

var rocketBlockfour = VanillaFactory.createBlock("rocket_block_4", <blockmaterial:iron>);
rocketBlockfour.setWitherProof(true);
rocketBlockfour.setBlockHardness(50.0);
rocketBlockfour.setBlockResistance(1600.0);
rocketBlockfour.setToolClass("pickaxe");
rocketBlockfour.setToolLevel(5);
rocketBlockfour.setEntitySpawnable(false);
rocketBlockfour.register();

var rocketBlockfive = VanillaFactory.createBlock("rocket_block_5", <blockmaterial:iron>);
rocketBlockfive.setWitherProof(true);
rocketBlockfive.setBlockHardness(55.0);
rocketBlockfive.setBlockResistance(1800.0);
rocketBlockfive.setToolClass("pickaxe");
rocketBlockfive.setToolLevel(5);
rocketBlockfive.setEntitySpawnable(false);
rocketBlockfive.register();

var rocketBlocksix = VanillaFactory.createBlock("rocket_block_6", <blockmaterial:iron>);
rocketBlocksix.setWitherProof(true);
rocketBlocksix.setBlockHardness(60.0);
rocketBlocksix.setBlockResistance(2000.0);
rocketBlocksix.setToolClass("pickaxe");
rocketBlocksix.setToolLevel(5);
rocketBlocksix.setEntitySpawnable(false);
rocketBlocksix.register();

var rocketBlockseven = VanillaFactory.createBlock("rocket_block_7", <blockmaterial:iron>);
rocketBlockseven.setWitherProof(true);
rocketBlockseven.setBlockHardness(70.0);
rocketBlockseven.setBlockResistance(2500.0);
rocketBlockseven.setToolClass("pickaxe");
rocketBlockseven.setToolLevel(5);
rocketBlockseven.setEntitySpawnable(false);
rocketBlockseven.register();

var rocketBlockeight = VanillaFactory.createBlock("rocket_block_8", <blockmaterial:iron>);
rocketBlockeight.setWitherProof(true);
rocketBlockeight.setBlockHardness(80.0);
rocketBlockeight.setBlockResistance(3000.0);
rocketBlockeight.setToolClass("pickaxe");
rocketBlockeight.setToolLevel(5);
rocketBlockeight.setEntitySpawnable(false);
rocketBlockeight.register();

var rocketBlocknine = VanillaFactory.createBlock("rocket_block_9", <blockmaterial:iron>);
rocketBlocknine.setWitherProof(true);
rocketBlocknine.setBlockHardness(90.0);
rocketBlocknine.setBlockResistance(4000.0);
rocketBlocknine.setToolClass("pickaxe");
rocketBlocknine.setToolLevel(5);
rocketBlocknine.setEntitySpawnable(false);
rocketBlocknine.register();

var rocketBlockten = VanillaFactory.createBlock("rocket_block_10", <blockmaterial:iron>);
rocketBlockten.setWitherProof(true);
rocketBlockten.setBlockHardness(100.0);
rocketBlockten.setBlockResistance(5000.0);
rocketBlockten.setToolClass("pickaxe");
rocketBlockten.setToolLevel(5);
rocketBlockten.setEntitySpawnable(false);
rocketBlockten.register();

var nepdimstone = VanillaFactory.createBlock("neptune_dimensional_stone", <blockmaterial:rock>);
nepdimstone.setWitherProof(true);
nepdimstone.setBlockHardness(10.0);
nepdimstone.setBlockResistance(5000.0);
nepdimstone.setToolClass("pickaxe");
nepdimstone.setToolLevel(5);
nepdimstone.setEntitySpawnable(false);
nepdimstone.register();

var oilcrackone = VanillaFactory.createBlock("oil_core_one", <blockmaterial:iron>);
oilcrackone.setWitherProof(true);
oilcrackone.setBlockHardness(10.0);
oilcrackone.setBlockResistance(5000.0);
oilcrackone.setToolClass("pickaxe");
oilcrackone.setToolLevel(5);
oilcrackone.setEntitySpawnable(false);
oilcrackone.register();

var oilcracktwo = VanillaFactory.createBlock("oil_core_two", <blockmaterial:iron>);
oilcracktwo.setWitherProof(true);
oilcracktwo.setBlockHardness(10.0);
oilcracktwo.setBlockResistance(5000.0);
oilcracktwo.setToolClass("pickaxe");
oilcracktwo.setToolLevel(5);
oilcracktwo.setEntitySpawnable(false);
oilcracktwo.register();

var oilcrackthree = VanillaFactory.createBlock("oil_core_three", <blockmaterial:iron>);
oilcrackthree.setWitherProof(true);
oilcrackthree.setBlockHardness(10.0);
oilcrackthree.setBlockResistance(5000.0);
oilcrackthree.setToolClass("pickaxe");
oilcrackthree.setToolLevel(5);
oilcrackthree.setEntitySpawnable(false);
oilcrackthree.register();

var factoryone = VanillaFactory.createBlock("factory_core_one", <blockmaterial:iron>);
factoryone.setWitherProof(true);
factoryone.setBlockHardness(10.0);
factoryone.setBlockResistance(5000.0);
factoryone.setToolClass("pickaxe");
factoryone.setToolLevel(5);
factoryone.setEntitySpawnable(false);
factoryone.register();

var factorytwo = VanillaFactory.createBlock("factory_core_two", <blockmaterial:iron>);
factorytwo.setWitherProof(true);
factorytwo.setBlockHardness(10.0);
factorytwo.setBlockResistance(5000.0);
factorytwo.setToolClass("pickaxe");
factorytwo.setToolLevel(5);
factorytwo.setEntitySpawnable(false);
factorytwo.register();

var factorythree = VanillaFactory.createBlock("factory_core_three", <blockmaterial:iron>);
factorythree.setWitherProof(true);
factorythree.setBlockHardness(10.0);
factorythree.setBlockResistance(5000.0);
factorythree.setToolClass("pickaxe");
factorythree.setToolLevel(5);
factorythree.setEntitySpawnable(false);
factorythree.register();

var psionicone = VanillaFactory.createBlock("psionic_core_one", <blockmaterial:iron>);
psionicone.setWitherProof(true);
psionicone.setBlockHardness(10.0);
psionicone.setBlockResistance(5000.0);
psionicone.setToolClass("pickaxe");
psionicone.setToolLevel(5);
psionicone.setEntitySpawnable(false);
psionicone.register();

var psionictwo = VanillaFactory.createBlock("psionic_core_two", <blockmaterial:iron>);
psionictwo.setWitherProof(true);
psionictwo.setBlockHardness(10.0);
psionictwo.setBlockResistance(5000.0);
psionictwo.setToolClass("pickaxe");
psionictwo.setToolLevel(5);
psionictwo.setEntitySpawnable(false);
psionictwo.register();

var psionicthree = VanillaFactory.createBlock("psionic_core_three", <blockmaterial:iron>);
psionicthree.setWitherProof(true);
psionicthree.setBlockHardness(10.0);
psionicthree.setBlockResistance(5000.0);
psionicthree.setToolClass("pickaxe");
psionicthree.setToolLevel(5);
psionicthree.setEntitySpawnable(false);
psionicthree.register();

var bloq = VanillaFactory.createBlock("bloq", <blockmaterial:iron>);
bloq.setWitherProof(true);
bloq.setBlockHardness(10.0);
bloq.setBlockResistance(5000.0);
bloq.setToolClass("pickaxe");
bloq.setToolLevel(8);
bloq.setEntitySpawnable(false);
bloq.register();

var mekwall = VanillaFactory.createBlock("mek_wall", <blockmaterial:iron>);
mekwall.setWitherProof(true);
mekwall.setBlockHardness(30.0);
mekwall.setBlockResistance(1400.0);
mekwall.setToolClass("pickaxe");
mekwall.setToolLevel(4);
mekwall.setEntitySpawnable(false);
mekwall.register();

var divinemekwall = VanillaFactory.createBlock("divine_mek_wall", <blockmaterial:iron>);
divinemekwall.setWitherProof(true);
divinemekwall.setBlockHardness(50.0);
divinemekwall.setBlockResistance(1600.0);
divinemekwall.setToolClass("pickaxe");
divinemekwall.setToolLevel(5);
divinemekwall.setEntitySpawnable(false);
divinemekwall.register();

var largecircuit = VanillaFactory.createBlock("large_circuit", <blockmaterial:iron>);
largecircuit.setWitherProof(true);
largecircuit.setBlockHardness(10.0);
largecircuit.setBlockResistance(200.0);
largecircuit.setToolClass("pickaxe");
largecircuit.setToolLevel(3);
largecircuit.setEntitySpawnable(false);
largecircuit.register();

var largedivinecircuit = VanillaFactory.createBlock("divine_large_circuit", <blockmaterial:iron>);
largedivinecircuit.setWitherProof(true);
largedivinecircuit.setBlockHardness(25.0);
largedivinecircuit.setBlockResistance(500.0);
largedivinecircuit.setToolClass("pickaxe");
largedivinecircuit.setToolLevel(4);
largedivinecircuit.setEntitySpawnable(false);
largedivinecircuit.register();

var industrialventilation = VanillaFactory.createBlock("industrial_ventilation", <blockmaterial:iron>);
industrialventilation.setWitherProof(true);
industrialventilation.setBlockHardness(25.0);
industrialventilation.setBlockResistance(500.0);
industrialventilation.setToolClass("pickaxe");
industrialventilation.setToolLevel(4);
industrialventilation.setEntitySpawnable(false);
industrialventilation.register();

var affixedmachineparts = VanillaFactory.createBlock("affixed_machine_parts", <blockmaterial:iron>);
affixedmachineparts.setWitherProof(true);
affixedmachineparts.setBlockHardness(2.0);
affixedmachineparts.setBlockResistance(20.0);
affixedmachineparts.setToolClass("pickaxe");
affixedmachineparts.setToolLevel(3);
affixedmachineparts.setEntitySpawnable(false);
affixedmachineparts.register();

var heartofthemachinegod = VanillaFactory.createBlock("heart_of_the_machine_god", <blockmaterial:iron>);
heartofthemachinegod.setWitherProof(true);
heartofthemachinegod.setBlockHardness(100.0);
heartofthemachinegod.setBlockResistance(2000.0);
heartofthemachinegod.setToolClass("pickaxe");
heartofthemachinegod.setToolLevel(6);
heartofthemachinegod.setEntitySpawnable(false);
heartofthemachinegod.register();