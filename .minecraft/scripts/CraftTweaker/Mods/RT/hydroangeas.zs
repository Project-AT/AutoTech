#priority 5
#modloaded atutils

import crafttweaker.liquid.ILiquidStack;

import mods.randomtweaker.botania.IHydroangeas;


var manaRecipe as ILiquidStack[int] = {
    2800 : <liquid:liquid_sunshine>,
    4000 : <liquid:nutrient_distillation>,
    5500 : <liquid:ender_distillation>
};

//IHydroangeas.setFactor(<liquid:mana_fluid>, <liquid:water>, 1.15);
IHydroangeas.setBlockBelowFactor(<roots:elemental_soil_water>, 1.15);

for key, value in manaRecipe {
    IHydroangeas.addManaRecipe(value, (key / 40), <liquid:water>, 1.15);
}