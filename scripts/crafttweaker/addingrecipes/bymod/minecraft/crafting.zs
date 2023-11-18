#reloadable

recipes.addShapeless("renewable_glowstone", <minecraft:glowstone_dust>, [<botania:pestleandmortar>, <twilightforest:torchberries>]);

recipes.addShapeless("spawner_iron", <minecraft:iron_ingot>, [<actuallyadditions:item_misc:20>]);

recipes.addShapeless("netherbrickcraft", <minecraft:netherbrick>, [<minecraft:brick>, <minecraft:blaze_powder>]);

recipes.addShapeless("flinandsteel", <minecraft:flint_and_steel>, [<thermalfoundation:material:160>, <minecraft:flint>]);

recipes.addShapeless("endereye", <minecraft:ender_eye>, [<minecraft:ender_pearl>, <xreliquary:mob_ingredient:7>, <cavern:cave_item:5>, <cavern:cave_item:5>]);

recipes.addShapeless("pistonfromsticky", <minecraft:piston>, [<minecraft:sticky_piston>, <actuallyadditions:item_knife:*>.transformDamage(25)]);

recipes.addShaped("clock", <minecraft:clock>, [
[null, <minecraft:gold_ingot>, null],
[<minecraft:gold_ingot>, <enderio:item_material:20>, <minecraft:gold_ingot>],
[null, <minecraft:gold_ingot>, null]
]);

recipes.addShaped("piston", <minecraft:piston>, [
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<minecraft:cobblestone>, <tconstruct:materials>, <minecraft:cobblestone>],
[<overloaded:compressed_cobblestone>, <enderio:item_material:20>, <overloaded:compressed_cobblestone>]
]);

recipes.addShaped("pistonalt", <minecraft:piston>, [
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<minecraft:cobblestone>, <tconstruct:materials>, <minecraft:cobblestone>],
[<overloaded:compressed_cobblestone>, <minecraft:redstone>, <overloaded:compressed_cobblestone>]
]);

recipes.addShaped("netherbrickbalance", <minecraft:nether_brick>, [
[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]
]);

recipes.addShaped("cauldronbutbetter", <minecraft:cauldron>, [
[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
[<minecraft:iron_block>, <actuallyadditions:block_misc:9>, <minecraft:iron_block>]
]);