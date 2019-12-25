// Fix conflict between rustic stakes and thin wooden wall from ChineseWorkshop
recipes.removeByRecipeName("rustic:crop_stake");

recipes.addShaped("rustic_crop_stake", <rustic:crop_stake>, [
	[null, <ore:logWood>, null],
	[null, <ore:logWood>, null],
	[null, <ore:stickWood>, null]
]);
