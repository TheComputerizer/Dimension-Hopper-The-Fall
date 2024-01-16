#priority -2000

import mods.recipestages.Recipes;
import mods.zenstages.ZenStager as Stager;
import scripts.crafttweaker.staging;
import scripts.crafttweaker.staging.Init as Stages;

staging.Dimension.load();
staging.Items.load();
staging.Journeymap.load();
staging.Mob.load();
staging.Mod.load();
staging.Ore.load();

Recipes.setPackageStage("appeng", Stages.stageMap.keys);

Stager.buildAll();