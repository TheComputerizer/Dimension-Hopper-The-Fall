#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [
		<avaritia:neutron_collector>, //neutronium collector
		<avaritia:neutronium_compressor>, //neutronium compressor
		//<avaritia:resource:*>, //misc avaritia resources?
		<avaritia:resource:5>, //infinity catalyst
		<avaritia:resource:6>, //infinity ingot
		<solarflux:solar_panel_neutronium>, //neutronium solar panel
		<solarflux:solar_panel_infinity>, //infinity solar panel
		<rftools:powercell_creative>, //creative powercell
		<extrautils2:creativeenergy>, //creative energy source?
		<extrautils2:spike_creative>, //creative spike
		<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), //creative capacitor bank
		<appliedenergistics2:creative_energy_cell>, //creative energy cell
		<draconicevolution:creative_rf_source>, //creative rf source?
		<avaritia:endest_pearl>, //endest pearl
		<avaritia:cosmic_meatballs>, //cosmic meatballs
		<avaritia:ultimate_stew>, //ultimate stew
		<avaritia:infinity_helmet>, //infinity helmet
		<avaritia:infinity_chestplate>, //infinity chestplate
		<avaritia:infinity_pants>, //infinity pants
		<avaritia:infinity_boots> //infinity boots
	] as IItemStack[]
};

function run() {
	Caller.callMap("avaritia",queuedRemovals);
}