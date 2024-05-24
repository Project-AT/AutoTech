#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.extendedcrafting.TableCrafting;

function tableCraftingUtils(output as IItemStack, input as IIngredient[][]) {
	recipes.remove(output.withAmount(1));
	TableCrafting.addShaped(0, output, input);
}

//高级合成#############################################################################################
//合成核心
TableCrafting.remove(<extendedcrafting:crafting_core>);
tableCraftingUtils(<extendedcrafting:crafting_core>, [
	[<ore:blockTough>, <ore:plateTough>, <extendedcrafting:material:10>, <ore:plateTough>, <ore:blockTough>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:frame>, <ore:circuitElite>, <extendedcrafting:material:16>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<ore:blockTough>, <extendedcrafting:material:18>, <extendedcrafting:material:16>, <extendedcrafting:material:18>, <ore:blockTough>]
]);

//单推进燃料箱
tableCraftingUtils(<advancedrocketry:fueltank>, [
	[null, <ore:plateAdvanced>, <immersiveengineering:metal_device0:6>, <ore:plateAdvanced>, null], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[null, <ore:plateAdvanced>, <immersiveengineering:metal_device0:6>, <ore:plateAdvanced>, null]
]);

//高级火箭发动机
tableCraftingUtils(<advancedrocketry:advrocketmotor>, [
	[<ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>, <ore:ingotExtreme>, <ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotTitaniumAluminide>, <ore:ingotExtreme>, <ore:ingotExtreme>, <ore:ingotExtreme>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotTitaniumAluminide>, <simplyjetpacks:metaitemmods:11>, <ore:ingotExtreme>, <simplyjetpacks:metaitemmods:11>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>], 
	[<ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>]
]);

//单推进火箭发动机
tableCraftingUtils(<advancedrocketry:rocketmotor>, [
	[<ore:ingotHighStrengthAluminumAlloy>, <ore:ingotHighStrengthAluminumAlloy>, <ore:ingotTough>, <ore:ingotHighStrengthAluminumAlloy>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotHighStrengthAluminumAlloy>, <ore:ingotTough>, <ore:ingotTough>, <ore:ingotTough>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotHighStrengthAluminumAlloy>, <simplyjetpacks:metaitemmods:10>, <ore:ingotTough>, <simplyjetpacks:metaitemmods:10>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotSiCSiCCMC>, <simplyjetpacks:metaitemmods:10>, null, <simplyjetpacks:metaitemmods:10>, <ore:ingotSiCSiCCMC>], 
	[<ore:ingotSiCSiCCMC>, null, null, null, <ore:ingotSiCSiCCMC>]
]);

//分子装配机
tableCraftingUtils(<appliedenergistics2:molecular_assembler>, [
	[<ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>, <ore:fusedQuartz>, <ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:stickHighStrengthAluminumAlloy>, <extendedcrafting:material:8>, <appliedenergistics2:material:24>, <extendedcrafting:material:8>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:fusedQuartz>, <appliedenergistics2:material:24>, <extendedcrafting:table_basic>, <appliedenergistics2:material:24>, <ore:fusedQuartz>], 
	[<ore:stickHighStrengthAluminumAlloy>, <extendedcrafting:material:8>, <appliedenergistics2:material:24>, <extendedcrafting:material:8>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>, <ore:fusedQuartz>, <ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>]
]);

//ME控制器
tableCraftingUtils(<appliedenergistics2:controller>, [
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:dustSignalum>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<appliedenergistics2:material:1>, <appliedenergistics2:material:24>, <ore:circuitBasic>, <appliedenergistics2:material:24>, <appliedenergistics2:material:1>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:dustSignalum>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>]
]);

//ME驱动器
tableCraftingUtils(<appliedenergistics2:drive>, [
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <appliedenergistics2:material:24>, <ore:pearlFluix>, <appliedenergistics2:material:24>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:pearlFluix>, <matteroverdrive:me_conversion_matrix>, <ore:pearlFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <appliedenergistics2:material:24>, <ore:pearlFluix>, <appliedenergistics2:material:24>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateHighStrengthAluminumAlloy>]
]);

//飞龙注入合成装置
tableCraftingUtils(<draconicevolution:crafting_injector:1>, [
	[<ore:ingotTritanium>, <ore:ingotTritanium>, null, <ore:ingotTritanium>, <ore:ingotTritanium>], 
	[<ore:ingotExtreme>, <rftools:dimensional_shard>, <draconicevolution:wyvern_core>, <rftools:dimensional_shard>, <ore:ingotExtreme>], 
	[<ore:alloyAdvanced>, <draconicevolution:draconic_core>, <ore:gemDilithium>, <draconicevolution:draconic_core>, <ore:alloyAdvanced>], 
	[<ore:alloyAdvanced>, <matteroverdrive:s_magnet>, <ore:blockDraconium>, <matteroverdrive:s_magnet>, <ore:alloyAdvanced>], 
	[<ore:ingotExtreme>, <rftools:dimensional_shard>, <draconicevolution:crafting_injector>, <rftools:dimensional_shard>, <ore:ingotExtreme>]
]);

//双足飞龙核心
tableCraftingUtils(<draconicevolution:wyvern_core>, [
	[null, <ore:ingotDraconium>, <ore:alloyAdvanced>, <ore:ingotDraconium>, null], 
	[<ore:ingotDraconium>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <ore:ingotDraconium>], 
	[<ore:alloyAdvanced>, <ore:ingotTritanium>, <ore:circuitAdvanced>, <ore:ingotTritanium>, <ore:alloyAdvanced>], 
	[<ore:ingotDraconium>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <ore:ingotDraconium>], 
	[null, <ore:ingotDraconium>, <ore:alloyAdvanced>, <ore:ingotDraconium>, null]
]);

//超导磁体
tableCraftingUtils(<matteroverdrive:s_magnet>, [
	[null, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, null], 
	[<ore:ingotTritanium>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:ingotTritanium>], 
	[<ore:dustSignalum>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:dustSignalum>], 
	[<ore:ingotTritanium>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:ingotTritanium>], 
	[null, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, null]
]);

//高级控制电路
tableCraftingUtils(<mekanism:controlcircuit:1> * 4, [
	[<ore:dustCrystalBinder>, <ore:itemEnrichedAlloy>, <nuclearcraft:supercold_ice>, <ore:itemEnrichedAlloy>, <ore:dustCrystalBinder>], 
	[<ore:itemEnrichedAlloy>, <ore:circuitBasic>, <enderio:item_basic_capacitor:2>, <ore:circuitBasic>, <ore:itemEnrichedAlloy>], 
	[<nuclearcraft:supercold_ice>, <enderio:item_basic_capacitor:2>, <ore:dustCrystalBinder>, <enderio:item_basic_capacitor:2>, <nuclearcraft:supercold_ice>], 
	[<ore:itemEnrichedAlloy>, <ore:circuitBasic>, <enderio:item_basic_capacitor:2>, <ore:circuitBasic>, <ore:itemEnrichedAlloy>], 
	[<ore:dustCrystalBinder>, <ore:itemEnrichedAlloy>, <nuclearcraft:supercold_ice>, <ore:itemEnrichedAlloy>, <ore:dustCrystalBinder>]
]);

//模拟室
tableCraftingUtils(<deepmoblearning:simulation_chamber>, [
	[<ore:ingotTough>, <ore:alloyElite>, <ore:ingotTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[<ore:alloyElite>, <ore:itemInfinityGoop>, <matteroverdrive:holo_sign>, <ore:itemInfinityGoop>, <ore:alloyElite>], 
	[<ore:ingotTough>, <ore:circuitAdvanced>, <deepmoblearning:machine_casing>, <ore:circuitAdvanced>, <ore:ingotTough>], 
	[<ore:alloyElite>, <ore:itemInfinityGoop>, <draconicevolution:draconic_spawner>, <ore:itemInfinityGoop>, <ore:alloyElite>], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:ingotTough>, <ore:alloyElite>, <ore:ingotTough>]
]);

//离魂机器框架
tableCraftingUtils(<enderio:item_material:55>, [
	[<ore:itemEnhancedChassiParts>, <ore:dyeSoulMachine>, <ore:itemEnhancedChassiParts>, <ore:dyeSoulMachine>, <ore:itemEnhancedChassiParts>], 
	[<ore:dyeSoulMachine>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>, <appliedenergistics2:material:23>, <ore:dyeSoulMachine>], 
	[<ore:itemEnhancedChassiParts>, <appliedenergistics2:material:24>, <enderio:block_industrial_insulation>, <appliedenergistics2:material:24>, <ore:itemEnhancedChassiParts>], 
	[<ore:dyeSoulMachine>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <ore:dyeSoulMachine>], 
	[<ore:itemEnhancedChassiParts>, <ore:dyeSoulMachine>, <ore:itemEnhancedChassiParts>, <ore:dyeSoulMachine>, <ore:itemEnhancedChassiParts>]
]);

//精英合成#############################################################################################
//晶素锭
TableCrafting.remove(<extendedcrafting:material:24>);
tableCraftingUtils(<extendedcrafting:material:24> * 4, [
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

//自动化接口
tableCraftingUtils(<extendedcrafting:interface>, [
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:10>, <ore:ingotTough>, <ore:ingotTough>, null], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:material:16>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <appliedenergistics2:material:22>, <extendedcrafting:material:10>, <extendedcrafting:frame>, <extendedcrafting:material:10>, <appliedenergistics2:material:22>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:18>, <ore:circuitElite>, <extendedcrafting:material:18>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:12>, <ore:ingotTough>, <ore:ingotTough>, null]
]);

//神龙注入合成装置
tableCraftingUtils(<draconicevolution:crafting_injector:2>, [
	[null, null, null, <draconicevolution:wyvern_core>, null, null, null], 
	[<rftools:dimensional_shard>, <ore:alloyElite>, <draconicevolution:wyvern_core>, <draconicevolution:awakened_core>, <draconicevolution:wyvern_core>, <ore:alloyElite>, <rftools:dimensional_shard>], 
	[<ore:gemDilithium>, <ore:ingotExtreme>, <ore:alloyElite>, <rftools:dimensional_shard>, <ore:alloyElite>, <ore:ingotExtreme>, <ore:gemDilithium>], 
	[<ore:ingotTritanium>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotTritanium>], 
	[<ore:ingotTritanium>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:blockDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotTritanium>], 
	[<ore:ingotTritanium>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <draconicevolution:crafting_injector:1>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotTritanium>], 
	[<rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotExtreme>, <rftools:dimensional_shard>]
]);

//海森堡补偿器
tableCraftingUtils(<matteroverdrive:h_compensator>, [
	[null, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, null], 
	[<ore:plateTritanium>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:circuitElite>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:ingotExtreme>, <ore:gemDilithium>, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:ingotExtreme>, <ore:ingotSignalum>, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[null, <ore:plateTritanium>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:plateTritanium>, null], 
	[null, null, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, null, null]
]);

//质能转换矩阵
tableCraftingUtils(<matteroverdrive:me_conversion_matrix>, [
	[null, null, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:ingotExtreme>, null, null], 
	[null, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:circuitElite>, <extendedcrafting:material:48>, <ore:ingotExtreme>, null], 
	[null, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:crystalPureFluix>, <ore:gemDilithium>, <extendedcrafting:material:48>, null], 
	[null, <extendedcrafting:material:48>, <appliedenergistics2:material:44>, <ore:crystalPureFluix>, <appliedenergistics2:material:43>, <extendedcrafting:material:48>, null], 
	[null, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:crystalPureFluix>, <ore:gemDilithium>, <extendedcrafting:material:48>, null], 
	[null, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:circuitElite>, <extendedcrafting:material:48>, <ore:ingotExtreme>, null], 
	[null, null, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:ingotExtreme>, null, null]
]);

//精英控制电路
tableCraftingUtils(<mekanism:controlcircuit:2> * 4, [
	[<ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>], 
	[<ore:alloyElite>, <contenttweaker:ge_wafer>, <ore:skullEnderResonator>, <ore:skullGuardianDiode>, <ore:skullEnderResonator>, <contenttweaker:ge_wafer>, <ore:alloyElite>], 
	[<ore:itemInfinityGoop>, <enderio:item_capacitor_melodic>, <ore:circuitAdvanced>, <contenttweaker:ge_wafer>, <ore:circuitAdvanced>, <enderio:item_capacitor_melodic>, <ore:itemInfinityGoop>], 
	[<ore:alloyElite>, <ore:skullGuardianDiode>, <contenttweaker:ge_wafer>, <ore:itemInfinityGoop>, <contenttweaker:ge_wafer>, <ore:skullGuardianDiode>, <ore:alloyElite>], 
	[<ore:itemInfinityGoop>, <enderio:item_capacitor_melodic>, <ore:circuitAdvanced>, <contenttweaker:ge_wafer>, <ore:circuitAdvanced>, <enderio:item_capacitor_melodic>, <ore:itemInfinityGoop>], 
	[<ore:alloyElite>, <contenttweaker:ge_wafer>, <ore:skullEnderResonator>, <ore:skullGuardianDiode>, <ore:skullEnderResonator>, <contenttweaker:ge_wafer>, <ore:alloyElite>], 
	[<ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>, <ore:alloyElite>, <ore:itemInfinityGoop>]
]);


//终极合成#############################################################################################
//终极控制电路
tableCraftingUtils(<mekanism:controlcircuit:3> * 4, [
	[<ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <contenttweaker:si_gr_ge_transistor>, <ore:crystalPureFluix>, <matteroverdrive:trilithium_crystal>, <ore:crystalPureFluix>, <contenttweaker:si_gr_ge_transistor>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <ore:skullSentientEnder>, <matteroverdrive:trilithium_crystal>, <ore:skullSentientEnder>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <contenttweaker:si_gr_ge_transistor>, <ore:crystalPureFluix>, <matteroverdrive:trilithium_crystal>, <ore:crystalPureFluix>, <contenttweaker:si_gr_ge_transistor>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>]
]);

//混沌注入合成装置
tableCraftingUtils(<draconicevolution:crafting_injector:3>, [
	[<rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <draconicevolution:awakened_core>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>], 
	[<ore:ingotCrystaltine>, <ore:gemDilithium>, <ore:ingotCrystaltine>, <draconicevolution:awakened_core>, <draconicevolution:chaotic_core>, <draconicevolution:awakened_core>, <ore:ingotCrystaltine>, <ore:gemDilithium>, <ore:ingotCrystaltine>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotExtreme>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <ore:gemDilithium>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:gemDilithium>, <ore:alloyUltimate>], 
	[<matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:alloyUltimate>, <rftools:dimensional_shard>, <draconicevolution:crafting_injector:2>, <rftools:dimensional_shard>, <ore:alloyUltimate>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>], 
	[<ore:alloyUltimate>, <ore:gemDilithium>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:gemDilithium>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotExtreme>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>]
]);


//简化配方系列
//高级
mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:metal_decoration0:4> * 2, [
	[null, null, <ore:plateIron>, null, null], 
	[null, <ore:plateIron>, <ore:ingotCopper>, <ore:plateIron>, null], 
	[<ore:plateIron>, <ore:ingotCopper>, <ore:gearBronze>, <ore:ingotCopper>, <ore:plateIron>], 
	[null, <ore:plateIron>, <ore:ingotCopper>, <ore:plateIron>, null], 
	[null, null, <ore:plateIron>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:metal_decoration0:5> * 2, [
	[null, null, <ore:plateSteel>, null, null], 
	[null, <ore:plateSteel>, <ore:ingotBronze>, <ore:plateSteel>, null], 
	[<ore:plateSteel>, <ore:ingotSteel>, <ore:gearElectrum>, <ore:ingotSteel>, <ore:plateSteel>], 
	[null, <ore:plateSteel>, <ore:ingotBronze>, <ore:plateSteel>, null], 
	[null, null, <ore:plateSteel>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <embers:mech_core> * 2, [
	[null, <ore:plateIron>, <ore:plateSteel>, <ore:plateIron>, null], 
	[<ore:plateLead>, <ore:plateSteel>, <ore:ingotBronze>, <ore:plateSteel>, <ore:plateLead>], 
	[<ore:plateSteel>, <ore:ingotSteel>, <ore:gearElectrum>, <ore:ingotSteel>, <ore:plateSteel>], 
	[<ore:plateLead>, <ore:plateSteel>, <ore:ingotBronze>, <ore:plateSteel>, <ore:plateLead>], 
	[null, <ore:plateIron>, <ore:plateSteel>, <ore:plateIron>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <minecraft:crafting_table>, [
	[null, null, <ore:leather>, null, null], 
	[null, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:logWood>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:plankTreatedWood>, <ore:plankWood>, <ore:ingotIron>, <ore:plankWood>, <ore:plankTreatedWood>], 
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <artisanworktables:worktable:5>, [
	[null, <ore:plankWood>, <ore:leather>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:plankTreatedWood>, <ore:logWood>, <ore:plankTreatedWood>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:plankWood>, <ore:ingotIron>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:plankWood>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:part:10>, [
	[<ore:ingotHardCarbon>, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, <ore:ingotHardCarbon>], 
	[<ore:plateSteel>, <ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>, <ore:plateSteel>], 
	[<ore:barsIron>, null, <pneumaticcraft:printed_circuit_board>, null, <ore:barsIron>], 
	[<ore:plateSteel>, <ore:ingotIron>, <ore:dyeMachine>, <ore:ingotIron>, <ore:plateSteel>], 
	[<ore:ingotHardCarbon>, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, <ore:ingotHardCarbon>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:part:12>, [
	[<ore:ingotIronCompressed>, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, <ore:ingotIronCompressed>], 
	[<ore:plateSteel>, <ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>, <ore:plateSteel>], 
	[<ore:barsIron>, null, <ore:ingotBronze>, null, <ore:barsIron>], 
	[<ore:plateSteel>, <ore:ingotIron>, <ore:dyeMachine>, <ore:ingotIron>, <ore:plateSteel>], 
	[<ore:ingotIronCompressed>, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, <ore:ingotIronCompressed>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <advancedrocketry:misc>, [
	[<ore:plasticBlack>, <ore:blockGlassHardened>, <ore:plasticBlack>], 
	[<ore:ingotSmithingIron>, <contenttweaker:research_point_lv1>, <ore:ingotSmithingIron>], 
	[<ore:blockGlassHardened>, <ore:ingotSmithingIron>, <ore:blockGlassHardened>], 
	[<ore:plasticBlack>, <ore:blockGlassHardened>, <ore:plasticBlack>], 
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <matteroverdrive:holo_sign>, [
	[null, <ore:ingotSmithingIron>, <ore:ingotSmithingIron>, <ore:ingotSmithingIron>], 
	[<ore:plasticBlack>, <ore:blockGlassHardened>, <contenttweaker:research_point_lv1>, <ore:blockGlassHardened>, <ore:plasticBlack>], 
	[<ore:ingotTritanium>, <ore:plasticBlack>, <contenttweaker:thin_film_transistor>, <ore:plasticBlack>, <ore:ingotTritanium>], 
	[null, <ore:blockGlassHardened>, <ore:Signalum>, <ore:blockGlassHardened>], 
]);
//精英
mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:material:27> * 6, [
	[null, <embers:archaic_brick>, <ore:wireCopper>, null, <ore:wireCopper>, <embers:archaic_brick>, null], 
	[<embers:archaic_brick>, <ore:wireCopper>, <ore:plateCopper>, <ore:wireCopper>, <ore:plateCopper>, <ore:wireCopper>, <embers:archaic_brick>], 
	[<embers:archaic_brick>, <ore:wireCopper>, <ore:wireCopper>, <embers:archaic_brick>, <ore:wireCopper>, <ore:wireCopper>, <embers:archaic_brick>], 
	[<ore:wireCopper>, <ore:blockGlass>, <ore:wireCopper>, <embers:archaic_brick>, <ore:wireCopper>, <ore:blockGlass>, <ore:wireCopper>], 
	[<ore:blockGlass>, <ore:wireCopper>, <ore:blockGlass>, <embers:archaic_brick>, <ore:blockGlass>, <ore:wireCopper>, <ore:blockGlass>], 
	[<ore:crystalRedstone>, <ore:plateNickel>, <ore:dustRedstone>, <immersiveengineering:stone_decoration:8>, <ore:dustRedstone>, <ore:plateNickel>, <ore:crystalRedstone>],
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <enderio:item_material>, [
	[<ore:plateSteel>, null, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, null, <ore:plateSteel>], 
	[null, <ore:barsIron>, <ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>, <ore:barsIron>, null], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:ingotIron>, <ore:ingotElectrum>, <ore:ingotIron>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:barsIron>, <ore:plateLead>, <ore:ingotSteel>, <ore:ingotBronze>, <ore:ingotSteel>, <ore:plateLead>, <ore:barsIron>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:ingotIron>, <ore:ingotElectrum>, <ore:ingotIron>, <ore:plateSteel>, <ore:plateSteel>], 
	[null, <ore:barsIron>, <ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>, <ore:barsIron>, null], 
	[<ore:plateSteel>, null, <ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>, null, <ore:plateSteel>]
]);
