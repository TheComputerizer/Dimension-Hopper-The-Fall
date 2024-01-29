#reloadable

import mods.botania.Apothecary;

//orechids
Apothecary.removeRecipe("orechid");
Apothecary.removeRecipe("orechidIgnem");

//better orechid ignem
Apothecary.addRecipe("orechidIgnem", [<botania:rune:8>, <botania:rune:10>, <botania:rune:11>, <botania:rune:12>, <botania:rune:13>, <botania:rune:14>, 
    <botania:manaresource:6>, <botania:petal>, <botania:petal:6>, <botania:manaresource:8>, <storagedrawers:upgrade_conversion>, <psi:material:3>, <psi:material:4>]);

//better orechid
Apothecary.addRecipe("orechid", [<botania:rune:8>, <botania:rune:10>, <botania:rune:11>, <botania:rune:12>, <botania:rune:13>, <botania:rune:14>, 
    <quark:roots>, <botania:petal>, <botania:petal:6>, <botania:manaresource:8>, <storagedrawers:upgrade_conversion>, <psi:material:3>, <psi:material:4>]);