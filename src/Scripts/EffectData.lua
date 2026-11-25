local snakeVenomData = { InheritFrom = { "MedeaPoison" } }
snakeVenomData.EffectName = "ModsNikkelMHadesBiomesSnakeVenom"
snakeVenomData.OnApplyFunctionName = _PLUGIN.guid .. "." .. "SnakeVenomApply"
snakeVenomData.OnClearFunctionName = _PLUGIN.guid .. "." .. "SnakeVenomClear"
snakeVenomData.CancelUnitHitFlash = true
snakeVenomData.Vfx = "ModsNikkelMHadesBiomesSnakeVenomFx"
snakeVenomData.DataProperties = {
	Type = "DAMAGE_OVER_TIME",
	Amount = 1,
	Cooldown = 0.6,
	InitialDelay = 0,
	Duration = 4,
	Stacks = true,
	MaxStacks = 12,
	ExtendDurationOnReapply = true,
	SilentImpact = true,
	Active = true,
	CanAffectInvulnerable = false,
	Cancelable = true,
	DisableMove = false,
	DisableRotate = false,
	DisableAttack = false,
}
snakeVenomData.Name = snakeVenomData.EffectName
game.ProcessDataInheritance(snakeVenomData, game.EffectData)
game.EffectData[snakeVenomData.EffectName] = snakeVenomData

game.EffectData.ModsNikkelMHadesBiomesSnakeVenomSlow = {
	Name = "ModsNikkelMHadesBiomesSnakeVenomSlow",
	EffectName = "ModsNikkelMHadesBiomesSnakeVenomSlow",
	DataProperties = {
		Type = "SPEED",
		Duration = 4,
		Modifier = 0.60,
		IgnoreName = "_PlayerUnit",
		Stacks = false,
		ExtendDurationOnReapply = true,
		Active = true,
		CanAffectInvulnerable = false,
		TimeModifierFraction = 0,
	},
}
