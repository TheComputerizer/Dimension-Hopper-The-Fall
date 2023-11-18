#priority -2000

import mods.recipestages.Recipes;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import scripts.crafttweaker.gamestagesinit.wight;
import scripts.crafttweaker.gamestagesinit.sludgeon;

scripts.crafttweaker.stageloading.mod.load();
scripts.crafttweaker.stageloading.dimension.load();
scripts.crafttweaker.stageloading.shop.load();
scripts.crafttweaker.stageloading.mob.load();
scripts.crafttweaker.stageloading.ore.load();
scripts.crafttweaker.stageloading.journeymap.load();
scripts.crafttweaker.stageloading.items.load();

Recipes.setPackageStage("appeng", ["overworld","labyrinth","cavern","nether","shopper","swamp","planets","advent","deepdown","deepspace","finalfrontier","emc","bedrockfinal"]);

ZenStager.buildAll();