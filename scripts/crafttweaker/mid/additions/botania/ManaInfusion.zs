#reloadable

import mods.botania.ManaInfusion;

//mana dust
ManaInfusion.addInfusion(<thermalfoundation:material:1028>, <thermalfoundation:material:72>, 1000);
ManaInfusion.addInfusion(<jaopca:block.mana>, <thermalfoundation:storage:8>, 9000);

//manasteel
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <naturesaura:infused_iron>, 5000);

//positite
ManaInfusion.addAlchemy(<goodnightsleep:positite_gem>, <botania:manaresource:2>, 25000);

//negatite
ManaInfusion.addAlchemy(<goodnightsleep:negatite_gem>, <psi:material:2>, 25000);

//frailglitter
ManaInfusion.addAlchemy(<gaiadimension:frail_glitter_block>, <minecraft:ice>, 10000);

//redstone root
ManaInfusion.addConjuration(<botania:manaresource:6>, <quark:roots>, 11111);

//cavenia mirage book conversions
for i in 0 .. 8 {
	var j = i+1;
	if(j>=8) {
		j=0;
	}
	var itemIn = <cavern:mirage_book>.definition.makeStack(i);
	var itemOut = <cavern:mirage_book>.definition.makeStack(j);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 9}), itemIn.withTag({Ticket: 10}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 8}), itemIn.withTag({Ticket: 9}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 7}), itemIn.withTag({Ticket: 8}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 6}), itemIn.withTag({Ticket: 7}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 5}), itemIn.withTag({Ticket: 6}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 4}), itemIn.withTag({Ticket: 5}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 3}), itemIn.withTag({Ticket: 4}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 2}), itemIn.withTag({Ticket: 3}),1000000);
	ManaInfusion.addConjuration(itemOut.withTag({Ticket: 1}), itemIn.withTag({Ticket: 2}),1000000);
}

//enchanted book recycling
ManaInfusion.addInfusion(<minecraft:book>, <minecraft:enchanted_book>, -25000);

//oredict grass
ManaInfusion.addAlchemy(<minecraft:tallgrass:2>, <ore:grassPlant>, 1000);
ManaInfusion.addConjuration(<minecraft:tallgrass:1>*2, <ore:grassPlant>, 1000);
ManaInfusion.addInfusion(<botania:grassseeds>, <ore:grassPlant>, 5000);

//oredict fern
ManaInfusion.addAlchemy(<minecraft:deadbush>, <ore:fernPlant>, 1000);

//oredict bush
ManaInfusion.addAlchemy(<minecraft:tallgrass:1>, <ore:bushPlant>, 1000); 
ManaInfusion.addInfusion(<botania:grassseeds:1>, <ore:bushPlant>, 5000); 
