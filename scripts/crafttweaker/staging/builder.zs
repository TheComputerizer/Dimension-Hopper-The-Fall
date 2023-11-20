#priority -2000

import mods.recipestages.Recipes;
import mods.zenstages.ZenStager as Stager;
import scripts.crafttweaker.staging.init as Stages;

scripts.crafttweaker.staging.mod.load();
scripts.crafttweaker.staging.dimension.load();
scripts.crafttweaker.staging.mob.load();
scripts.crafttweaker.staging.ore.load();
scripts.crafttweaker.staging.journeymap.load();
scripts.crafttweaker.staging.items.load();

Recipes.setPackageStage("appeng", Stages.stageMap.keys);

Stager.buildAll();