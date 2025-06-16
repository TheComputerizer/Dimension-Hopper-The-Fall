import mods.integrateddynamics.Squeezer;

//chaos ore
//Squeezer.removeRecipe(<silentgems:essenceore>,
	//<silentgems:craftingmaterial>,1,
	//<silentgems:craftingmaterial>,0.75);
Squeezer.addRecipe(<silentgems:essenceore>,
	<silentgems:craftingmaterial:3>*3,1,
	<silentgems:craftingmaterial:3>,0.75);
//Naquadah
Squeezer.addRecipe(<sgcraft:naquadahore>,
	<sgcraft:naquadah>,1,
	<sgcraft:naquadah>,0.75,
	<jaopca:dust.naquadah_alloy>,0.05);
