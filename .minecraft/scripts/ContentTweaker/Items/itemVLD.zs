#priority 30
#modloaded trutils
#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;
import scripts.grassUtils.CotUtils;

var vld as Item = VanillaFactory.createItem("villager_language_dictionary");
vld.creativeTab = CotUtils.tab;
vld.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote) {
        player.addGameStage("villager");
    }
    return "Pass";
};
vld.register();