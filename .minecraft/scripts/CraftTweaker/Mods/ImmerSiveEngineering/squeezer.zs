#priority 5
#modloaded atutils

import mods.immersiveengineering.Squeezer;

Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
Squeezer.addRecipe(<immersiveengineering:material:18>, null, <ore:dustCoke>, 2048);
Squeezer.addRecipe(<minecraft:rotten_flesh>, <liquid:blood> * 10, <biomesoplenty:fleshchunk>, 2048);