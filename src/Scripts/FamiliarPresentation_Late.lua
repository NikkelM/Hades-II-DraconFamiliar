modutil.mod.Path.Context.Wrap.Static("FamiliarRecruitPresentation", function()
	-- To ensure the burrow decal plays correctly
	modutil.mod.Path.Wrap("SetAnimation", function(base, args)
		local familiar = game.ActiveEnemies[args.DestinationId]
		if familiar ~= nil and familiar.Name == "ModsNikkelMHadesBiomesSnakeFamiliar" and args.Name == familiar.BurrowAnimation then
			mod.SnakeFamiliarBurrowEffects(familiar, true)
		end

		return base(args)
	end)
end)

modutil.mod.Path.Context.Wrap.Static("BiomeMapPresentation", function()
	modutil.mod.Path.Wrap("SetAnimation", function(base, args)
		local result = base(args)

		if args.Name == "ModsNikkelMHadesBiomesSnakeFamiliar_MapMarker" then
			game.SetThingProperty({
				DestinationId = args.DestinationId,
				Property = "GrannyTexture",
				Value = game.MapState.FamiliarUnit.MarkerTexture,
			})
		end

		return result
	end)
end)
