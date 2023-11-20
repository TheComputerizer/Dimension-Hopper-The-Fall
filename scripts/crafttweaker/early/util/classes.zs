#priority 1250
#reloadable

import crafttweaker.entity.IEntity;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.player.IPlayer;

zenClass entityClass {
    var entity as IEntity;
    zenConstructor(entity as IEntity) {
        this.entity = entity;
    }
    function get() as IEntity {
        return entity;
    }
	function set(arg as IEntity) as IEntity {
		this.entity = arg;
    }
}

zenClass playerClass {
    var player as IPlayer;
    zenConstructor(player as IPlayer) {
        this.player = player;
    }
    function get() as IPlayer {
        return player;
    }
	function set(arg as IPlayer) as IPlayer {
		this.player = arg;
    }
}

zenClass recipeHolder {
    val name as string;
    val output as IItemStack;
    var shapelessInputs as IIngredient[];
    var shapedInputs as IIngredient[][];
    var tools as int[IIngredient];
    var fluids as ILiquidStack[];
    var markIndex as int;
    zenConstructor(name as string, output as IItemStack) {
        this.name = name;
        this.output = output;
        this.shapelessInputs = [] as IIngredient[];
        this.shapedInputs = [] as IIngredient[][];
        this.tools = {} as int[IIngredient];
        this.fluids = [] as ILiquidStack[];
        this.markIndex = -1 as int;
    }
    function addShapeless(inputs as IIngredient[]) as recipeHolder {
        this.shapelessInputs = inputs;
        return this;
    }
    function addShaped(inputs as IIngredient[][]) as recipeHolder {
        this.shapedInputs = inputs;
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
    function setMarkIndex(index as int) as recipeHolder {
        this.markIndex = index;
        return this;
    }
    function getName() as string {
        return this.name;
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
    function getTools() as int[IIngredient] {
        return this.tools;
    }
    function getFluids() as ILiquidStack[] {
        return this.fluids;
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
}