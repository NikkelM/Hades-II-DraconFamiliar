local familiarQuestRequirementsAdded = false

modutil.mod.Path.Wrap("DoPatches", function(base)
	local result = base()

	if game.GameState ~= nil then
		-- Restore the familiar being equipped if the mod is enabled
		-- Saving removes it from the GameState field to prevent crashes if the mod is uninstalled or disabled
		if game.GameState.ModsNikkelMDraconFamiliarEquipped then
			-- If the player has since equipped another familiar, keep that instead of overwriting the choice
			game.GameState.EquippedFamiliar = game.GameState.EquippedFamiliar or "ModsNikkelMHadesBiomesSnakeFamiliar"
			-- Vanilla strips the traits from an active run if the mod is disabled
			if game.GameState.EquippedFamiliar == "ModsNikkelMHadesBiomesSnakeFamiliar" and not game.CurrentRun.Hero.IsDead then
				for _, traitName in ipairs(game.FamiliarData.ModsNikkelMHadesBiomesSnakeFamiliar.TraitNames) do
					if not game.HeroHasTrait(traitName) then
						game.AddTraitToHero({
							TraitName = traitName,
							StackNum = game.GetFamiliarTraitStacks(traitName),
							SkipNewTraitHighlight = true,
						})
						game.CurrentRun.TraitCache[traitName] = game.CurrentRun.TraitCache[traitName] or 1
					end
				end
			end
			game.GameState.ModsNikkelMDraconFamiliarEquipped = nil
		end

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
