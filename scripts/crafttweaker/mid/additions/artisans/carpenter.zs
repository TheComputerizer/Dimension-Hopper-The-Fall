#reloadable

import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static recipeHolders as Holder[] = [
  //immersiveengineering
  Util.simpleShaped(<immersiveengineering:wooden_decoration>*3, "fence", [<immersiveengineering:material>, <ore:plankTreatedWood>])
    .addTools({<ore:artisansHandsaw>:10}), //treated fences

  Util.simpleShaped(<immersiveengineering:wooden_device0:2>, "bench", [<ore:plankTreatedWood>, <minecraft:crafting_table>, <immersiveengineering:wooden_decoration>])
    .addTools({<ore:artisansHammer>:4}), //engineers workbench

  Util.dynamicShaped(<immersiveengineering:material>*2, {<ore:plankTreatedWood>:[0,1]}, 1, 2)
    .addTools({<ore:artisansHammer>:2}) //treated sticks
] as Holder[];

function run() {
  Artisans.build("carpenter", recipeHolders);
}