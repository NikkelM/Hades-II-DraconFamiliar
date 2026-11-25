modutil.mod.Path.Wrap("LeaveRoom", function(base, currentRun, door)
	if game.HeroHasTrait("ModsNikkelMHadesBiomesSnakeGoldBonus") then
		for _, urnId in ipairs(currentRun.CurrentRoom.HighValueBreakableIds or {}) do
			local urn = game.ActiveEnemies[urnId] or game.MapState.ActiveObstacles[urnId]
			if urn ~= nil and not urn.Destroyed then
				urn.OnKillGlobalVoiceLines = nil
				game.Kill(urn)
			end
		end
	end

	return base(currentRun, door)
end)
