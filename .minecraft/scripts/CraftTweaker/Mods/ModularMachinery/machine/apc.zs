#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.modularmachinery.RecipeBuilder;

import scripts.grassUtils.StringHelper;

var itemTransform as int[IItemStack][IItemStack] = {
    <minecraft:rotten_flesh> : {<minecraft:leather> : 10000},
    <minecraft:coal:1> : {<minecraft:coal> : 30000},
    <contenttweaker:pure_iron_ingot> : {<naturesaura:infused_iron> : 15000},
    <minecraft:quartz> : {<minecraft:prismarine_shard> : 5500},
    <minecraft:glass_bottle> : {<minecraft:potion>.withTag({Potion: "minecraft:water"}) : 25000},
    <contenttweaker:sub_block_holder_2:12> : {<naturesaura:infused_iron_block> : 135000},
    <minecraft:red_mushroom> : {<minecraft:nether_wart> : 30000},
    <minecraft:stone> : {<naturesaura:infused_stone> : 7500}
};

for input, output in itemTransform {
    var machineName = "aura_perfusion_changer_controller";

    for output_, aura in output {
        var name = StringHelper.getItemNameWithUnderline(output_);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 10)
            .addItemInput(input)
            .addItemOutput(output_)
            .addAuraInput(aura / 10, true)
        .build();
    }
}
