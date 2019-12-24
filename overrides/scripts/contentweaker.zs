#loader contenttweaker

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.World;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.ResourceLocation;

static genprogTab as CreativeTab = VanillaFactory.createCreativeTab("genprog", <item:contenttweaker:research_flight_1>);
genprogTab.register();

function unlockProxy(stack as MutableItemStack, world as World, entity as IEntityLivingBase, unlocks as string[]) as MutableItemStack {
	if (entity instanceof IPlayer) {
		val player as IPlayer = entity;
		tryUnlockResearch(player, world, unlocks);
	}
	return stack;
}

function tryUnlockResearch(player as IPlayer, world as World, researchList as string[]) {
	var newResearchLearned = false;

	for research in researchList {
		if (!player.hasGameStage(research)) {
			player.addGameStage(research);
			newResearchLearned = true;
			player.sendChat("§7Research Learned: §9" ~ research);
		}
	}

	if (newResearchLearned) {
		mods.contenttweaker.Commands.call("/playsound minecraft:entity.experience_orb.pickup master @s", player, world, false, true);
	}
}

function createResearchBook(bookName as string) as ItemFood {
	val researchBook = VanillaFactory.createItemFood(bookName, 0);
	researchBook.saturation = 0;
	researchBook.alwaysEdible = true;
	researchBook.creativeTab = genprogTab;
	researchBook.rarity = "EPIC";
	researchBook.textureLocation = ResourceLocation.create("contenttweaker:items/" ~ bookName);
	researchBook.itemUseAction = "EAT";
	return researchBook;
}

function createIncompleteResearchBook(bookName as string) as Item {
	val researchBook = VanillaFactory.createItem(bookName ~ "_incomplete");
	researchBook.creativeTab = genprogTab;
	researchBook.textureLocation = ResourceLocation.create("contenttweaker:items/" ~ bookName ~ "_incomplete");
	return researchBook;
}

// ---------------
// Flight research
// ---------------

val researchFlight1 = createResearchBook("research_flight_1");
researchFlight1.rarity = "UNCOMMON";
researchFlight1.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1"]);
};
researchFlight1.register();

val researchFlight1Incomplete = createIncompleteResearchBook("research_flight_1");
researchFlight1Incomplete.register();

val researchFlight2 = createResearchBook("research_flight_2");
researchFlight2.rarity = "RARE";
researchFlight2.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1", "research_flight_2"]);
};
researchFlight2.register();

val researchFlight2Incomplete = createIncompleteResearchBook("research_flight_2");
researchFlight2Incomplete.register();

val researchFlight3 = createResearchBook("research_flight_3");
researchFlight3.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1", "research_flight_2", "research_flight_3"]);
};
researchFlight3.register();

val researchFlight3Incomplete = createIncompleteResearchBook("research_flight_3");
researchFlight3Incomplete.register();

val flyingSaddle = VanillaFactory.createItem("flying_saddle");
flyingSaddle.creativeTab = genprogTab;
flyingSaddle.textureLocation = ResourceLocation.create("contenttweaker:items/flying_saddle");
flyingSaddle.maxStackSize = 8;
flyingSaddle.register();
