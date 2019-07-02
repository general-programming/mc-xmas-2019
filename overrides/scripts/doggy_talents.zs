recipes.removeByRecipeName("doggytalents:throw_stick");
recipes.removeByRecipeName("doggytalents:throw_bone");

recipes.addShaped("doggytalents_throw_stick_oredict", <doggytalents:throw_stick>, [
	[null, <ore:stickWood>, null],
	[<ore:stickWood>, <ore:slimeball>, <ore:stickWood>],
	[null, <ore:stickWood>, null]
]);

recipes.addShaped("doggytalents_throw_bone_oredict", <doggytalents:throw_bone>, [
	[null, <ore:bone>, null],
	[<ore:bone>, <ore:slimeball>, <ore:bone>],
	[null, <ore:bone>, null]
]);
