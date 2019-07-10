import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

// TODO
recipes.addShaped("flying_saddle", <contenttweaker:flying_saddle>, [
	[null, <minecraft:elytra>.onlyDamageAtMost(10), null],
	[<extrautils2:chickenring:1>, <minecraft:saddle>, <contenttweaker:research_flight_3>.reuse()],
	[null, null, null]
]);

function addSimpleRide(ride as IItemStack, mob as IIngredient, essence as IIngredient, food as IIngredient) {
	addSimpleRideExtra(ride, mob, essence, food, food);
}

function addSimpleRideExtra(ride as IItemStack, mob as IIngredient, essence as IIngredient, food as IIngredient, extra as IIngredient) {
	recipes.addShaped("animalbikes_" ~ ride.name, ride, [
		[essence, extra, essence],
		[food, <minecraft:saddle>, food],
		[essence, mob, essence]
	]);
}

function addFlyingRide(ride as IItemStack, mob as IIngredient, essence as IIngredient, food as IIngredient) {
	addFlyingRideExtra(ride, mob, essence, food, food);
}

function addFlyingRideExtra(ride as IItemStack, mob as IIngredient, essence as IIngredient, food as IIngredient, extra as IIngredient) {
	recipes.addShaped("animalbikes_" ~ ride.name, ride, [
		[essence, extra, essence],
		[food, <contenttweaker:flying_saddle>, food],
		[essence, mob, essence]
	]);
}

// ------------
// Simple rides
// ------------
// TODO: should these really require essence? maybe just a tier 1?

// TODO: don't require saddle for pigs that already have a saddle
recipes.removeByRecipeName("animalbikes:pigbike_0"); // spawns kids.
addSimpleRide(<animalbikes:pigbike>, mobIngredient("minecraft:pig"), <mysticalagriculture:dirt_essence>, <minecraft:carrot> | <minecraft:potato> | <minecraft:beetroot>);

recipes.removeByRecipeName("animalbikes:cowbike_0"); // 2 block jump, spawns kids.
addSimpleRide(<animalbikes:cowbike>, mobIngredient("minecraft:cow"), <mysticalagriculture:nature_essence>, <minecraft:wheat>);

recipes.removeByRecipeName("animalbikes:sheepbike_0"); // 20% faster, spawns kids.
addSimpleRide(<animalbikes:sheepbike>, mobIngredient("minecraft:sheep"), <mysticalagriculture:dye_essence>, <minecraft:wheat>);

recipes.removeByRecipeName("animalbikes:creeperbike_0"); // has a chance of blowing up on damage.
addSimpleRide(<animalbikes:creeperbike>, mobIngredient("minecraft:creeper"), <mysticalagriculture:fire_essence>, <minecraft:tnt>);

recipes.removeByRecipeName("animalbikes:snowgolembike_0"); // step, snow trail, shoots snowballs,
addSimpleRide(<animalbikes:snowgolembike>, mobIngredient("minecraft:snowman"), <mysticalagriculture:ice_essence>, <minecraft:snowball>);

recipes.removeByRecipeName("animalbikes:polarbearbike_0"); // fast after 5s.
addSimpleRide(<animalbikes:polarbearbike>, mobIngredient("minecraft:polar_bear"), <mysticalagriculture:ice_essence>, <minecraft:fish:1>);

// ------------
// Useful rides
// ------------

recipes.removeByRecipeName("animalbikes:wolfbike_0"); // straight up wolf.
// TODO: only allow tamed wolves? :3
addSimpleRideExtra(<animalbikes:wolfbike>, mobIngredient("minecraft:wolf"), <minecraft:bone>, <minecraft:bone>, <doggytalents:wool_collar>);

recipes.removeByRecipeName("animalbikes:spiderbike_0"); // wall climb.
addSimpleRide(<animalbikes:spiderbike>, mobIngredient("minecraft:spider"), <mysticalagriculture:spider_essence>, <minecraft:spider_eye>);

recipes.removeByRecipeName("animalbikes:squidbike_0"); // better boat.
addSimpleRide(<animalbikes:squidbike>, mobIngredient("minecraft:squid"), <mysticalagriculture:water_essence>, <minecraft:dye:0>);

recipes.removeByRecipeName("animalbikes:enderbike_0"); // teleports you around. end
addSimpleRide(<animalbikes:enderbike>, mobIngredient("minecraft:enderman"), <mysticalagriculture:enderman_essence>, <minecraft:water_bucket>.giveBack(<minecraft:bucket>));

recipes.removeByRecipeName("animalbikes:notchbike_0"); // vomits apples, tries to eat you. apple tree sapling
recipes.addShaped("animalbikes_notchbike", <animalbikes:notchbike>, [
	[<minecraft:golden_apple>, <rustic:sapling_apple>, <minecraft:golden_apple>],
	[<opencomputers:keyboard>, <minecraft:saddle>, <minecraft:grass>],
	[<minecraft:golden_apple>, <ore:skullZombie>, <minecraft:golden_apple>]
]);

recipes.removeByRecipeName("animalbikes:irongolembike_0"); // step, attacks nearby entities (8-14 dmg).
addSimpleRide(<animalbikes:irongolembike>, mobIngredient("minecraft:villager_golem"), <mysticalagriculture:iron_essence>, <minecraft:red_flower>);

recipes.removeByRecipeName("animalbikes:bunnybike_0"); // spawns eggs and "surprises".
addSimpleRideExtra(<animalbikes:bunnybike>, mobIngredient("minecraft:rabbit"), <mysticalagriculture:rabbit_essence>, <minecraft:carrot>, mobIngredient("minecraft:chicken"));

recipes.removeByRecipeName("animalbikes:chocobobike_0"); // step, faster (carrot), plays Chocarena by Draggor. golden carrots, other veggies?
addSimpleRide(<animalbikes:chocobobike>, <openblocks:golden_egg>, null, <minecraft:golden_carrot>);

recipes.removeByRecipeName("animalbikes:silverfishbike_0"); // mines when holding pickaxe.
addSimpleRide(<animalbikes:silverfishbike>, <minecraft:monster_egg:*>, <mysticalagriculture:stone_essence>, <minecraft:stone>);

recipes.removeByRecipeName("animalbikes:slimebike_0"); // jumps higher and higher. magma
addSimpleRideExtra(<animalbikes:slimebike>, mobIngredient("minecraft:slime"), <mysticalagriculture:slime_essence>, <minecraft:magma>, <minecraft:magma_cream>);

recipes.removeByRecipeName("animalbikes:ocelotbike_0"); // spawns 3 ocelots.
addSimpleRide(<animalbikes:ocelotbike>, mobIngredient("minecraft:ocelot"), <mysticalagriculture:nature_essence>, <ore:fish>);

recipes.removeByRecipeName("animalbikes:chickenbike_0"); // slow falling, faster, spawns kids.
// TODO: nerf?
addSimpleRide(
	<animalbikes:chickenbike>, mobIngredient("minecraft:chicken"), <mysticalagriculture:nature_essence>,
	<minecraft:wheat_seeds> | <minecraft:pumpkin_seeds> | <minecraft:melon_seeds> | <minecraft:beetroot_seeds> | <minecraft:nether_wart>
);

// ------------
// Flying rides
// ------------

recipes.removeByRecipeName("animalbikes:ponybike_0"); // horn, wings, rainbows?
val ponyFood = <minecraft:golden_apple> | <minecraft:golden_carrot>;
recipes.addShaped("animalbikes_ponybike", <animalbikes:ponybike>, [
	[<mysticalagriculture:diamond_essence>, <botania:cosmetic:18>, <mysticalagriculture:diamond_essence>],
	[ponyFood, <contenttweaker:flying_saddle>, ponyFood],
	[<simplyjetpacks:metaitem:3>, mobIngredient("minecraft:horse"), <simplyjetpacks:metaitem:3>]
]);

recipes.removeByRecipeName("animalbikes:dragonbike_0"); // breathes fire (flint and steel). fire resistance
val dragonScale = <mysticalagradditions:stuff:3> | <quark:enderdragon_scale>;
addFlyingRide(<animalbikes:dragonbike>, <minecraft:dragon_egg>, dragonScale, null);

recipes.removeByRecipeName("animalbikes:reindeerbike_0"); // snow particles.
addFlyingRideExtra(<animalbikes:reindeerbike>, mobIngredient("minecraft:horse"), <mysticalagriculture:ice_essence>, <minecraft:sapling:1>, <minecraft:wool:14>);

recipes.removeByRecipeName("animalbikes:ghastbike_0"); // nether only, shoots fireballs (gunpowder).
addFlyingRideExtra(<animalbikes:ghastbike>, mobIngredient("minecraft:ghast"), <mysticalagriculture:ghast_essence>, <minecraft:fire_charge>, <mysticalagriculture:nether_essence>);

recipes.removeByRecipeName("animalbikes:dinobike_0"); // step, flies, picks up animals.
addFlyingRideExtra(<animalbikes:dinobike>, <minecraft:egg>, <mysticalagriculture:dirt_essence>, <animalbikes:fossil>, <minecraft:soul_sand>);

recipes.removeByRecipeName("animalbikes:batbike_0"); // night vision. night vision potion
addFlyingRideExtra(<animalbikes:batbike>, mobIngredient("minecraft:bat"), <mysticalagriculture:stone_essence>, <actuallyadditions:item_misc:15>, <minecraft:golden_carrot>);

recipes.removeByRecipeName("animalbikes:chinesedragonbike_0"); // fireworks.
addFlyingRide(<animalbikes:chinesedragonbike>, <minecraft:dragon_egg>, dragonScale, <minecraft:fireworks>);

recipes.removeByRecipeName("animalbikes:flowerbike_0"); // flies slow. botania?
val daffomill = <botania:floatingspecialflower>.withTag({type: "daffomill"});
recipes.addShaped("animalbikes_flowerbike", <animalbikes:flowerbike>, [
	[null, <botania:specialflower>.withTag({type: "agricarnation"}), null],
	[null, <contenttweaker:flying_saddle>, null],
	[daffomill, daffomill, daffomill]
]);

recipes.removeByRecipeName("animalbikes:witherbike_0"); // shoots fucking wither skulls (when bow shot).
// wither can't be picked up with lassos/vials/morbs, so that's nice
addFlyingRide(<animalbikes:witherbike>, <minecraft:nether_star>, <mysticalagriculture:nether_essence>, <ore:skullWitherSkeleton>);
