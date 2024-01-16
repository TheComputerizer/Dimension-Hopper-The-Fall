#reloadable

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Tables as Util;
import scripts.crafttweaker.mid.additions.artisans.Universal as Artisans;

static compressionLists as Holder[][] = [
  Util.compressed(<minecraft:stone>, <overloaded:compressed_stone>, 125, 12), //compressed stone
  Util.compressed(<minecraft:cobblestone>, <overloaded:compressed_cobblestone>, 100, 10), //compressed cobblestone
  Util.compressed(<minecraft:gravel>, <overloaded:compressed_gravel>, 75, 7), //compressed gravel
  Util.compressed(<minecraft:dirt>, <overloaded:compressed_dirt>, 50, 5), //compressed dirt
  Util.compressed(<minecraft:sand>, <overloaded:compressed_sand>, 25, 2), //compressed sand
  Util.compressed(<minecraft:netherrack>, <overloaded:compressed_netherrack>, 75, 7), //compressed netherrack
] as Holder[][];

function run() {
	Artisans.buildNested("mason", compressionLists);
}