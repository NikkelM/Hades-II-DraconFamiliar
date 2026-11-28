local randomizedTrialRequirements = {
	PackageBountyRandom = true,
	ModsNikkelMHadesBiomes_PackageBountyRandom = true,
}

-- Require SnakeFamiliar to be able to unlock randomized trials
for requirementName in pairs(randomizedTrialRequirements) do
	for _, requirement in ipairs(game.NamedRequirementsData[requirementName] or {}) do
		if requirement.Path ~= nil and requirement.Path[1] == "GameState" and requirement.Path[2] == "FamiliarsUnlocked" and requirement.HasAll ~= nil then
			table.insert(requirement.HasAll, "ModsNikkelMHadesBiomesSnakeFamiliar")
		end
	end
end

-- Allow SnakeFamiliar to appear in randomized trials
for _, bountyData in pairs(game.BountyData) do
	if bountyData.RandomFamiliarNames ~= nil and bountyData.UnlockGameStateRequirements ~= nil and not bountyData.RemoveFamiliar and bountyData.FamiliarName == nil then
		for _, requirementName in ipairs(bountyData.UnlockGameStateRequirements.NamedRequirements or {}) do
			if randomizedTrialRequirements[requirementName] then
				table.insert(bountyData.RandomFamiliarNames, "ModsNikkelMHadesBiomesSnakeFamiliar")
				break
			end
		end
	end
end
