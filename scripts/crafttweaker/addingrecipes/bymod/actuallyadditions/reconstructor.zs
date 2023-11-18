import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.actuallyadditions.AtomicReconstructor;

//reconstructed materials
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:2>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:4>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:5>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <actuallyadditions:item_dust:4>, 150);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <zollerngalaxy:diamonddust>, 200);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <thermalfoundation:material:768>, 100);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <zollerngalaxy:emeralddust>, 200);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <thermalfoundation:material>, 100);

//black quartz
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_misc:5>, <botania:quartz>, 1000);

//ebonite block
mods.actuallyadditions.AtomicReconstructor.addRecipe(<midnight:ebonys_block>, <actuallyadditions:block_crystal_empowered:3>, 100000);

//botania flowers
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:0>, <silentgems:glowrose:15>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:9>, <silentgems:glowrose:9>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:11>, <silentgems:glowrose:10>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:10>, <silentgems:glowrose:11>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:2>, <silentgems:glowrose:12>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:14>, <silentgems:glowrose:0>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:4>, <silentgems:glowrose:4>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:12>, <silentgems:glowrose:1>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:15>, <silentgems:glowrose:14>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:13>, <silentgems:glowrose:6>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:5>, <silentgems:glowrose:5>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:8>, <silentgems:glowrose:7>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:7>, <silentgems:glowrose:3>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:3>, <silentgems:glowrose:8>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:1>, <silentgems:glowrose:2>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:flower:6>, <silentgems:glowrose:13>, 2500);

//silentgem roses
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:0>, <ore:dyeRed>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:1>, <ore:dyeBrown>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:2>, <ore:dyeOrange>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:3>, <ore:dyeGray>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:4>, <ore:dyeYellow>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:5>, <ore:dyeLime>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:6>, <ore:dyeGreen>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:7>, <ore:dyeLightGray>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:8>, <ore:dyeLightBlue>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:9>, <ore:dyeCyan>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:10>, <ore:dyeBlue>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:11>, <ore:dyePurple>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:12>, <ore:dyeMagenta>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:13>, <ore:dyePink>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:14>, <ore:dyeBlack>*2, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<silentgems:glowrose:15>, <ore:dyeWhite>*2, 5000);

//botania fertilizer
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:fertilizer>, <silentgems:glowrosefertilizer>, 10000);