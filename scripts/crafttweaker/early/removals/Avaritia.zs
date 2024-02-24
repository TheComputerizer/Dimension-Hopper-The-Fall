#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import scripts.crafttweaker.early.util.Lambdas as Caller;

static queuedRemovals as IItemStack[][int] = {
	0: [
		//avaritia
		<avaritia:cosmic_meatballs>, //cosmic meatballs
		<avaritia:endest_pearl>, //endest pearl
		<avaritia:infinity_boots>, //infinity boots
		<avaritia:infinity_chestplate>, //infinity chestplate
		<avaritia:infinity_helmet>, //infinity helmet
		<avaritia:infinity_pants>, //infinity pants
		<avaritia:neutron_collector>, //neutronium collector
		<avaritia:neutronium_compressor>, //neutronium compressor
		<avaritia:resource:5>, //infinity catalyst
		<avaritia:resource:6>, //infinity ingot
		<avaritia:ultimate_stew>, //ultimate stew

		//avaritiatweaks
		<avaritiatweaks:infinitato>,

		//solarflux
		<solarflux:solar_panel_neutronium>, //neutronium solar panel
		<solarflux:solar_panel_infinity> //infinity solar panel
	] as IItemStack[]
};

function run() {
	Caller.callMap("avaritia",queuedRemovals);
}