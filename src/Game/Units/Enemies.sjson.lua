local hadesTwoEnemiesFile = rom.path.combine(rom.paths.Content(), "Game\\Units\\Enemies.sjson")

local enemyAdditions = {
	{
		Name = "ModsNikkelMHadesBiomesSnakeFamiliar",
		InheritFrom = "BaseFamiliar",
		DisplayInEditor = true,
		RotationSpeed = 1000,
		Speed = 0,
		Thing = {
			EditorOutlineDrawBounds = false,
			Graphic = "ModsNikkelMHadesBiomesSnakeFamiliar_Idle",
			GrannyModel = "Dracon_Mesh",
			Scale = 0.6,
			ImmuneToForce = true,
			OffsetZ = 0,
			SelectionHeight = 220.0,
			SelectionWidth = 200.0,
			SelectionShiftY = 50,
			StopsProjectiles = false,
			Tallness = 140,
			Points = {
				{ X = 0,   Y = 32 },
				{ X = 48,  Y = 0 },
				{ X = 0,   Y = -32 },
				{ X = -48, Y = 0 },
			},
		},
	},
}

sjson.hook(hadesTwoEnemiesFile, function(data)
	mod.AddTableKeysSkipDupes(data.Units, enemyAdditions, "Name")
end)
