#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import mods.avaritia.ExtremeCrafting;

static itemRemovals as IItemStack[] = [
	<avaritia:neutron_collector>,
	<avaritia:neutronium_compressor>,
	<avaritia:resource:*>,
	<solarflux:solar_panel_neutronium>,
	<solarflux:solar_panel_infinity>,
	<rftools:powercell_creative>,
	<extrautils2:creativeenergy>,
	<extrautils2:spike_creative>,
	<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}),
	<appliedenergistics2:creative_energy_cell>,
	<draconicevolution:creative_rf_source>,
	<avaritia:endest_pearl>,
	<avaritia:cosmic_meatballs>,
	<avaritia:ultimate_stew>,
	<avaritia:infinity_helmet>,
	<avaritia:infinity_chestplate>,
	<avaritia:infinity_pants>,
	<avaritia:infinity_boots>
] as IItemStack[];

function run() {
	for item in itemRemovals {
		ExtremeCrafting.remove(item);
	}
}