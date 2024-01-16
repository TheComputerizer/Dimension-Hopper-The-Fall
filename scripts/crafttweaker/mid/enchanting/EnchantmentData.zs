#reloadable

import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.util.Math;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.botania.RuneAltar;

zenClass Data {
    val enchantmentDef as IEnchantmentDefinition;
    val levelFactor as int;
    val ingredientMap as int[IIngredient[]];
    zenConstructor(enchDef as IEnchantmentDefinition, factor as int, ingredientMap as int[IIngredient[]]) {
        this.enchantmentDef = enchDef;
        this.levelFactor = factor;
        this.ingredientMap = ingredientMap;
	}
    function getIngredientMap() as int[IIngredient[]] {
        return this.ingredientMap;
    }
    function getEnchantment() as IEnchantmentDefinition {
        return this.enchantmentDef;
    }
    function getLevelFactor() as int {
        return this.levelFactor;
    }
}

function create(enchDef as IEnchantmentDefinition, factor as int, ingredientMap as int[IIngredient[]]) as Data {
    return Data(enchDef,factor,ingredientMap);
}

function makeRecipes(data as Data, oredict as IOreDictEntry) {
    val ench as IEnchantmentDefinition = data.getEnchantment();
    print("Attempting to register oredict recipes '"+oredict.name+"'for enchantment "+ench.registryName);
    var level as int = 1;
    for ingredients, minTier in data.getIngredientMap() {
        if(minTier<=2) {
            val levelFactor as int = data.getLevelFactor();
            makeT2Recipe(ench,oredict,ingredients,level,levelFactor);
            if(minTier<=1) {
                makeT1Recipes(ench,oredict,ingredients,level,levelFactor*level*1000);
            }
        }
        level = level+1;
    }
}

function makeT1Recipes(def as IEnchantmentDefinition, oredict as IOreDictEntry, ingredients as IIngredient[], level as int, mana as int) {
    for item in oredict.items {
        val enchantedItem = item.withTag({ench: [{lvl: level as short, id: def.id}]});
        RuneAltar.addRecipe(enchantedItem, ingredients+item, mana);
    }
}

function makeT2Recipe(def as IEnchantmentDefinition, oredict as IOreDictEntry, ingredients as IIngredient[], level as int, levelFactor as int) {
    var output as IItemStack = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level as short, id: def.id}]});
    for i, item in oredict.items {
        output = item.withTag({ench: [{lvl: level as short, id: def.id}]});
        break;
    }
    RecipeBuilder.get("mage")
        .setShapeless(ingredients+oredict.marked("enchant"))
        .setRecipeFunction(function (out, ins, cInfo) {
            if(!ins.enchant.hasTag) return ins.enchant.withTag({ench: [{lvl: level as short, id: def.id}]});
	    	var tag = ins.enchant.tag;
	    	if(!(tag has "ench")) return ins.enchant.withTag({ench: [{lvl: level as short, id: def.id}]});
	    	for enchantmentTag in tag.ench.asList()  {
	    		if(enchantmentTag.id == def.id || tag.ench.asList().length>=5) return null;
	    	}
	    	return ins.enchant.withTag(ins.enchant.tag + {ench: [{lvl: level as short, id: def.id}]} as IData);
	    })
        .setFluid(<liquid:xpjuice>*Math.min(16000,levelFactor*100))
        .addTool(<ore:artisansAthame>, levelFactor)
        .addTool(<ore:artisansGrimoire>, levelFactor)
        .addTool(<ore:artisansHammer>, levelFactor)
        .addOutput(output)
        .create();
}