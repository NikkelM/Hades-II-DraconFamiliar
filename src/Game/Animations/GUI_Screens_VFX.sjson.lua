local hadesTwoScreensVFXFile = rom.path.combine(rom.paths.Content(), "Game\\Animations\\GUI_Screens_VFX.sjson")

local addParentAnimations = {
	ModsNikkelMHadesBiomes_FamiliarScreenSnakeIn = {
		Name = "ModsNikkelMHadesBiomes_FamiliarScreenSnakeIn",
		FilePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Screens\\FamiliarShop\\FamiliarScreenSnake",
		Material = "Unlit",
		AngleFromOwner = "Ignore",
		NumFrames = 1,
		StartFrame = 1,
		EndFrame = 1,
		Duration = 0.3,
		TimeModifierFraction = 0,
		HoldLastFrame = true,
		OffsetX = 640,
		OffsetY = 27.5,
		StartOffsetX = 640,
		EndOffsetX = 0,
		EaseIn = 0,
		EaseOut = 1,
	},
}

local addAnimations = {
	ModsNikkelMHadesBiomes_FamiliarScreenSnakeOut = {
		Name = "ModsNikkelMHadesBiomes_FamiliarScreenSnakeOut",
		InheritFrom = "ModsNikkelMHadesBiomes_FamiliarScreenSnakeIn",
		StartOffsetX = 0,
		EndOffsetX = 640,
		EaseIn = 1,
		EaseOut = 0,
		HoldLastFrame = false,
	},
	ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeBloodBond = {
		Name = "ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeBloodBond",
		FilePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Screens\\FamiliarIcons\\snake_damageresistance",
	},
	ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeProsperousBond = {
		Name = "ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeProsperousBond",
		FilePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Screens\\FamiliarIcons\\snake_bonusgold",
	},
	ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeToxicBond = {
		Name = "ModsNikkelMHadesBiomes_FamiliarShopIcon_SnakeToxicBond",
		FilePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Screens\\FamiliarIcons\\snake_venomstacks",
	},
	ModsNikkelMHadesBiomes_Codex_Portrait_SnakeFamiliar = {
		Name = "ModsNikkelMHadesBiomes_Codex_Portrait_SnakeFamiliar",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "NikkelM-Dracon_FamiliarArt\\Portraits\\ModsNikkelMHadesBiomesCodex\\CodexPortrait_SnakeFamiliar",
		StartFrame = 1,
		EndFrame = 1,
	},
}

sjson.hook(hadesTwoScreensVFXFile, function(data)
	mod.AddTableKeysSkipDupes(data.Animations, addParentAnimations, "Name")
	mod.AddTableKeysSkipDupes(data.Animations, addAnimations, "Name")
end)
