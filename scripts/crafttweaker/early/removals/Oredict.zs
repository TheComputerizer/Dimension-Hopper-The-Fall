#priority 500
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crafttweaker.early.util.Globals as Global;
import scripts.crafttweaker.early.util.Stacks as Stack;

static oredictRemovals as IItemStack[][IOreDictEntry] = {
    oreDict.blockAquamarine: [
        <cavern:cave_block:1>, 
        <zollerngalaxy:aquamarineblock>
    ],
    oreDict.blockBone: [
        <tp:bone_block>
    ],
    oreDict.blockGlass: [
        <moreplanets:black_tinted_glass>,
        <moreplanets:blue_tinted_glass>,
        <moreplanets:brown_tinted_glass>,
        <moreplanets:cyan_tinted_glass>,
        <moreplanets:gray_tinted_glass>,
        <moreplanets:green_tinted_glass>,
        <moreplanets:light_blue_tinted_glass>,
        <moreplanets:lime_tinted_glass>,
        <moreplanets:magenta_tinted_glass>,
        <moreplanets:orange_tinted_glass>,
        <moreplanets:pink_tinted_glass>,
        <moreplanets:purple_tinted_glass>,
        <moreplanets:red_tinted_glass>,
        <moreplanets:silver_tinted_glass>,
        <moreplanets:tinted_glass>,
        <moreplanets:white_tinted_glass>,
        <moreplanets:yellow_tinted_glass>
    ],
    oreDict.blockGlassBlack: [
        <moreplanets:black_tinted_glass>
    ],
    oreDict.blockGlassBlue: [
        <moreplanets:blue_tinted_glass>
    ],
    oreDict.blockGlassBrown: [
        <moreplanets:brown_tinted_glass>
    ],
    oreDict.blockGlassColorless: [
        <moreplanets:tinted_glass>
    ],
    oreDict.blockGlassCyan: [
        <moreplanets:cyan_tinted_glass>
    ],
    oreDict.blockGlassGray: [
        <moreplanets:gray_tinted_glass>
    ],
    oreDict.blockGlassGreen: [
        <moreplanets:green_tinted_glass>
    ],
    oreDict.blockGlassLightBlue: [
        <moreplanets:light_blue_tinted_glass>
    ],
    oreDict.blockGlassLightGray: [
        <moreplanets:silver_tinted_glass>
    ],
    oreDict.blockGlassLime: [
        <moreplanets:lime_tinted_glass>
    ],
    oreDict.blockGlassMagenta: [
        <moreplanets:magenta_tinted_glass>
    ],
    oreDict.blockGlassOrange: [
        <moreplanets:orange_tinted_glass>
    ],
    oreDict.blockGlassPink: [
        <moreplanets:pink_tinted_glass>
    ],
    oreDict.blockGlassPurple: [
        <moreplanets:purple_tinted_glass>
    ],
    oreDict.blockGlassRed: [
        <moreplanets:red_tinted_glass>
    ],
    oreDict.blockGlassWhite: [
        <moreplanets:white_tinted_glass>
    ],
    oreDict.blockGlassYellow: [
        <moreplanets:yellow_tinted_glass>
    ],
    oreDict.blockPlatinum: [
        <zollerngalaxy:shiniumblock>
    ],
    oreDict.gemAquamarine: [
        <cavern:cave_item>, 
        <zollerngalaxy:aquamarine>
    ],
    oreDict.ingotPlatinum: [
        <zollerngalaxy:shiniumingot>
    ],
    oreDict.oreCobalt: [
        <zollerngalaxy:edencobaltore>, 
        <zollerngalaxy:purgcobaltore>, 
        <zollerngalaxy:kriffcobaltore>
    ],
    oreDict.oreAquamarine: [
        <zollerngalaxy:caligroaquaore>, 
        <zollerngalaxy:harranaquamarineore>, 
        <cavern:cave_block>
    ],
    oreDict.paneGlass: [
        <moreplanets:black_tinted_glass_pane>,
        <moreplanets:blue_tinted_glass_pane>,
        <moreplanets:brown_tinted_glass_pane>,
        <moreplanets:cyan_tinted_glass_pane>,
        <moreplanets:gray_tinted_glass_pane>,
        <moreplanets:green_tinted_glass_pane>,
        <moreplanets:light_blue_tinted_glass_pane>,
        <moreplanets:lime_tinted_glass_pane>,
        <moreplanets:magenta_tinted_glass_pane>,
        <moreplanets:orange_tinted_glass_pane>,
        <moreplanets:pink_tinted_glass_pane>,
        <moreplanets:purple_tinted_glass_pane>,
        <moreplanets:red_tinted_glass_pane>,
        <moreplanets:silver_tinted_glass_pane>,
        <moreplanets:tinted_glass_pane>,
        <moreplanets:white_tinted_glass_pane>,
        <moreplanets:yellow_tinted_glass_pane>
    ],
    oreDict.paneGlassBlack: [
        <moreplanets:black_tinted_glass_pane>
    ],
    oreDict.paneGlassBlue: [
        <moreplanets:blue_tinted_glass_pane>
    ],
    oreDict.paneGlassBrown: [
        <moreplanets:brown_tinted_glass_pane>
    ],
    oreDict.paneGlassColorless: [
        <moreplanets:tinted_glass_pane>
    ],
    oreDict.paneGlassCyan: [
        <moreplanets:cyan_tinted_glass_pane>
    ],
    oreDict.paneGlassGray: [
        <moreplanets:gray_tinted_glass_pane>
    ],
    oreDict.paneGlassGreen: [
        <moreplanets:green_tinted_glass_pane>
    ],
    oreDict.paneGlassLightBlue: [
        <moreplanets:light_blue_tinted_glass_pane>
    ],
    oreDict.paneGlassLightGray: [
        <moreplanets:silver_tinted_glass_pane>
    ],
    oreDict.paneGlassLime: [
        <moreplanets:lime_tinted_glass_pane>
    ],
    oreDict.paneGlassMagenta: [
        <moreplanets:magenta_tinted_glass_pane>
    ],
    oreDict.paneGlassOrange: [
        <moreplanets:orange_tinted_glass_pane>
    ],
    oreDict.paneGlassPink: [
        <moreplanets:pink_tinted_glass_pane>
    ],
    oreDict.paneGlassPurple: [
        <moreplanets:purple_tinted_glass_pane>
    ],
    oreDict.paneGlassRed: [
        <moreplanets:red_tinted_glass_pane>
    ],
    oreDict.paneGlassWhite: [
        <moreplanets:white_tinted_glass_pane>
    ],
    oreDict.paneGlassYellow: [
        <moreplanets:yellow_tinted_glass_pane>
    ],
    oreDict.plankWood: Stack.metaRange(<natura:nether_planks>.definition, [0,3])
};

function run() {
    for entry, items in oredictRemovals {
        entry.removeItems(items);
    }
}