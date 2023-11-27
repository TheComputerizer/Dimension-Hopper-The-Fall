#reloadable

import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.tables as Util;
import scripts.crafttweaker.mid.additions.tables.artisans.universal as Artisans;

static recipeHolders as Holder[] = [
  //botania
  Util.smallShaped(<botania:manaresource:22>, "block", [<botania:manaresource:16>])
    .addTools({<ore:artisansNeedle>:7}) //manaweave cloth
] as Holder[];

function build() {
  Artisans.build("tailor",recipeHolders);
}