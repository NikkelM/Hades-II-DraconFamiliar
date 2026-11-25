local newNamedRequirements = {
	ModsNikkelMHadesBiomes_SnakeFamiliarReadyToRecruit = {
		{
			Path = { "GameState", "Resources", "FamiliarPoints" },
			Comparison = ">=",
			Value = 1,
		},
		{
			PathTrue = { "GameState", "SpecialInteractRecord", "ModsNikkelMHadesBiomesSnakeFamiliar" },
		},
		{
			PathFalse = { "GameState", "FamiliarsUnlocked", "ModsNikkelMHadesBiomesSnakeFamiliar" },
		},
	},
	ModsNikkelMHadesBiomes_HasAllSnakeUpgrades = {
		{
			Path = { "GameState", "FamiliarUpgrades" },
			HasAll = game.GameData.AllSnakeFamiliarUpgrades,
		},
	},
}
mod.AddTableKeysSkipDupes(game.NamedRequirementsData, newNamedRequirements)
