#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;

furnace.remove(<draconicevolution:draconium_ingot>);

RecipeUtils.recipeTweak(true, <draconicevolution:draconic_core>, [
    [<ore:itemEnrichedAlloy>, <draconicevolution:draconium_ingot>, <ore:itemEnrichedAlloy>],
    [<draconicevolution:draconium_ingot>, <ore:circuitBasic>, <draconicevolution:draconium_ingot>],
    [<ore:itemEnrichedAlloy>, <draconicevolution:draconium_ingot>, <ore:itemEnrichedAlloy>]
]);

RecipeUtils.recipeTweak(true, <draconicevolution:crafting_injector>, [
    [<rftools:dimensional_shard>, <draconicevolution:draconic_core>, <rftools:dimensional_shard>],
    [<ore:ingotTough>, <ore:blockTitaniumIridium>, <ore:ingotTough>],
    [<ore:ingotTough>, <matteroverdrive:s_magnet>, <ore:ingotTough>]
]);
