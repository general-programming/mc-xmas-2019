#priority -500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.recipes.IRecipeFunction;

// Lock holding crafting and holding the items
function lockItems(stage as string, items as IIngredient[]) {
	for item in items {
		mods.ItemStages.addItemStage(stage, item);

		mods.recipestages.Recipes.setRecipeStage(stage, item);
	}
}

// Lock crafting the items, but allow holding
function lockParts(stage as string, parts as IIngredient[]) {
	for item in parts {
		mods.recipestages.Recipes.setRecipeStage(stage, item);
	}
}

// Lock recipes by name
function lockRecipes(stage as string, recipeNames as string[]) {
	for recipeName in recipeNames {
		mods.recipestages.Recipes.setRecipeStage(stage, recipeName);
	}
}

var stage = "unknown";

// --------------------
// Flight Research (T1)
// --------------------

stage = "research_flight_1";

recipes.addShapeless("research_flight_1", <contenttweaker:research_flight_1>, [
	<minecraft:book>,
	(
		<deepmoblearning:data_model_blaze>.withTag({tier: 2})
		| <deepmoblearning:data_model_blaze>.withTag({tier: 3})
		| <deepmoblearning:data_model_blaze>.withTag({tier: 4})
		| <deepmoblearning:data_model_blaze>.withTag({tier: 5})
	).reuse(),
	<minecraft:elytra>.onlyDamageAtMost(10),
	mobIngredient("minecraft:ghast"),
]);

lockItems(stage, [
	<animalbikes:flowerbike>, // Flower Bike
	<astralsorcery:itemgrapplewand>, // Impulsion Wand
	<bloodmagic:sigil_air>.withTag({}), // Air Sigil
	<xreliquary:rending_gale>.withTag({}),
]);

lockParts(stage, [
	<bloodmagic:component:2>, // Air Reagent
]);

// --------------------
// Flight Research (T2)
// --------------------

stage = "research_flight_2";

recipes.addShapeless("research_flight_2", <contenttweaker:research_flight_2>, [
	<minecraft:book>,
	(
		<deepmoblearning:data_model_blaze>.withTag({tier: 3})
		| <deepmoblearning:data_model_blaze>.withTag({tier: 4})
		| <deepmoblearning:data_model_blaze>.withTag({tier: 5})
	).reuse(),
	(
		<deepmoblearning:data_model_ghast>.withTag({tier: 3})
		| <deepmoblearning:data_model_ghast>.withTag({tier: 4})
		| <deepmoblearning:data_model_ghast>.withTag({tier: 5})
	).reuse(),
	(
		<deepmoblearning:data_model_wither>.withTag({tier: 3})
		| <deepmoblearning:data_model_wither>.withTag({tier: 4})
		| <deepmoblearning:data_model_wither>.withTag({tier: 5})
	).reuse(),
]);

lockItems(stage, [
	<simplyjetpacks:itemjetpack:1>, // Conductive Iron Jetpack
	<simplyjetpacks:itemjetpack:1>.withTag({}), // Conductive Iron Jetpack
	<simplyjetpacks:itemjetpack:1>.withTag({JetpackHoverModeOn: 0 as byte}), // Conductive Iron Jetpack
	<simplyjetpacks:itemjetpack:1>.withTag({JetpackHoverModeOn: 1 as byte}), // Conductive Iron Jetpack
	<simplyjetpacks:itemjetpack:5>, // Conductive Iron Jetpack (Armored)
	<simplyjetpacks:itemjetpack:5>.withTag({}), // Conductive Iron Jetpack (Armored)
	<simplyjetpacks:itemjetpack:5>.withTag({JetpackHoverModeOn: 0 as byte}), // Conductive Iron Jetpack (Armored)
	<simplyjetpacks:itemjetpack:5>.withTag({JetpackHoverModeOn: 1 as byte}), // Conductive Iron Jetpack (Armored)
	<simplyjetpacks:itemjetpack:2>, // Electrical Steel Jetpack
	<simplyjetpacks:itemjetpack:2>.withTag({}), // Electrical Steel Jetpack
	<simplyjetpacks:itemjetpack:2>.withTag({JetpackHoverModeOn: 0 as byte}), // Electrical Steel Jetpack
	<simplyjetpacks:itemjetpack:2>.withTag({JetpackHoverModeOn: 1 as byte}), // Electrical Steel Jetpack
	<simplyjetpacks:itemjetpack:6>, // Electrical Steel Jetpack (Armored)
	<simplyjetpacks:itemjetpack:6>.withTag({}), // Electrical Steel Jetpack (Armored)
	<simplyjetpacks:itemjetpack:6>.withTag({JetpackHoverModeOn: 0 as byte}), // Electrical Steel Jetpack (Armored)
	<simplyjetpacks:itemjetpack:6>.withTag({JetpackHoverModeOn: 1 as byte}), // Electrical Steel Jetpack (Armored)
	<simplyjetpacks:itemjetpack:10>, // Leadstone Jetpack
	<simplyjetpacks:itemjetpack:10>.withTag({}), // Leadstone Jetpack
	<simplyjetpacks:itemjetpack:10>.withTag({JetpackHoverModeOn: 0 as byte}), // Leadstone Jetpack
	<simplyjetpacks:itemjetpack:10>.withTag({JetpackHoverModeOn: 1 as byte}), // Leadstone Jetpack
	<simplyjetpacks:itemjetpack:14>, // Leadstone Jetpack (Armored)
	<simplyjetpacks:itemjetpack:14>.withTag({}), // Leadstone Jetpack (Armored)
	<simplyjetpacks:itemjetpack:14>.withTag({JetpackHoverModeOn: 0 as byte}), // Leadstone Jetpack (Armored)
	<simplyjetpacks:itemjetpack:14>.withTag({JetpackHoverModeOn: 1 as byte}), // Leadstone Jetpack (Armored)
	<simplyjetpacks:itemjetpack:11>, // Hardened Jetpack
	<simplyjetpacks:itemjetpack:11>.withTag({}), // Hardened Jetpack
	<simplyjetpacks:itemjetpack:11>.withTag({JetpackHoverModeOn: 0 as byte}), // Hardened Jetpack
	<simplyjetpacks:itemjetpack:11>.withTag({JetpackHoverModeOn: 1 as byte}), // Hardened Jetpack
	<simplyjetpacks:itemjetpack:15>, // Hardened Jetpack (Armored)
	<simplyjetpacks:itemjetpack:15>.withTag({}), // Hardened Jetpack (Armored)
	<simplyjetpacks:itemjetpack:15>.withTag({JetpackHoverModeOn: 0 as byte}), // Hardened Jetpack (Armored)
	<simplyjetpacks:itemjetpack:15>.withTag({JetpackHoverModeOn: 1 as byte}), // Hardened Jetpack (Armored)
	<animalbikes:ponybike>,
	<animalbikes:dragonbike>,
	<animalbikes:reindeerbike>,
	<animalbikes:ghastbike>,
	<animalbikes:dinobike>,
	<animalbikes:batbike>,
	<animalbikes:chinesedragonbike>,
	<animalbikes:witherbike>,
	<extrautils2:chickenring:1>, // Ring of the Flying Squid
	<powersuits:powerarmorcomponent:4>, // Ion Thruster
]);

lockParts(stage, [
	<simplyjetpacks:metaitemmods:7>, // Conductive Iron Thruster
	<simplyjetpacks:metaitemmods:7>, // Conductive Iron Thruster
	<simplyjetpacks:metaitemmods:8>, // Electrical Steel Thruster
	<simplyjetpacks:metaitemmods:26>, // Leadstone Thruster
	<simplyjetpacks:metaitemmods:27>, // Hardened Thruster
	<contenttweaker:flying_saddle>,
]);

lockRecipes(stage, [
	"simplyjetpacks:upgraderecipe1", // Conductive Iron Jetpack
	"simplyjetpacks:upgraderecipe2", // Electrical Steel Jetpack
	"simplyjetpacks:upgraderecipe30", // Leadstone Jetpack
	"simplyjetpacks:upgraderecipe31", // Hardened Jetpack
]);

// --------------------
// Flight Research (T3)
// --------------------

stage = "research_flight_3";

recipes.addShapeless("research_flight_3", <contenttweaker:research_flight_3>, [
	<minecraft:book>,
	(
		<deepmoblearning:data_model_wither>.withTag({tier: 4})
		| <deepmoblearning:data_model_wither>.withTag({tier: 5})
	).reuse(),
	(
		<deepmoblearning:data_model_dragon>.withTag({tier: 4})
		| <deepmoblearning:data_model_dragon>.withTag({tier: 5})
	).reuse(),
]);

lockItems(stage, [
	<rftools:flight_module>, // Environmental Flight Module
	<extrautils2:angelring:*>, // Angel Rings
	<simplyjetpacks:itemjetpack:3>, // Energetic Jetpack
	<simplyjetpacks:itemjetpack:3>.withTag({}), // Energetic Jetpack
	<simplyjetpacks:itemjetpack:3>.withTag({JetpackHoverModeOn: 0 as byte}), // Energetic Jetpack
	<simplyjetpacks:itemjetpack:3>.withTag({JetpackHoverModeOn: 1 as byte}), // Energetic Jetpack
	<simplyjetpacks:itemjetpack:7>, // Energetic Jetpack (Armored)
	<simplyjetpacks:itemjetpack:7>.withTag({}), // Energetic Jetpack (Armored)
	<simplyjetpacks:itemjetpack:7>.withTag({JetpackHoverModeOn: 0 as byte}), // Energetic Jetpack (Armored)
	<simplyjetpacks:itemjetpack:7>.withTag({JetpackHoverModeOn: 1 as byte}), // Energetic Jetpack (Armored)
	<simplyjetpacks:itemjetpack:4>, // Vibrant Jetpack
	<simplyjetpacks:itemjetpack:4>.withTag({}), // Vibrant Jetpack
	<simplyjetpacks:itemjetpack:4>.withTag({JetpackHoverModeOn: 0 as byte}), // Vibrant Jetpack
	<simplyjetpacks:itemjetpack:4>.withTag({JetpackHoverModeOn: 1 as byte}), // Vibrant Jetpack
	<simplyjetpacks:itemjetpack:8>, // Vibrant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:8>.withTag({}), // Vibrant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:8>.withTag({JetpackHoverModeOn: 0 as byte}), // Vibrant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:8>.withTag({JetpackHoverModeOn: 1 as byte}), // Vibrant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:12>, // Reinforced Jetpack
	<simplyjetpacks:itemjetpack:12>.withTag({}), // Reinforced Jetpack
	<simplyjetpacks:itemjetpack:12>.withTag({JetpackHoverModeOn: 0 as byte}), // Reinforced Jetpack
	<simplyjetpacks:itemjetpack:12>.withTag({JetpackHoverModeOn: 1 as byte}), // Reinforced Jetpack
	<simplyjetpacks:itemjetpack:16>, // Reinforced Jetpack (Armored)
	<simplyjetpacks:itemjetpack:16>.withTag({}), // Reinforced Jetpack (Armored)
	<simplyjetpacks:itemjetpack:16>.withTag({JetpackHoverModeOn: 0 as byte}), // Reinforced Jetpack (Armored)
	<simplyjetpacks:itemjetpack:16>.withTag({JetpackHoverModeOn: 1 as byte}), // Reinforced Jetpack (Armored)
	<simplyjetpacks:itemjetpack:13>, // Resonant Jetpack
	<simplyjetpacks:itemjetpack:13>.withTag({}), // Resonant Jetpack
	<simplyjetpacks:itemjetpack:13>.withTag({JetpackHoverModeOn: 0 as byte}), // Resonant Jetpack
	<simplyjetpacks:itemjetpack:13>.withTag({JetpackHoverModeOn: 1 as byte}), // Resonant Jetpack
	<simplyjetpacks:itemjetpack:17>, // Resonant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:17>.withTag({}), // Resonant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:17>.withTag({JetpackHoverModeOn: 0 as byte}), // Resonant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:17>.withTag({JetpackHoverModeOn: 1 as byte}), // Resonant Jetpack (Armored)
	<simplyjetpacks:itemjetpack:9>, // Dark Soularium JetPlate
	<simplyjetpacks:itemjetpack:9>.withTag({}), // Dark Soularium JetPlate
	<simplyjetpacks:itemjetpack:9>.withTag({JetpackHoverModeOn: 0 as byte}), // Dark Soularium JetPlate
	<simplyjetpacks:itemjetpack:9>.withTag({JetpackHoverModeOn: 1 as byte}), // Dark Soularium JetPlate
	<simplyjetpacks:itemjetpack:18>, // Flux-Infused JetPlate
	<simplyjetpacks:itemjetpack:18>.withTag({}), // Flux-Infused JetPlate
	<simplyjetpacks:itemjetpack:18>.withTag({JetpackHoverModeOn: 0 as byte}), // Flux-Infused JetPlate
	<simplyjetpacks:itemjetpack:18>.withTag({JetpackHoverModeOn: 1 as byte}), // Flux-Infused JetPlate
	<bewitchment:broom>,
	<bewitchment:broom:1>,
	<bewitchment:broom:2>,
	<bewitchment:broom:3>,
	<bewitchment:broom:4>,
	<evilcraft:broom>,
	<evilcraft:broom>.withTag({}),
	<evilcraft:broom>.withTag({Fluid:{}}),
	<botania:flighttiara:*>, // Flugel Tiara
	<environmentaltech:modifier_creative_flight>, // Creative Flight Modifier
	<actuallyadditions:item_wings_of_the_bats>, // Wings Of The Bats
	<thebetweenlands:ring_of_flight>, // Ring of Ascent
	<mysticalagriculture:supremium_helmet:*>,
	<mysticalagriculture:supremium_chestplate:*>,
	<mysticalagriculture:supremium_leggings:*>,
	<mysticalagriculture:supremium_boots:*>,
	<deepmoblearning:glitch_infused_helmet:*>,
	<deepmoblearning:glitch_infused_chestplate:*>,
	<deepmoblearning:glitch_infused_leggings:*>,
	<deepmoblearning:glitch_infused_boots:*>,
]);

lockParts(stage, [
	<simplyjetpacks:metaitemmods:9>, // Energetic Thruster
	<simplyjetpacks:metaitemmods:10>, // Vibrant Thruster
	<simplyjetpacks:metaitemmods:28>, // Reinforced Thruster
	<simplyjetpacks:metaitemmods:29>, // Resonant Thruster
	<simplyjetpacks:metaitemmods:11>, // Dark Soularium Thruster
	<simplyjetpacks:metaitemmods:30>, // Fluxed Thruster
	<simplyjetpacks:metaitemmods:4>, // Reinforced Glider Wing
	<simplyjetpacks:metaitemmods:5>, // Flight Control Unit (Empty)
	<simplyjetpacks:metaitemmods:16>, // Fluxed Armor Plating
	<simplyjetpacks:metaitemmods:17>, // Flux-Infused Chestplate Assembly
	<simplyjetpacks:metaitemmods:18>, // Glowstone Elevation Unit (Empty)
	<simplyjetpacks:metaitemmods:20>, // Cryothium Coolant Unit (Empty)
	<evilcraft:broom_part>, // Broom Part/Cap
	<mysticalagriculture:gear:9>, // Supremium Armor Core
]);

lockRecipes(stage, [
	"simplyjetpacks:upgraderecipe3", // Energetic Jetpack
	"simplyjetpacks:upgraderecipe4", // Vibrant Jetpack
	"simplyjetpacks:upgraderecipe32", // Reinforced Jetpack
	"simplyjetpacks:upgraderecipe33", // Resonant Jetpack
	"simplyjetpacks:upgraderecipe5", // Dark Soularium JetPlate
	"simplyjetpacks:upgraderecipe34", // Flux-Infused JetPlate
]);
