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
	researchBook.textureLocation = ResourceLocation.create("contenttweaker:items/research_book");
	researchBook.itemUseAction = "EAT";
	return researchBook;
}

// ---------------
// Flight research
// ---------------

var itemResearch1 = createResearchBook("research_flight_1");
itemResearch1.rarity = "UNCOMMON";
itemResearch1.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1"]);
};
itemResearch1.register();

var itemResearch2 = createResearchBook("research_flight_2");
itemResearch2.rarity = "RARE";
itemResearch2.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1", "research_flight_2"]);
};
itemResearch2.register();

var itemResearch3 = createResearchBook("research_flight_3");
itemResearch3.onItemUseFinish = function(stack, world, entity) {
	return unlockProxy(stack, world, entity, ["research_flight_1", "research_flight_2", "research_flight_3"]);
};
itemResearch3.register();

var flyingSaddle = VanillaFactory.createItem("flying_saddle");
flyingSaddle.creativeTab = genprogTab;
flyingSaddle.textureLocation = ResourceLocation.create("contenttweaker:items/flying_saddle");
flyingSaddle.maxStackSize = 8;
flyingSaddle.register();
