local newKeywords = {
	"ModsNikkelMHadesBiomesSnakeFamiliar",
	"SnakeFamiliarVenom",
	"ModsNikkelMHadesBiomesGoldenUrnIcon",
}
game.ConcatTableValuesIPairs(game.KeywordList, newKeywords)
for _, keyword in ipairs(newKeywords) do
	game.Keywords[keyword] = keyword
end
