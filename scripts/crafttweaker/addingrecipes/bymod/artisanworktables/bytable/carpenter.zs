#reloadable

import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<immersiveengineering:wooden_decoration> * 3)
  .create();
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<minecraft:crafting_table>, null, <immersiveengineering:wooden_decoration>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<immersiveengineering:wooden_device0:2>)
  .create();
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<immersiveengineering:material> * 2)
  .create();