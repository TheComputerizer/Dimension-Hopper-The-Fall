#reloadable

recipes.addShapeless("inefficientlitherite", <environmentaltech:litherite_crystal>*7, [<environmentaltech:litherite>]);

recipes.addShaped("litherite", <environmentaltech:litherite_crystal>*4, [
[<ore:dyeGreen>, <tconstruct:binding>.withTag({Material: "flint"}), <ore:dyeGreen>],
[<tconstruct:binding>.withTag({Material: "flint"}), <galacticraftcore:item_basic_moon:2>, <tconstruct:binding>.withTag({Material: "flint"})],
[<ore:dyeGreen>, <tconstruct:binding>.withTag({Material: "flint"}), <ore:dyeGreen>]
]);