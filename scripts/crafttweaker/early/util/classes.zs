#priority 1500
#reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.recipes.IRecipeFunction;

zenClass recipeHolder {
    val name as string;
    val output as IItemStack;
    var shapelessInputs as IIngredient[];
    var shapedInputs as IIngredient[][];
    var tools as int[IIngredient];
    var fluids as ILiquidStack[];
    var extras as IItemStack[];
    var numbers as int[];
    var markIndex as int;
    var func as IRecipeFunction;
    var action as IRecipeAction;
    zenConstructor(name as string, output as IItemStack) {
        this.name = name;
        this.output = output;
        this.shapelessInputs = [] as IIngredient[];
        this.shapedInputs = [] as IIngredient[][];
        this.tools = {} as int[IIngredient];
        this.fluids = [] as ILiquidStack[];
        this.extras = [] as IItemStack[];
        this.numbers = [] as int[];
        this.markIndex = -1 as int;
        this.func = null;
        this.action = null;
    }
    function addShapeless(inputs as IIngredient[]) as recipeHolder {
        this.shapelessInputs = inputs;
        return this;
    }
    function addShaped(inputs as IIngredient[][]) as recipeHolder {
        this.shapedInputs = inputs;
        return this;
    }
    function addFunction(func as IRecipeFunction) as recipeHolder {
        this.func = func;
        return this;
    }
    function addAction(action as IRecipeAction) as recipeHolder {
        this.action = action;
        return this;
    }
    function addTools(toolsMap as int[IIngredient]) as recipeHolder {
        this.tools = toolsMap;
        return this;
    }
    function addFluids(fluids as ILiquidStack[]) as recipeHolder {
        this.fluids = fluids;
        return this;
    }
    function addExtras(extras as IItemStack[]) as recipeHolder {
        this.extras = extras;
        return this;
    }
    function addNumbers(numbers as int[]) as recipeHolder {
        this.numbers = numbers;
        return this;
    }
    function setMarkIndex(index as int) as recipeHolder {
        this.markIndex = index;
        return this;
    }
    function getName(prefix as string) as string {
        return prefix+this.name;
    }
    function getOutput() as IItemStack {
        return this.output;
    }
    function getShapeless() as IIngredient[] {
        if(this.markIndex>=0) {
            return this.markShapeless();
        }
        else {
            return this.shapelessInputs;
        }
    }
    function getShaped() as IIngredient[][] {
        if(this.markIndex>=0) {
            return this.markShaped();
        }
        else {
            return this.shapedInputs;
        }
    }
    function getFunction() as IRecipeFunction {
        return this.func;
    }
    function getAction() as IRecipeAction {
        return this.action;
    }
    function getTools() as int[IIngredient] {
        return this.tools;
    }
    function getFluids() as ILiquidStack[] {
        return this.fluids;
    }
    function getExtras() as IItemStack[] {
        return this.extras;
    }
    function getNumbers() as int[] {
        return this.numbers;
    }
    function markShapeless() as IIngredient[] {
        var markedInputs as IIngredient[] = [] as IIngredient[];
        for i, input in this.shapelessInputs {
            if(i==this.markIndex) {
                markedInputs+=input.marked("mark");
            }
            else {
                markedInputs+=input;
            }
        }
        return markedInputs;
    }
    function markShaped() as IIngredient[][] {
        var markedInputs as IIngredient[][] = [] as IIngredient[][];
        var length as int = this.shapedInputs.length;
        for r, row in this.shapedInputs {
            var markedRow as IIngredient[] = [] as IIngredient[];
            for c, col in row {
                if((r*length)+c==this.markIndex) {
                    markedRow+=col.marked("mark");
                }
                else {
                    markedRow+=col;
                }
            }
            markedInputs+=markedRow;
        }
        return markedInputs;
    }
    function printContents() {
        print("output = "+this.output.name);
        val isShaped as bool = this.shapedInputs.length>0;
        if(isShaped) {
            print("shaped size = "+this.shapedInputs[0].length+"x"+this.shapedInputs.length);
        }
    }
}