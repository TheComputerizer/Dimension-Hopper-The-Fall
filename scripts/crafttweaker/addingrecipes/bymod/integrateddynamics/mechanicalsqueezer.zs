import mods.integrateddynamics.MechanicalSqueezer;

//chaos ore
//MechanicalSqueezer.removeRecipe(<silentgems:essenceore>,
	//<silentgems:craftingmaterial>*2,1,
	//<silentgems:craftingmaterial>,0.5);
MechanicalSqueezer.addRecipe(<silentgems:essenceore>,
	<silentgems:craftingmaterial:3>*4,1,
	<silentgems:craftingmaterial:3>*2,0.5);
//Naquadah
MechanicalSqueezer.addRecipe(<sgcraft:naquadahore>,
	<sgcraft:naquadah>*2,2,
	<sgcraft:naquadah>,0.5,
	<jaopca:dust.naquadah_alloy>,0.1);
