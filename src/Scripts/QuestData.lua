-- Allow SnakeFamiliar to complete the "fully upgrade a familiar" prophecy
table.insert(game.QuestData.QuestUpgradeFamiliars.CompleteGameStateRequirements.OrRequirements, {
	NamedRequirements = { "ModsNikkelMHadesBiomes_HasAllSnakeUpgrades" },
})
