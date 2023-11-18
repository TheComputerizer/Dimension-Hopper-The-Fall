#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.BlastFurnace;

val dusts = [
	<ore:dustIron>,
	<ore:dustCopper>,
	<ore:dustGold>,
	<ore:dustTin>,
	<ore:dustSilver>,
	<ore:dustLead>,
	<ore:dustAluminum>,
	<ore:dustNickel>,
	<ore:dustPlatinum>,
	<ore:dustIridium>
] as IIngredient[];

val ingots = [
	<minecraft:iron_ingot>,
	<thermalfoundation:material:128>,
	<minecraft:gold_ingot>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<thermalfoundation:material:132>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:135>
] as IItemStack[];

for i, dust in dusts {
	for item in dust.items {
		BlastFurnace.addRecipe(ingots[i], dust, 1200);
	}
}

BlastFurnace.addRecipe(<ore:ingotBrickSeared>.firstItem, <tconstruct:soil>, 600);
BlastFurnace.addRecipe(<aether:arkenium>, <aether:arkenium_ore>, 600);
BlastFurnace.addRecipe(<aether:gravitite_plate>, <aether:gravitite_ore>, 900);