// Fix conflict between rustic stakes and thin wooden wall from ChineseWorkshop
recipes.removeByRecipeName("rustic:crop_stake");

recipes.addShaped("rustic_crop_stake", <rustic:crop_stake>, [
	[null, <ore:plankWood>, null],
	[null, <ore:plankWood>, null],
	[null, <ore:stickWood>, null]
]);

// Remove unnecessary recipe that crafts 3 string into 2 string and conflicts with Rustic ropes
recipes.removeByRecipeName("harvestcraft:string_cropflax");

// Fix conflict between Tinker's Patterns and Tine Progressions Wooden Shears
recipes.removeByRecipeName("tp:wooden_shears");

recipes.addShaped("tp_wooden_shears", <tp:wooden_shears>, [
	[<ore:plankWood>, null],
	[<ore:stickWood>, <ore:plankWood>],
]);
