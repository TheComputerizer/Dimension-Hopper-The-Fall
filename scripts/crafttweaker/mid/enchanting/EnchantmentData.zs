#reloadable

import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.util.Math;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.botania.RuneAltar;
import mods.dimhoppertweaks.CTPassthrough;

zenClass Data {
    val enchantmentName as string;
    val levelFactor as int;
    val ingredientMap as int[IIngredient[][int]];
    zenConstructor(enchName as string, factor as int, ingredientMap as int[IIngredient[][int]]) {
        this.enchantmentName = enchName;
        this.levelFactor = factor;
        this.ingredientMap = ingredientMap;
	}
    function getIngredientMap() as int[IIngredient[][int]] {
        return this.ingredientMap;
    }
    function getEnchantment() as string {
        return this.enchantmentName;
    }
    function getLevelFactor() as int {
        return this.levelFactor;
    }
}

function create(enchName as string, factor as int, ingredientMap as int[IIngredient[][int]]) as Data {
    return Data(enchName,factor,ingredientMap);
}

function makeRecipes(data as Data, oredict as IOreDictEntry) {
    val ench as string = data.getEnchantment();
    print("Attempting to register oredict recipes '"+oredict.name+"'for enchantment "+ench);
    for ingredientMap, minTier in data.getIngredientMap() {
        for level, ingredients in ingredientMap {
            if(minTier<=2) {
                val levelFactor as int = data.getLevelFactor();
                makeT2Recipe(ench,oredict,ingredients,level,levelFactor);
                if(minTier<=1) {
                    makeT1Recipes(ench,oredict,ingredients,level,levelFactor*level*1000);
                }
            }
        }
    }
}

function makeT1Recipes(def as string, dict as IOreDictEntry, ingredients as IIngredient[], level as int, mana as int) {
    val enchantedItem = <dimhoppertweaks:recipe_function>.withTag({type: "oredict",oredict: dict.name,itemTag: {maxEnchants: 3,delayedEnch: [{level: level, name: def}]}});
    RuneAltar.addRecipe(enchantedItem, ingredients+dict, mana);
}

function makeT2Recipe(def as string, dict as IOreDictEntry, ingredients as IIngredient[], level as int, levelFactor as int) {
    val output = <dimhoppertweaks:recipe_function>.withTag({type: "oredict",oredict: dict.name,itemTag: {maxEnchants: 5,delayedEnch: [{level: level, name: def}]}});
    RecipeBuilder.get("mage")
        .setShapeless(ingredients+dict.marked("enchant"))
        .setRecipeFunction(function (out, ins, cInfo) {
            val actualID as int = CTPassthrough.getActualEnchantmentID(def);
            if(!ins.enchant.hasTag) {
                return ins.enchant.withTag({ench: [{lvl: level as short, id: actualID}]});
            }
	    	var tag = ins.enchant.tag;
	    	if(!(tag has "ench")) {
                return ins.enchant.withTag({ench: [{lvl: level as short, id: actualID}]});
            }
            if(tag.ench.asList().length>=5) {
                return null;
            }
	    	for enchantmentTag in tag.ench.asList()  {
	    		if(enchantmentTag.id == actualID) {
                    return null;
                }
	    	}
	    	return ins.enchant.withTag(ins.enchant.tag + {ench: [{lvl: level as short, id: actualID}]} as IData);
	    })
        .setFluid(<liquid:xpjuice>*Math.min(16000,levelFactor*100))
        .addTool(<ore:artisansAthame>, levelFactor)
        .addTool(<ore:artisansGrimoire>, levelFactor)
        .addTool(<ore:artisansHammer>, levelFactor)
        .addOutput(output)
        .create();
}