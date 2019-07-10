#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;

val genprogTab = VanillaFactory.createCreativeTab("genprog", <item:contenttweaker:research_flight_1>);
genprogTab.register();

// ---------------
// Flight research
// ---------------

var itemResearch1 = VanillaFactory.createItem("research_flight_1");
itemResearch1.rarity = "UNCOMMON";
itemResearch1.creativeTab = genprogTab;
itemResearch1.textureLocation = ResourceLocation.create("contenttweaker:items/research_book");
itemResearch1.register();

var itemResearch2 = VanillaFactory.createItem("research_flight_2");
itemResearch2.rarity = "RARE";
itemResearch2.creativeTab = genprogTab;
itemResearch2.textureLocation = ResourceLocation.create("contenttweaker:items/research_book");
itemResearch2.register();

var itemResearch3 = VanillaFactory.createItem("research_flight_3");
itemResearch3.rarity = "EPIC";
itemResearch3.creativeTab = genprogTab;
itemResearch3.textureLocation = ResourceLocation.create("contenttweaker:items/research_book");
itemResearch3.register();

var flyingSaddle = VanillaFactory.createItem("flying_saddle");
flyingSaddle.creativeTab = genprogTab;
flyingSaddle.textureLocation = ResourceLocation.create("contenttweaker:items/flying_saddle");
flyingSaddle.maxStackSize = 8;
flyingSaddle.register();
