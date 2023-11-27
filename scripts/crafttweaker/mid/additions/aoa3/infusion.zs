import scripts.crafttweaker.early.util.classes.recipeHolder as Holder;
import scripts.crafttweaker.early.util.grid as Shaper;
import scripts.crafttweaker.early.util.tables as Util;
import mods.aoa3.InfusionTable;

static recipeHolders as Holder[] = [
	//contenttweaker
	Util.simpleShaped(<contenttweaker:neptune_dimensional_stone>, "block", [<extraplanets:neptune:2>])
		.addExtras([<contenttweaker:neptunic_key>])
		.addNumbers([75, 100, 500]), //neptune dimensional stone

	//mekanism
	Util.customShaped(<mekanism:machineblock:4>, [
			<galacticraftplanets:orion_drive>,
			<mekanism:controlcircuit:2>,
			<extrautils2:interactionproxy>,
			<lightningcraft:lightning_miner>,
			<extrautils2:miner>], [[4,1,2],[1,0,1],[2,1,3]])
		.addExtras([<environmentaltech:void_ore_miner_cont_2>])
		.addNumbers([42, 150, 300]) //digital miner
 ] as Holder[];

function build() {
	for holder in recipeHolders {
		InfusionTable.addInfusionRecipe(holder.getName("infusion."), holder.getExtras()[0], 
			holder.getOutput(), Shaper.flatten(holder.getShaped()), holder.getNumbers()[0] as long, 
			holder.getNumbers()[1], holder.getNumbers()[2]);
	}
}