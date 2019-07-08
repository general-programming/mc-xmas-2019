import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

recipes.addShapeless("research_flight_1", <contenttweaker:research_flight_1>, [
	<minecraft:book>,
	<minecraft:elytra>.onlyDamageAtMost(10),
	mobIngredient("minecraft:ghast")
]);
