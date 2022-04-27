#priority 26
#modloaded trutils
#loader contenttweaker

import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityLivingBase;

import mods.contenttweaker.VanillaFactory;

var flcn = VanillaFactory.createBaubleItem("four_leaf_clover_necklace");
flcn.rarity = "rare";
flcn.onWornTick = function(bauble, wearer) {
    var player as IPlayer = wearer;
    player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(20, 1, true, false));
};
flcn.baubleType = "AMULET";
flcn.register();

var calm = VanillaFactory.createBaubleItem("calm");
calm.baubleType = "RING";
calm.onWornTick = function(bauble, wearer) {
    if(!isPlayer(wearer)) return;

    var player as IPlayer = wearer;
    player.update({calmSlot : player.isBaubleEquipped(<item:contenttweaker:calm>)});
};
calm.onUnequipped = function(bauble, wearer) {
    if(!isPlayer(wearer)) return;

    var player as IPlayer = wearer;
    player.update({calmSlot : -1 as int});

    removeTag(bauble);
};
calm.register();

var fury = VanillaFactory.createBaubleItem("fury");
fury.baubleType = "RING";
fury.onWornTick = function(bauble, wearer) {
    if(!isPlayer(wearer)) return;

    var player as IPlayer = wearer;
    player.update({furySlot : player.isBaubleEquipped(<item:contenttweaker:fury>)});
};
fury.onUnequipped = function(bauble, wearer) {
    if(!isPlayer(wearer)) return;

    var player as IPlayer = wearer;
    player.update({furySlot : -1 as int});

    removeTag(bauble);
};
fury.register();

var excavation = VanillaFactory.createBaubleItem("excavation");
excavation.baubleType = "RING";
excavation.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        if (!player.world.remote) player.setAllowFTBUltimine(true);
    }
};
excavation.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        if (!player.world.remote) player.setAllowFTBUltimine(false);
    }
};
excavation.register();

function removeTag(bauble as IItemStack) as void {
    if(bauble.hasTag && !isNull(bauble.tag.critical)) {
        bauble.mutable().removeTag("critical");
    }
}

function isPlayer(wearer as IEntityLivingBase) as bool {
    return wearer instanceof IPlayer && !wearer.world.remote;
}