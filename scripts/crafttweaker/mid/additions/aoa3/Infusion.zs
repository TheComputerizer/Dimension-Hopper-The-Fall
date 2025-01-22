import scripts.crafttweaker.early.util.Classes.RecipeHolder as Holder;
import scripts.crafttweaker.early.util.Grid as Shaper;
import scripts.crafttweaker.early.util.Tables as Util;
import mods.aoa3.InfusionTable;

static shapedHolders as Holder[] = [
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

 static shapelessHolders as Holder[] = [
	Util.shapeless(<dimhoppertweaks:skill_credit>.withTag({amount: 25, skill: "research"}), [<dimhoppertweaks:prestige_token>.withTag({prestigeLevel: 24})])
		.addExtras([<contenttweaker:heart_of_the_machine_god>])
		.addNumbers([100, 100, 500]) //25 SP research skill credit
 ] as Holder[];

function run() {
	for holder in shapedHolders {
		InfusionTable.addInfusionRecipe(holder.getName("infusion."), holder.getOutput(), 
			holder.getExtras()[0], Shaper.flatten(holder.getShaped()), holder.getNumbers()[0] as long, 
			holder.getNumbers()[1], holder.getNumbers()[2]);
	}
	for holder in shapelessHolders {
		InfusionTable.addInfusionRecipe(holder.getName("infusion."), holder.getOutput(), 
		holder.getExtras()[0], holder.getShapeless(), holder.getNumbers()[0] as long, 
			holder.getNumbers()[1], holder.getNumbers()[2]);
	}
}