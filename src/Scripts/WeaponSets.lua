local hadesExpireProjectileExcludeProjectileNames = {
	"ModsNikkelMHadesBiomesSnakeDart",
}

game.WeaponSets.ExpireProjectileExcludeProjectileNames = game.CombineTablesIPairs(
	game.WeaponSets.ExpireProjectileExcludeProjectileNames,
	hadesExpireProjectileExcludeProjectileNames
)

game.UnitSets.PlayerSummons.ModsNikkelMHadesBiomesSnakeFamiliar = true
