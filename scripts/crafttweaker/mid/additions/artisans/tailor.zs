#reloadable

import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static recipeHolders as Holder[] = [
  //botania
  Util.smallShaped(<botania:manaresource:22>, "block", [<botania:manaresource:16>])
    .addTools({<ore:artisansNeedle>:7}) //manaweave cloth
] as Holder[];

function run() {
  Artisans.build("tailor",recipeHolders);
}