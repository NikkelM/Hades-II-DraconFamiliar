local hadesTwoEnemyEphyraVFXFile =
	rom.path.combine(rom.paths.Content(), "Game\\Animations\\Enemy_Ephyra_VFX.sjson")

local addAnimations = {
	{
		Name = "ModsNikkelMHadesBiomesSnakeVenomFx",
		InheritFrom = "PoisonStatusFx",
		FilePath = "NikkelM-Dracon_FamiliarArt\\Fx\\ModsNikkelMHadesBiomesSnakeVenom\\DionysusStatusFx",
		GrannyAttachedMarkerLocation = "head_fxMarker_00_M_JNT",
		OffsetZ = 70,
		ChainTo = "ModsNikkelMHadesBiomesSnakeVenomFxDissipate",
		Sound = "null",
	},
	{
		Name = "ModsNikkelMHadesBiomesSnakeVenomFxDissipate",
		InheritFrom = "PoisonStatusFxDissipate",
		FilePath = "NikkelM-Dracon_FamiliarArt\\Fx\\ModsNikkelMHadesBiomesSnakeVenom\\DionysusStatusFx",
		GrannyAttachedMarkerLocation = "head_fxMarker_00_M_JNT",
		OffsetZ = 70,
		Sound = "null",
	},
}

sjson.hook(hadesTwoEnemyEphyraVFXFile, function(data)
	mod.AddTableKeysSkipDupes(data.Animations, addAnimations, "Name")
end)
