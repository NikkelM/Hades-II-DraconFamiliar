function mod.SnakeVenomOnHit(victim, victimId, triggerArgs)
	if victim.IsDead or IsInvulnerable({ Id = victim.ObjectId }) then
		return
	end

	local traitData = game.GetProcessedTraitData({
		Unit = game.CurrentRun.Hero,
		TraitName = "ModsNikkelMHadesBiomesSnakePoisonStacks",
		StackNum = game.GetFamiliarTraitStacks("ModsNikkelMHadesBiomesSnakePoisonStacks"),
	})
	local dataProperties = game.DeepCopyTable(game.EffectData.ModsNikkelMHadesBiomesSnakeVenom.DataProperties)
	dataProperties.Duration = traitData.ModsNikkelMHadesBiomesSnakeVenomDuration

	ApplyEffect({
		Id = triggerArgs.AttackerId,
		DestinationId = victim.ObjectId,
		EffectName = "ModsNikkelMHadesBiomesSnakeVenom",
		NumStacks = traitData.ModsNikkelMHadesBiomesSnakeVenomStacksPerHit,
		DataProperties = dataProperties,
	})
end

function mod.SnakeVenomApply(triggerArgs)
	local slowEffectData = game.EffectData.ModsNikkelMHadesBiomesSnakeVenomSlow
	local dataProperties = game.DeepCopyTable(slowEffectData.DataProperties)
	dataProperties.Duration = triggerArgs.Duration

	ApplyEffect({
		Id = game.CurrentRun.Hero.ObjectId,
		DestinationId = triggerArgs.Victim.ObjectId,
		EffectName = slowEffectData.EffectName,
		DataProperties = dataProperties,
	})
end

function mod.SnakeVenomClear(triggerArgs)
	ClearEffect({
		Id = triggerArgs.Victim.ObjectId,
		Name = "ModsNikkelMHadesBiomesSnakeVenomSlow",
	})
end
