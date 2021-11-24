#priority 5
#modloaded atutils

import mods.roots.Spells;
import mods.roots.Spell;
import mods.roots.Costs;
import mods.roots.Herbs;


var chrysopoeia = Spells.getSpell("spell_chrysopoeia") as Spell;
chrysopoeia.setCost(Herbs.infernal_bulb, 0.2);
chrysopoeia.setCost(Herbs.spirit_herb, 0.7);
