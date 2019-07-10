#priority -500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

// Lock holding crafting and holding the items
function lockItems(stage as string, items as IItemStack[]) {
	for item in items {
		mods.ItemStages.addItemStage(stage, item);

		for recipe in recipes.getRecipesFor(item) {
			mods.recipestages.Recipes.setRecipeStage(stage, recipe.name);
		}
	}
}

// Lock crafting the items, but allow holding
function lockParts(stage as string, parts as IItemStack[]) {
	for item in parts {
		for recipe in recipes.getRecipesFor(item) {
			mods.recipestages.Recipes.setRecipeStage(stage, recipe.name);
		}
	}
}

// --------------------
// Flight Research (T1)
// --------------------

// TODO
recipes.addShapeless("research_flight_1", <contenttweaker:research_flight_1>, [
	<minecraft:book>,
	<minecraft:elytra>.onlyDamageAtMost(10),
	mobIngredient("minecraft:ghast"),
]);

lockItems("research_flight_1", [
	<extrautils2:chickenring:1>, // Ring of the Flying Squid
	<animalbikes:flowerbike>, // Flower Bike
]);

// --------------------
// Flight Research (T2)
// --------------------

// TODO
recipes.addShapeless("research_flight_2", <contenttweaker:research_flight_2>, [
	<contenttweaker:research_flight_1>.reuse(),
	<minecraft:elytra>.onlyDamageAtMost(10),
	mobIngredient("minecraft:ghast"),
]);

lockItems("research_flight_2", [
	<xreliquary:rending_gale>,
	<simplyjetpacks:itemjetpack:1>, // Conductive Iron Jetpack
	<simplyjetpacks:itemjetpack:5>, // Conductive Iron Jetpack (Armored)
	<simplyjetpacks:itemjetpack:2>, // Electrical Steel Jetpack
	<simplyjetpacks:itemjetpack:6>, // Electrical Steel Jetpack (Armored)
	<simplyjetpacks:itemjetpack:10>, // Leadstone Jetpack
	<simplyjetpacks:itemjetpack:14>, // Leadstone Jetpack (Armored)
	<simplyjetpacks:itemjetpack:11>, // Hardened Jetpack
	<simplyjetpacks:itemjetpack:15>, // Hardened Jetpack (Armored)
	<animalbikes:ponybike>,
	<animalbikes:dragonbike>,
	<animalbikes:reindeerbike>,
	<animalbikes:ghastbike>,
	<animalbikes:dinobike>,
	<animalbikes:chinesedragonbike>,
	<animalbikes:witherbike>,
	<astralsorcery:itemgrapplewand>, // Impulsion Wand
	<bloodmagic:sigil_air>, // Air Sigil
]);

lockParts("research_flight_2", [
	<simplyjetpacks:metaitemmods:7>, // Conductive Iron Thruster
	<simplyjetpacks:metaitemmods:8>, // Electrical Steel Thruster
	<simplyjetpacks:metaitemmods:26>, // Leadstone Thruster
	<simplyjetpacks:metaitemmods:27>, // Hardened Thruster
	<powersuits:powerarmorcomponent:4>, // Ion Thruster
	<contenttweaker:flying_saddle>,
]);

// --------------------
// Flight Research (T3)
// --------------------

// TODO
recipes.addShapeless("research_flight_3", <contenttweaker:research_flight_3>, [
	<contenttweaker:research_flight_2>.reuse(),
	<minecraft:elytra>.onlyDamageAtMost(10),
	mobIngredient("minecraft:ghast"),
]);

lockItems("research_flight_3", [
	<rftools:flight_module>, // Environmental Flight Module
	<extrautils2:angelring:*>, // Angel Rings
	<simplyjetpacks:itemjetpack:3>, // Energetic Jetpack
	<simplyjetpacks:itemjetpack:7>, // Energetic Jetpack (Armored)
	<simplyjetpacks:itemjetpack:4>, // Vibrant Jetpack
	<simplyjetpacks:itemjetpack:8>, // Vibrant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:12>, // Reinforced Jetpack
	<simplyjetpacks:itemjetpack:16>, // Reinforced Jetpack (Armored)
	<simplyjetpacks:itemjetpack:13>, // Resonant Jetpack
	<simplyjetpacks:itemjetpack:17>, // Resonant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:9>, // Dark Soularium JetPlate
	<simplyjetpacks:itemjetpack:18>, // Flux-Infused JetPlate
	<bewitchment:broom>,
	<evilcraft:broom>,
	<botania:flighttiara>, // Flugel Tiara
	<environmentaltech:modifier_creative_flight>, // Creative Flight Modifier
	<actuallyadditions:item_wings_of_the_bats>, // Wings Of The Bats
	<thebetweenlands:ring_of_flight>, // Ring of Ascent
	<mysticalagriculture:supremium_helmet>,
	<mysticalagriculture:supremium_chestplate>,
	<mysticalagriculture:supremium_leggings>,
	<mysticalagriculture:supremium_boots>,
	<deepmoblearning:glitch_infused_helmet>,
	<deepmoblearning:glitch_infused_chestplate>,
	<deepmoblearning:glitch_infused_leggings>,
	<deepmoblearning:glitch_infused_boots>,
]);

lockParts("research_flight_3", [
	<simplyjetpacks:metaitemmods:9>, // Energetic Thruster
	<simplyjetpacks:metaitemmods:10>, // Vibrant Thruster
	<simplyjetpacks:metaitemmods:28>, // Reinforced Thruster
	<simplyjetpacks:metaitemmods:29>, // Resonant Thruster
	<simplyjetpacks:metaitemmods:11>, // Dark Soularium Thruster
	<simplyjetpacks:metaitemmods:30>, // Fluxed Thruster
	<evilcraft:broom_part>, // Broom Part/Cap
	<mysticalagriculture:gear:9>, // Supremium Armor Core
]);
