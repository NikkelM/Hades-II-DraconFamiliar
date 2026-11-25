local hadesTwoCrossroadsObstacleFile = rom.path.combine(rom.paths.Content(), "Game\\Obstacles\\Crossroads.sjson")

local obstacleAdditions = {
	{
		Name = "ModsNikkelMHadesBiomes_CrossroadsSnakebed01",
		InheritFrom = "1_BaseTerrainTile",
		DisplayInEditor = true,
		Thing = {
			Graphic = "NikkelM-Dracon_FamiliarCrossroads\\Tilesets\\Crossroads\\Crossroads_Snakebed_01",
		},
	},
}

sjson.hook(hadesTwoCrossroadsObstacleFile, function(data)
	mod.AddTableKeysSkipDupes(data.Obstacles, obstacleAdditions, "Name")
end)
