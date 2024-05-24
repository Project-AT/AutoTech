#priority 5
#modloaded trutils
import mods.advancedrocketry.RecipeTweaker;
import mods.advancedrocketry.RecipeBuilder;
import mods.advancedrocketry.RecipeRemover;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

static machineName as string = "RollingMachine";

function addRecipe(outpuItems as WeightedItemStack[], power as int, time as int, inputItems as IIngredient[], inputLiquids as ILiquidStack[]) {
    var recipeBuilder as RecipeBuilder = RecipeTweaker.forMachine(machineName).builder();
    for item in inputItems {
        recipeBuilder.input(item);
    }
    for item in outpuItems {
        recipeBuilder.outputItem(item);
    }
    for liquid in inputLiquids {
        recipeBuilder.inputLiquid(liquid);
    }
    recipeBuilder.timeRequired(time);
    recipeBuilder.power(power);
    recipeBuilder.build();
}

RecipeTweaker.forMachine(machineName).removeAll();