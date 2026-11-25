local newIcons = {
	ModsNikkelMHadesBiomesGoldenUrnIcon = {
		TexturePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Icons\\GoldUrn",
		UseTooltip = true,
	},
	ModsNikkelMHadesBiomesGoldenUrnIconNoTooltip = {
		TexturePath = "NikkelM-Dracon_FamiliarArt\\GUIModded\\Icons\\GoldUrn",
	},
}
for iconName, iconData in pairs(newIcons) do
	game.IconData[iconName] = game.IconData[iconName] or iconData
	game.Icons[iconName] = game.IconData[iconName].TexturePath
end
