#reloadable

import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.tables as Util;
import scripts.crafttweaker.mid.additions.artisans.universal as Artisans;

static recipeHolders as Holder[] = [
  //immersiveengineering
  Util.simpleShaped(<immersiveengineering:wooden_decoration>*3, "fence", [<immersiveengineering:material>, <ore:plankTreatedWood>])
    .addTools({<ore:artisansHandsaw>:10}), //treated fences

  Util.simpleShaped(<immersiveengineering:wooden_device0:2>, "bench", [<ore:plankTreatedWood>, <minecraft:crafting_table>, <immersiveengineering:wooden_decoration>])
    .addTools({<ore:artisansHammer>:4}), //engineers workbench

  Util.simpleShaped(<immersiveengineering:material>*2, "stick", [<ore:plankTreatedWood>])
    .addTools({<ore:artisansHammer>:2}) //treated sticks
] as Holder[];

function build() {
  Artisans.build("carpenter", recipeHolders);
}