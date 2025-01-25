#reloadable

import mods.thermalexpansion.Transposer;

function run() {
    Transposer.addExtractRecipe(<liquid:superhot_magma>*1000, <gaiadimension:scaynyx_bucket>.withTag({Fluid: {FluidName: "superhot_magma", Amount: 1000}}), 
        10000, <gaiadimension:scaynyx_bucket>);
    Transposer.addFillRecipe(<gaiadimension:scaynyx_bucket>.withTag({Fluid: {FluidName: "superhot_magma", Amount: 1000}}), 
        <gaiadimension:scaynyx_bucket>, <liquid:superhot_magma>*1000, 10000);
}