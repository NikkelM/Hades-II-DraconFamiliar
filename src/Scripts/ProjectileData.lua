local addProjectiles = {
	ModsNikkelMHadesBiomesSnakeDart = {
		Name = "ModsNikkelMHadesBiomesSnakeDart",
		OnHitFunctionNames = { _PLUGIN.guid .. "." .. "SnakeVenomOnHit" },
	},
}
mod.AddTableKeysSkipDupes(game.ProjectileData, addProjectiles)
