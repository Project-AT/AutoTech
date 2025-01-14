#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <extendedcrafting:table_advanced>, [
    [<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:15>, <ore:blockTough>, <extendedcrafting:material:15>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:16>, [
    [null, <ore:plateTough>, null],
    [<ore:alloyElite>, <appliedenergistics2:material:16>, <ore:alloyElite>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:12>, [
    [null, <extendedcrafting:material:18>],
    [<extendedcrafting:material:18>, <ore:ingotTough>, <extendedcrafting:material:18>],
    [null, <extendedcrafting:material:18>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_elite>, [
    [<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:16>, <ore:blockTough>, <extendedcrafting:material:16>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:10>, [
    [null, <extendedcrafting:material:16>, null],
    [<extendedcrafting:material:16>, <ore:ingotTough>, <extendedcrafting:material:16>],
    [null, <extendedcrafting:material:16>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:14>, [
    [<mekanism:craftingformula>, <ore:plateTough>, <ore:bPlaceholder>],
    [<ore:ingotIvoryPsi>, null, <ore:ingotIvoryPsi>],
    [<ore:bPlaceholder>, <ore:plateTough>, <mekanism:craftingformula>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:9>, [
    [null, <extendedcrafting:material:15>],
    [<extendedcrafting:material:15>, <appliedenergistics2:material:24>, <extendedcrafting:material:15>],
    [null, <extendedcrafting:material:15>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:pedestal>, [
    [<ore:plateTough>, <ore:ingotTough>, <ore:plateTough>],
    [null, <ore:ingotTough>, null],
    [<ore:ingotTough>, <ore:blockTough>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:8>, [
    [null, <extendedcrafting:material:14>, null],
    [<extendedcrafting:material:14>, <appliedenergistics2:material:24>, <extendedcrafting:material:14>],
    [null, <extendedcrafting:material:14>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:18>, [
    [null, <ore:plateTough>, null],
    [<ore:ingotCrystaltine>, <appliedenergistics2:material:16>, <ore:ingotCrystaltine>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:frame>, [
    [<ore:ingotTough>, <ore:fusedQuartz>, <ore:ingotTough>],
    [<ore:fusedQuartz>, <ore:plateTough>, <ore:fusedQuartz>],
    [<ore:ingotTough>, <ore:fusedQuartz>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:17>, [
    [null, <ore:plateTough>, null],
    [<ore:ingotTerrasteel>, <appliedenergistics2:material:16>, <ore:ingotTerrasteel>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_ultimate>, [
    [<extendedcrafting:material:17>, <extendedcrafting:material:11>, <extendedcrafting:material:17>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:17>, <ore:blockTough>, <extendedcrafting:material:17>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_basic>, [
    [<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
    [<ore:plateTough>, <artisanworktables:worktable:5>, <ore:plateTough>],
    [<extendedcrafting:material:14>, <ore:blockTough>, <extendedcrafting:material:14>]
]);

recipes.replaceAllOccurences(<ore:blockBlackIron>, <ore:blockTough>, <*>.only(function(stack) {
    return stack.definition.id == "extendedcrafting:trimmed";
}));

RecipeUtils.recipeTweak(true, <extendedcrafting:material:15>, [
    [<mekanism:craftingformula>, <ore:plateTough>, <ore:bPlaceholder>],
    [<ore:ingotLumium>, null, <ore:ingotLumium>],
    [<ore:bPlaceholder>, <ore:plateTough>, <mekanism:craftingformula>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:7> * 2, 
    inputPatternGet(["AAA", "ABA", "AAA"], {
        "A" : <enderio:block_holier_fog>,
        "B" : <extrautils2:suncrystal>
}));

val removeItem as IItemStack[] = [
    <extendedcrafting:material:36>, <extendedcrafting:material:37>, <extendedcrafting:storage:5>, <extendedcrafting:material:140>
];

for i in removeItem {
    recipes.remove(i);
}

recipes.replaceAllOccurences(<extendedcrafting:storage>, <ore:blockTough>);

recipes.removeShaped(<minecraft:nether_star>, [
    [<extendedcrafting:material:140>, <extendedcrafting:material:140>, <extendedcrafting:material:140>],
    [<extendedcrafting:material:140>, <extendedcrafting:material:140>, <extendedcrafting:material:140>],
    [<extendedcrafting:material:140>, <extendedcrafting:material:140>, <extendedcrafting:material:140>]
]);

recipes.remove(<extendedcrafting:ender_alternator>);
recipes.remove(<extendedcrafting:ender_crafter>);

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotVibrantAlloy>, <ore:pearlEnderEye>, <ore:ingotVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <ore:gemDilithium>, <ore:ingotVibrantAlloy>],
    [<ore:ingotEnderiumBase>, <ore:ingotEnderiumBase>, <ore:ingotEnderiumBase>]])
  .setSecondaryIngredients([<contenttweaker:teleport_rune>])
  .addTool(<ore:artisansGrimoire>, 25)
  .addTool(<ore:artisansSpanner>, 35)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<extendedcrafting:ender_alternator>)
  .create();