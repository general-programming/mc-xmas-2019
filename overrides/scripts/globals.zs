#priority 1000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

global mobIngredient as function(string) IIngredient = function(mobID as string) as IIngredient {
	return (<enderio:item_soul_vial:1>.withTag({entityId: mobID}).giveBack(<enderio:item_soul_vial:0>))
		| (<extrautils2:goldenlasso:1>.withTag({Animal: {id: mobID}}).giveBack(<extrautils2:goldenlasso:1>))
		| (<extrautils2:goldenlasso:0>.withTag({Animal: {id: mobID}}).giveBack(<extrautils2:goldenlasso:0>))
		| (<thermalexpansion:morb:0>.withTag({id: mobID}))
		| (<thermalexpansion:morb:1>.withTag({id: mobID}).giveBack(<thermalexpansion:morb:1>));
};

// If you decide to finish this, good luck. Every one of the 5 mods that add a new potion item for whatever reason use different NBT structure for the potions.
/* global potionIngredient as function(string) IIngredient = function(potionID as string) as IIngredient {
	return <minecraft:potion>.withTag({Potion: potionID})
		| <minecraft:splash_potion>.withTag({Potion: potionID})
		| <minecraft:lingering_potion>.withTag({Potion: potionID})
		| <thermalexpansion:morb:0>.withTag({id: mobID})
		| <thermalexpansion:morb:1>.withTag({id: potionID});
}; */
