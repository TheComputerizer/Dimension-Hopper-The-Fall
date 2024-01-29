#priority -3000
#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import mods.dimhoppertweaks.CTPassthrough;
import mods.dimhoppertweaks.IIngredientSupplier;
import mods.jei.JEI;
import scripts.crafttweaker.early.util.Stacks as Stack;

//appliedenergistics2------------------------------------------------------------------------------
JEI.addDescription(<appliedenergistics2:facade>, "Example recipe.",
    "Most full blocks that are not tile entities will work");

//botany-------------------------------------------------------------------------------------------
JEI.addDescription(<botany:ceramicbrick>, "Ceramic bricks can be made in a Tileworker");
JEI.addDescription(<botany:pigment:*>, 
    ["Colored pigments can be obtained from putting a single flower in a crafting grid.",
    "The resulting color will be inherited from the primary color trait of the flower used.",
    "Due to how the color data processing for the flowers are handled these will not show up as recipes.",
    "Some colors may only be obtained by cross-breeding hybrid flowers"]);

//dimhoppertweaks----------------------------------------------------------------------------------
JEI.addDescription(<dimhoppertweaks:recipe_function>, 
    "This is an indicator that the output item may not be displayed correctly due to some calculations that need to happen during crafting.",
    "Generally the input item type used for an oredict will be the actual item output");

//enderio------------------------------------------------------------------------------------------
JEI.addDescription(<enderio:item_soul_vial:1>, 
    "Most entities can be captured, but only the ones directly used in non generic recipes are shown");

//forestry-----------------------------------------------------------------------------------------
JEI.addDescription([<forestry:adventurer_bag>, <forestry:adventurer_bag_t2>], [
    "Extra inventory that automatically picks up specialized items.",
    "Currently, the items that can be picked up are as follows:",
    CTPassthrough.getAdventuringBackpackItems()]);

//huntingdim---------------------------------------------------------------------------------------
JEI.addDescription(<huntingdim:biome_changer>, "Example recipe.", "Most biomes are supported");
JEI.addDescription(<huntingdim:frame>, "Example recipe.", "Most wood types will work");

//minecraft----------------------------------------------------------------------------------------
handleEnchantedBooks();
JEI.addDescription(<minecraft:piston>, "If you are in the Twilight Forest, pistons can not yet be crafted.",
    "Pistons can be found near the top of Ur-Ghast towers and rarely in the basements of druid houses.",
    "Only the trapped wither skeleton skull varient of the basement can have a piston");

//xlfoodmod----------------------------------------------------------------------------------------
JEI.addDescription(<xlfoodmod:cheese>, "§kFel§r blazes can be summoned with a Fel P§kumpkin§r on top of §kiron§r bars.",
    "Wait this is the description for chee-");
//-------------------------------------------------------------------------------------------------

function handleMetas(item as IItemDefinition, min as int, max as int, descriptions as string[]) {

}

function handleEnchantedBooks() {
    for ench in game.enchantments {
        for lvl in ench.minLevel .. (ench.maxLevel+1) {
            val enchData as IData = {StoredEnchantments: [{lvl: lvl as short, id: ench.id}]};
            JEI.addDescription(<minecraft:enchanted_book>.withTag(enchData), 
            "You can throw enchanted books in a mana pool for some mana and an extra book");
        }
    }
}

function replaceDescriptions(items as IItemStack[], descriptions as string[]) {
    CTPassthrough.removeJEIDescriptions(function() as IIngredient[] { return items;} as IIngredientSupplier);
    JEI.addDescription(items, descriptions);
}