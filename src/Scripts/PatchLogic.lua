local familiarQuestRequirementsAdded = false

modutil.mod.Path.Wrap("DoPatches", function(base)
	local result = base()

	if game.GameState ~= nil then
		local zagreusJourney = rom.mods["NikkelM-Zagreus_Journey"]
		if zagreusJourney and zagreusJourney.IsModEnabledAndInstallationValid() then
			game.WorldUpgradeData.ModsNikkelMHadesBiomes_FamiliarCostume_SnakeDelphic.Cost = {
				CosmeticsPoints = 1800,
				ModsNikkelMHadesBiomes_BossResourceElysium = 2,
			}
			game.WorldUpgradeData.ModsNikkelMHadesBiomes_FamiliarCostume_SnakePuppet.Cost = {
				CosmeticsPoints = 2400,
				ModsNikkelMHadesBiomes_CropStyx = 2,
			}
			game.WorldUpgradeData.ModsNikkelMHadesBiomes_FamiliarCostume_SnakeRegal.Cost = {
				CosmeticsPoints = 2600,
				ModsNikkelMHadesBiomes_OreStyx = 7,
			}

			-- DoPatches runs on every map load, but these requirements only need to be added once per save load
			if not familiarQuestRequirementsAdded then
				table.insert(game.QuestData.QuestRecruitFamiliars.CompleteGameStateRequirements[1].CountOf,
					"ModsNikkelMHadesBiomesSnakeFamiliar")
				table.insert(game.QuestData.QuestUpgradeFamiliars.UnlockGameStateRequirements.OrRequirements, {
					{
						Path = { "GameState", "FamiliarUpgrades" },
						CountOf = game.GameData.AllSnakeFamiliarUpgrades,
						Comparison = ">=",
						Value = 3,
					},
				})
				familiarQuestRequirementsAdded = true
			end
		elseif game.GameState.WorldUpgrades.WorldUpgradeFamiliarPoints then
			game.GameState.FamiliarsUnlocked["ModsNikkelMHadesBiomesSnakeFamiliar"] = true
		end
	end

	return result
end)
