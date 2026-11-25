-- Allow Circe to grant familiar costumes if all Ophis upgrades are unlocked
table.insert(
	game.EnemyData.NPC_Circe_01.InteractTextLineSets.CirceGrantsFamiliarCostumes01.GameStateRequirements.OrRequirements, {
		NamedRequirements = { "ModsNikkelMHadesBiomes_HasAllSnakeUpgrades" },
	})
