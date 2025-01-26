import crafttweaker.item.IItemStack;
import mods.theaurorian.Scrapper;

static recipes as IItemStack[IItemStack] = {
    <theaurorian:aurorianiteingot>: <theaurorian:scrapaurorianite>*8,
    <theaurorian:crystallineingot>: <theaurorian:scrapcrystalline>*8,
    <theaurorian:umbraingot>: <theaurorian:scrapumbra>*8
};

function run() {
    for input, output in recipes {
        Scrapper.addRecipe(input,output);
    }
}