#priority 50
#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;

zenClass AlloySmelterRecipe {
    val energy as int;
    val inputs as IIngredient[];
    val output as IItemStack;
    val xp as float;
    zenConstructor(inputs as IIngredient[], output as IItemStack, energy as int, xp as float) {
        this.energy = energy;
        this.inputs = inputs;
        this.output = output;
        this.xp = xp;
    }
    function make() {
        AlloySmelter.addRecipe(this.output,this.inputs,this.energy,this.xp);
    }
}
zenClass SagMillRecipe {
    val input as IIngredient;
    val outputs as IItemStack[];
    var chances as float[] = [1.0, 0.1] as float[];
    var energy as int = 50000;
    var type as string = "MULTIPLY_OUTPUT";
    var xp as float[] = [10.0, 2.0] as float[];
    zenConstructor(input as IIngredient, outputs as IItemStack[]) {
        this.input = input;
        this.outputs = outputs;
    }
    function make() {
        SagMill.addRecipe(this.outputs,this.chances,this.input,this.type,this.energy,this.xp);
    }
    function setChances(chances as float[]) as SagMillRecipe {
        this.chances = chances;
        return this;
    }
    function setEnergy(energy as int) as SagMillRecipe {
        this.energy = energy;
        return this;
    }
    function setType(type as string) as SagMillRecipe {
        this.type = type;
        return this;
    }
    function setXP(xp as float[]) as SagMillRecipe {
        this.xp = xp;
        return this;
    }
}