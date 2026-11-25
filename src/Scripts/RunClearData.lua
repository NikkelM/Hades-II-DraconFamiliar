local newDamageSourceMappings = {
	ModsNikkelMHadesBiomesSnakeDart = "ModsNikkelMHadesBiomesSnakeFamiliar",
	ModsNikkelMHadesBiomesSnakeVenom = "ModsNikkelMHadesBiomesSnakeFamiliar",
}
mod.AddTableKeysSkipDupes(game.ScreenData.RunClear.DamageSourceMap, newDamageSourceMappings)
