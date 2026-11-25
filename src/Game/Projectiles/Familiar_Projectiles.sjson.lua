local hadesTwoFamiliarProjectilesFile =
	rom.path.combine(rom.paths.Content(), "Game\\Projectiles\\Familiar_Projectiles.sjson")

local addProjectiles = {
	{
		Name = "ModsNikkelMHadesBiomesSnakeDart",
		InheritFrom = "DragonBurrowerRanged",
		AffectsEnemies = true,
		AffectsFriends = false,
		AffectsSelf = false,
		CanBeReflected = false,
		Damage = 10,
		Speed = 620,
		MaxAdjustRate = 95,
		Fuse = 2.5,
		DissipateFx = "ModsNikkelMHadesBiomesSnakeDartDissipate",
		Thing = {
			Graphic = "ModsNikkelMHadesBiomesSnakeDartIn",
			AttachedAnim = "ModsNikkelMHadesBiomesSnakeDartGlow",
		},
		Effects = {
			{
				Name = "HeroOnHitStun",
				Active = false,
			},
		},
	},
}

sjson.hook(hadesTwoFamiliarProjectilesFile, function(data)
	mod.AddTableKeysSkipDupes(data.Projectiles, addProjectiles, "Name")
end)
