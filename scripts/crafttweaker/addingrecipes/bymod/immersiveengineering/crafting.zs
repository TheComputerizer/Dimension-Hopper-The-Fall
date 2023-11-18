#reloadable

recipes.addShapeless("special_proj_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}), [
<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), <immersiveengineering:toolupgrade:11>
]);

recipes.addShaped("crate", <immersiveengineering:wooden_device0>, [
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <ore:chestWood>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]
]);

recipes.addShaped("hammer", <immersiveengineering:tool>, [
[null, <overloaded:compressed_cobblestone>, <thermalfoundation:material>],
[null, <minecraft:stick>, <overloaded:compressed_cobblestone>],
[<minecraft:stick>, null, null]
]);

recipes.addShaped("arc_furnace_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [
[<immersiveengineering:material:18>, <immersiveengineering:material:18>, <immersiveengineering:material:18>],
[<immersiveengineering:material:18>, <immersiveengineering:blueprint>.withTag({blueprint: "components"}), <immersiveengineering:material:18>],
[<immersiveengineering:material:18>, <immersiveengineering:material:18>, <immersiveengineering:material:18>]
]);

recipes.addShaped("blueprintcomponents", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), [
[<thermalfoundation:material:128>, <thermalfoundation:material:160>, <minecraft:iron_ingot>],
[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);