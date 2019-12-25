// Fix conflict between rustic stakes and thin wooden wall from ChineseWorkshop
recipes.removeByRecipeName("rustic:crop_stake");

recipes.addShaped("rustic_crop_stake", <rustic:crop_stake>, [
	[null, <ore:plankWood>, null],
	[null, <ore:plankWood>, null],
	[null, <ore:stickWood>, null]
]);

// Fix conflict between rustic rope and some weird recipe
recipes.removeByRecipeName("rustic:rope");

recipes.addShaped("rustic_rope", <rustic:rope>, [
	[null, <ore:string>, null],
	[null, <ore:string>, null],
	[null, <ore:stickWood>, null]
]);

