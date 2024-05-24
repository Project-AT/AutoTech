#priority 5
#modloaded trutils

import mods.extendedcrafting.EnderCrafting;

// mods.extendedcrafting.EnderCrafting.addShaped(<output>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]], seconds);  
// mods.extendedcrafting.EnderCrafting.addShapeless(<output>, [<input>, <input>, seconds]); 

EnderCrafting.remove(<extendedcrafting:material:40>);
EnderCrafting.remove(<extendedcrafting:material:48>);

mods.extendedcrafting.EnderCrafting.addShaped(<thermalfoundation:material:167> * 4, [
	[<ore:ingotEnderiumBase>, <integrateddynamics:crystalized_chorus_block>, <ore:ingotEnderiumBase>], 
	[<integrateddynamics:crystalized_chorus_block>, <ore:ingotTerrasteel>, <integrateddynamics:crystalized_chorus_block>], 
	[<ore:ingotEnderiumBase>, <integrateddynamics:crystalized_chorus_block>, <ore:ingotEnderiumBase>]
]);