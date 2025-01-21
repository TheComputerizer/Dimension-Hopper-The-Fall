#loader multiblocked

#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.RecipeMap;
import scripts.multiblocked.MBDHelper as MBD;

zenClass Assembler {
    val duration as int;
    val inputFE as int;
    val inputItems as IIngredient[];
    val inputLiquid as ILiquidStack;
    val outputItem as IItemStack;
    zenConstructor(ticks as int, power as int, output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
        this.duration = ticks;
        this.inputFE = power;
        this.inputItems = inputs;
        this.inputLiquid = liquid;
        this.outputItem = output;
    }
    zenConstructor(ticks as int, power as int, output as IItemStack, inputs as IIngredient[]) { //Why cant I do a default ILiquidStack arg??
        this.duration = ticks;
        this.inputFE = power;
        this.inputItems = inputs;
        this.inputLiquid = null;
        this.outputItem = output;
    }
    zenConstructor(duration as int, power as int, output as IItemStack, input as IIngredient, liquid as ILiquidStack) {
        this.duration = duration;
        this.inputFE = power;
        this.inputItems = [ input ] as IIngredient[];
        this.inputLiquid = liquid;
        this.outputItem = output;
    }
    function make(map as RecipeMap) {
        MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
            val rb as RecipeBuilder = MBD.perTickFE(builder.duration(this.duration),this.inputFE)
                .inputItems(this.inputItems).outputItems(this.outputItem);
            return isNull(this.inputLiquid) ? rb : rb.inputFluids(this.inputLiquid);
        });
    }
}

zenClass EctoplasmicGenerator {
    val inputItems as IIngredient[];
    val inputLiquid as ILiquidStack;
    val outputItems as IItemStack[];
    val inputFE as int;
    val outputFE as int;
    zenConstructor(power as int, input as IIngredient, output as IItemStack) {
        this.inputFE = 0;
        this.inputItems = [ input ] as IIngredient[];
        this.inputLiquid = null;
        this.outputFE = power;
        this.outputItems = [ output ] as IItemStack[];
    }
    zenConstructor(power as int, inputs as IIngredient[], liquid as ILiquidStack, outputs as IItemStack[]) {
        this.inputFE = power;
        this.inputItems = inputs;
        this.inputLiquid = liquid;
        this.outputFE = 0;
        this.outputItems = outputs;
    }
    function make(map as RecipeMap) {
        val duration as int = this.inputFE==0 ? 20 : 2;
        MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                var rb as RecipeBuilder = builder.duration(duration);
                rb = this.inputFE>0 ? MBD.perTickFE(rb,this.inputFE) : MBD.perTickFE(rb,this.outputFE,false);
                if(!isNull(this.inputLiquid)) {
                    rb = rb.inputFluids(this.inputLiquid);
                }
                return rb.inputItems(this.inputItems).outputItems(this.outputItems);
            });
    }
}
zenClass Factory {
    val inputItem as IIngredient;
    val inputMana as int;
    val outputItem as IItemStack;
    zenConstructor(mana as int, output as IItemStack, input as IIngredient) {
        this.inputItem = input;
        this.inputMana = mana;
        this.outputItem = output;
    }
    function make(maps as RecipeMap[]) {
        for i, map in maps {
            val power as int = (i==0 ? 1000 : (i==1 ? 20000 : 1000000));
            val duration as int = (i==0 ? 10 : (i==1 ? 5 : 1));
            MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                return MBD.perTickFE(builder.duration(duration),power)
                    .inputItems(this.inputItem).inputFluids(<liquid:mana>*this.inputMana)
                    .outputItems(this.outputItem);
            });
        }
    }
}
zenClass LightningInfusion {
    val duration as int;
    val inputLE as int;
    val outputItem as IItemStack;
    val inputItems as IIngredient[];
    zenConstructor(duration as int, le as int, output as IItemStack, inputs as IIngredient[]) {
        this.duration = duration;
        this.inputLE = le;
        this.outputItem = output;
        this.inputItems = inputs;
    }
    function makeStandard(maps as RecipeMap[]) {
	    for i in 0 .. 5 { //The scaling isn't direct so I guess if/else chaining it is
            var ticks = this.duration as double;
	        var power = this.inputLE as double;
	    	if(i>0) {
                if(i==1) {
	    	    	ticks*=((1/2) as double);
	    	    	power*=(2 as double);
	    	    } else if(i==2) {
	    	    	ticks*=((1/3) as double);
	    	    	power*=(3 as double);
	    	    } else if(i==3) {
	    	    	ticks*=((1/5) as double);
	    	    	power*=(5 as double);
	    	    } else {
	    	    	ticks*=((1/50) as double);
	    	    	power*=(25 as double);
	    	    }
	    	}
	    	MBD.lightningInfusion(maps[i],ticks as int,power as int,this.inputItems,this.outputItem);
	    }
    }
}
zenClass LightningReactor {
    val dimension as string;
    val duration as int;
    val inputFE as int;
    val inputHeat as int;
    val inputItem as IIngredient;
    val inputLE as int;
    val inputLiquid as ILiquidStack;
    val outputLE as int;
    zenConstructor(dimension as string, duration as int, power as int, heat as int, item as IIngredient, liquid as ILiquidStack, input as int, output as int) {
        this.dimension = dimension;
        this.duration = duration;
        this.inputFE = power;
        this.inputHeat = heat;
        this.inputItem = item;
        this.inputLE = input;
        this.inputLiquid = liquid;
        this.outputLE = output;
    }
    function make(maps as RecipeMap[]) {
        for i, map in maps {
            val adjustedLE as int = (i+1)*this.outputLE;
            MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                var rb as RecipeBuilder = builder.duration(this.duration).dimension(this.dimension).inputItems(this.inputItem);
                rb = MBD.perTickHeat(MBD.perTickFE(rb, this.inputFE), this.inputHeat);
                rb = MBD.perTickLE(MBD.perTickFluid(rb, this.inputLiquid), this.inputLE);
                return MBD.perTickLE(rb, adjustedLE, false);
            });
        }
    }
}
zenClass LimbonicGenerator {
    val catalyst as IIngredient;
    val inputLiquids as ILiquidStack[];
    val outputLiquid as ILiquidStack;
    val outputFE as int;
    zenConstructor(power as int, input as IIngredient, liquids as ILiquidStack[], waste as ILiquidStack) {
        this.catalyst = input;
        this.inputLiquids = liquids;
        this.outputLiquid = waste;
        this.outputFE = power;
    }
    function make(map as RecipeMap) {
        MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                return builder.duration(1).dimension("limbo").inputItems(this.catalyst).inputFluids(this.inputLiquids)
                    .outputFE(this.outputFE).outputFluids(this.outputLiquid);
            });
    }
}
zenClass OilCracker {
    val duration as int;
    val inputFE as int;
    val inputItem as IIngredient;
    val outputItem as IItemStack;
    val outputOil as int;
    zenConstructor(duration as int, power as int, oil as int, output as IItemStack, input as IIngredient) {
        this.duration = duration;
        this.inputFE = power;
        this.inputItem = input;
        this.outputItem = output;
        this.outputOil = oil;
    }
    zenConstructor(duration as int, power as int, oil as int, input as IIngredient) {
        this.duration = duration;
        this.inputFE = power;
        this.inputItem = input;
        this.outputItem = null;
        this.outputOil = oil;
    }
    function make(maps as RecipeMap[]) {
        for i, map in maps {
            val tieredFE as int = (i==0 ? this.inputFE : (i==1 ? (this.inputFE*20) : (this.inputFE*1000)));
            val tieredDuration as int = (i==0 ? this.duration : (i==1 ? (this.duration/2) : (this.duration/10)));
            MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                val rb as RecipeBuilder = MBD.perTickFE(builder.duration(tieredDuration),tieredFE)
                    .inputItems(this.inputItem).outputFluids(<liquid:oil>*this.outputOil);
                return isNull(this.outputItem) ? rb : rb.outputItems(this.outputItem);
            });
        }
    }
}
zenClass Psionic {
    val inputItem as IIngredient;
    val inputMana as int;
    val outputItem as IItemStack;
    zenConstructor(mana as int, output as IItemStack, input as IIngredient) {
        this.inputItem = input;
        this.inputMana = mana;
        this.outputItem = output;
    }
    function make(maps as RecipeMap[]) {
        for i, map in maps {
            val tieredFE as int = (i==0 ? 1000 : (i==1 ? 20000 : 1000000));
            val tieredDuration as int = (i==0 ? 10 : (i==1 ? 5 : 1));
            MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
                return MBD.perTickFE(builder.duration(tieredDuration),tieredFE)
                    .inputItems(this.inputItem).inputFluids(<liquid:mana>*this.inputMana)
                    .outputItems(this.outputItem);
            });
        }
    }
}
zenClass Singularity {
    val duration as int;
    val inputFE as int;
    val inputItems as IIngredient[];
    val inputLiquid as ILiquidStack;
    val name as string;
    val outputItem as IItemStack;
    zenConstructor(duration as int, power as int, output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
        this.duration = duration;
        this.inputFE = power;
        this.inputItems = inputs;
        this.inputLiquid = liquid;
        this.name = MBD.buildName("singularity",output);
        this.outputItem = output;
    }
    function make(map as RecipeMap) {
        MBD.wrap(map,function(builder as RecipeBuilder) as RecipeBuilder {
            return MBD.perTickFE(builder.name(this.name).duration(this.duration),this.inputFE)
                .inputItems(this.inputItems).inputFluids(this.inputLiquid)
                .outputItems(this.outputItem);
        });
    }
}