import crafttweaker.item.IItemStack;
import mods.enderio.SagMill;

SagMill.removeRecipe(<minecraft:coal_ore>);

//chaos ore
SagMill.removeRecipe(<silentgems:essenceore>);
SagMill.addRecipe([<silentgems:craftingmaterial:3>*3, <silentgems:craftingmaterial:3>*2, <silentgems:craftingmaterial:3>] as IItemStack[], [1, 0.66, 0.33] as float[], <silentgems:essenceore>, "MULTIPLY_OUTPUT", 500000, [500, 100, 50] as float[]);

//nickel ore
SagMill.removeRecipe(<thermalfoundation:ore:5>);
SagMill.addRecipe([<thermalfoundation:material:69>*2, <minecraft:cobblestone>] as IItemStack[], [1, 0.1] as float[], <thermalfoundation:ore:5>, "MULTIPLY_OUTPUT", 50000, [10, 2] as float[]);

//iridium ore
SagMill.removeRecipe(<thermalfoundation:ore:6>);
SagMill.addRecipe([<thermalfoundation:material:70>*2, <minecraft:cobblestone>] as IItemStack[], [1, 0.1] as float[], <thermalfoundation:ore:6>, "MULTIPLY_OUTPUT", 50000, [10, 2] as float[]);

//iron ore
SagMill.removeRecipe(<minecraft:iron_ore>);
SagMill.addRecipe([<thermalfoundation:material>*2, <minecraft:cobblestone>] as IItemStack[], [1, 0.1] as float[], <minecraft:iron_ore>, "MULTIPLY_OUTPUT", 50000, [10, 2] as float[]);

//silver ore
SagMill.removeRecipe(<thermalfoundation:ore:2>);
SagMill.addRecipe([<thermalfoundation:material:66>*2, <minecraft:cobblestone>] as IItemStack[], [1, 0.1] as float[], <minecraft:iron_ore>, "MULTIPLY_OUTPUT", 50000, [10, 2] as float[]);