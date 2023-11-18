#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("tailor")
  .setShaped([
    [<botania:manaresource:16>, <botania:manaresource:16>],
    [<botania:manaresource:16>, <botania:manaresource:16>]])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<botania:manaresource:22>)
  .create();