import crafttweaker.item.IItemStack;
import mods.theaurorian.MoonlightForge;

static recipes as IItemStack[][IItemStack] = {
    <theaurorian:scrapumbra>: [<theaurorian:scrapaurorianite>, <projecte:item.pe_matter>],
    <theaurorian:scrapcrystalline>: [<theaurorian:scrapaurorianite>, <jaopca:dust.crystaltine>]
};

function run() {
    for output, inputs in recipes {
        MoonlightForge.addRecipe(inputs[0], inputs[1], output);
    }
}