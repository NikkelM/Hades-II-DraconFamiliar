local animationsFile = rom.path.combine(rom.paths.Content(),
	"Game/Animations/Model/Hero_Melinoe_Animation_Personality.sjson")

local order = {
	"Name",
	"InheritFrom",
}

local newData = {
	{
		Name = "ModsNikkelMHadesBiomes_MelinoePetOphis",
		InheritFrom = "Melinoe_PetCat",
		ChainTo = "ModsNikkelMHadesBiomes_MelinoePetOphisReturnToIdle",
		Frames = {
			{ Frame = 0,   FrameSpeed = 1 },
			{ Frame = 192, FrameSpeed = 0 },
		},
	},
	{
		Name = "ModsNikkelMHadesBiomes_MelinoePetOphisReturnToIdle",
		InheritFrom = "Melinoe_PetCat",
		Frames = {
			{ Frame = 0,   FrameSpeed = 0 },
			{ Frame = 300, FrameSpeed = 1 },
		},
		Blends = {
			{
				BlendTransitionFrom = "ModsNikkelMHadesBiomes_MelinoePetOphis",
				Duration = 18,
			},
		},
	},
}

sjson.hook(animationsFile, function(data)
	for _, newValue in ipairs(newData) do
		table.insert(data.Animations, sjson.to_object(newValue, order))
	end
end)
