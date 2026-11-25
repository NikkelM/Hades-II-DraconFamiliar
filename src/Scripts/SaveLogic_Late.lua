modutil.mod.Path.Wrap("Save", function(base)
	local gameState = game.GameState
	if gameState.EquippedFamiliar ~= "ModsNikkelMHadesBiomesSnakeFamiliar" then
		return base()
	end

	local savedGameState = game.ShallowCopyTable(gameState)
	savedGameState.EquippedFamiliar = nil
	savedGameState.ModsNikkelMDraconFamiliarEquipped = true
	game.GameState = savedGameState
	local result = base()
	game.GameState = gameState

	return result
end)
