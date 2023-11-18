#reloadable

import scripts.crafttweaker.util as Util;

recipes.addShapeless("pixietopixon", <enderio:item_soul_vial:1>, [<enderio:item_soul_vial:1>.withTag({entityId: "botania:pixie"})],
function (out, ins, cInfo) {
	var dim = cInfo.player.dimension as int;
	if(dim==0) return out.withTag({entityId: "aoa3:glistening_pixon"});
	else if(dim==819) return out.withTag({entityId: "aoa3:gleaming_pixon"});
	else if(dim==803 || dim==811 || dim==820) return out.withTag({entityId: "aoa3:ambient_pixon"});
	else if(dim==815) return out.withTag({entityId: "aoa3:glaring_pixon"});
	else if(dim==814) return out.withTag({entityId: "aoa3:glowing_pixon"});
	else if(dim==800) return out.withTag({entityId: "aoa3:shining_pixon"});
	else if(dim==808) return out.withTag({entityId: "aoa3:radiant_pixon"});
	else if(dim==817) return out.withTag({entityId: "aoa3:blooming_pixon"});
	return out;
}, null);

rune("aoapowerrune",<aoa3:carved_rune_power>,<botania:laputashard:9>);

rune("aoarealityrune",<aoa3:carved_rune_reality>,<dimdoors:stable_fabric>);

rune("aoaspacerune",<aoa3:carved_rune_space>,<moreplanets:space_warper_core>);

rune("aoatravelrune",<aoa3:carved_rune_travel>,<minecraft:ender_eye>);

rune("aoadirectionrune",<aoa3:carved_rune_direction>,<integrateddynamics:part_connector_omni_directional_item>);

function rune(name as string, output as IItemStack, top as IIngredient) {
	recipes.addShaped(name,output,Util.u(<aoa3:ancient_rock>,top,<aoa3:unpowered_rune>))
}