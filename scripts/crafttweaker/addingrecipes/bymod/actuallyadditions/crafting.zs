#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

recipes.addShaped("reconstructor",<actuallyadditions:block_atomic_reconstructor>, [
[<thermalfoundation:material:160>, <overloaded:compressed_cobblestone>, <thermalfoundation:material:160> ],
[<overloaded:compressed_cobblestone>, <actuallyadditions:block_misc:9>, <overloaded:compressed_cobblestone>],
[<thermalfoundation:material:160>, <overloaded:compressed_cobblestone>, <thermalfoundation:material:160> ]
]);

recipes.addShaped("casing",<actuallyadditions:block_misc:9>, [
[<minecraft:iron_ingot>, <minecraft:stick>, <minecraft:iron_ingot>],
[<minecraft:stick>, <thermalfoundation:material:320>, <minecraft:stick>],
[<minecraft:iron_ingot> , <minecraft:stick>, <minecraft:iron_ingot> ]
]);

recipes.addShaped("basiclens",<actuallyadditions:item_misc:18>, [
[<thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>],
[<thermalfoundation:glass:3>, <actuallyadditions:item_misc:8>, <thermalfoundation:glass:3>],
[<thermalfoundation:glass:3>, <thermalfoundation:glass:3>, <thermalfoundation:glass:3>]
]);

recipes.addShaped("aa_drill", <actuallyadditions:item_drill:3>, [
[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
[<actuallyadditions:item_misc:8>, <immersiveengineering:metal_device1:7>, <actuallyadditions:item_misc:8>],
[<actuallyadditions:block_crystal_empowered:5>, <mekanism:controlcircuit:1>, <actuallyadditions:block_crystal_empowered:5>]
]);