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

static EMC_ONLY as string = "Only obtainable via EMC transmutation";

//appliedenergistics2-------------------------------------------------------------------------------------------------------
JEI.addDescription(<appliedenergistics2:facade>, "Example recipe.", 
    "Most full blocks that are not tile entities will work");

//botany--------------------------------------------------------------------------------------------------------------------
JEI.addDescription(<botany:ceramicbrick>, "Ceramic bricks can be made in a Tileworker");

JEI.addDescription(<botany:pigment:*>, 
    ["Colored pigments can be obtained from putting a single flower in a crafting grid.",
    "The resulting color will be inherited from the primary color trait of the flower used.",
    "Due to how the color data processing for the flowers are handled these will not show up as recipes.",
    "Some colors may only be obtained by cross-breeding hybrid flowers"]);

JEI.addDescription(<botany:pollen>,
	["Can be obtained by crafting a Germling with a Pollen Collection Kit.",
	"The NBT data of the Germling gets transferred to the Pollen.",
	"JEI will always show Corrupted Flowers. This is due to some calculations",
	"that need to happen during crafting."]);

//dimhoppertweaks-----------------------------------------------------------------------------------------------------------
JEI.addDescription(<dimhoppertweaks:recipe_function>, 
    "This is an indicator that the output item may not be displayed correctly due to some calculations that need to happen during crafting.",
    "Generally the input item type used for an oredict will be the actual item output");

//enderio-------------------------------------------------------------------------------------------------------------------
JEI.addDescription(<enderio:item_soul_vial:1>, 
    "Most entities can be captured, but only the ones directly used in non generic recipes are shown");

//forestry------------------------------------------------------------------------------------------------------------------
JEI.addDescription([<forestry:adventurer_bag>, <forestry:adventurer_bag_t2>], [
    "Extra inventory that automatically picks up specialized items.",
    "Currently, the items that can be picked up are as follows:", CTPassthrough.getAdventuringBackpackItems()]);

JEI.addDescription(<forestry:wood_pile>, "To build a Charcoal Pile, first place 1 or more adjacent Wood Piles.",
    "2x2x2 is generally a good starting size, but even a single Wood Pile will work.", 
    "Next, make sure all sides of all wood piles are covered by either another wood pile or a valid Charcoal Pile block.",
    "See the Charcoal Pile recipes for the valid blocks and how they affect charcoal rates.",
    "Just before you finish covering the last Wood Pile, make sure to light it on fire.",
    "If successful, the Charcoal Pile should start emitting smoke particles out of the top and playing a burning sound.",
    "The burning process takes a few minutes and is finished when the smoke and buring sounds are gone.",
    "Charcoal and Ash drop rates are affected by the Fortune enchantment");

//huntingdim----------------------------------------------------------------------------------------------------------------
JEI.addDescription(<huntingdim:biome_changer>, "Example recipe.", "Most biomes are supported");

JEI.addDescription(<huntingdim:frame>, "Example recipe.", "Most wood types will work");

//minecraft-----------------------------------------------------------------------------------------------------------------
handleEnchantedBooks();

JEI.addDescription(<minecraft:piston>, "If you are in the Twilight Forest, pistons can not yet be crafted.",
    "Pistons can be found near the top of Ur-Ghast towers and rarely in the basements of druid houses.",
    "Only the trapped wither skeleton skull varient of the basement can have a piston");

JEI.addDescription(<minecraft:enchanting_table>, "If you are in the Twilight Forest, pistons can not yet be crafted.");

//projecte------------------------------------------------------------------------------------------------------------------
JEI.addDescription([<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_matter>, <projecte:item.pe_matter:1>], EMC_ONLY);

//projectex-----------------------------------------------------------------------------------------------------------------
handleMetas(<projectex:matter>.definition, 0, 11, EMC_ONLY);

JEI.addDescription([<projectex:collector>, <projecte:item.pe_klein_star>], EMC_ONLY);

//xlfoodmod-----------------------------------------------------------------------------------------------------------------
JEI.addDescription(<xlfoodmod:cheese>, "§kFel§r blazes can be summoned with a Fel P§kumpkin§r on top of §kiron§r bars.",
    "Wait this is the description for chee-");

//--------------------------------------------------------------------------------------------------------------------------

function handleMeta(item as IItemDefinition, meta as int, description as string) {
    JEI.addDescription(item.makeStack(meta), description);
}

function handleMetas(item as IItemDefinition, min as int, max as int, description as string) {
    for meta in min .. max {
        handleMeta(item,meta,description);
    }
}

function handleMetasArray(item as IItemDefinition, min as int, max as int, descriptions as string[]) {
    for meta in min .. max {
        handleMeta(item,meta,descriptions[meta-min]);
    }
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
