CosmeticsAPI.RegisterCosmetic({
	Id = "NikkelM-Zagreus_Journey.Cosmetic_ExitCharm_SnakeFamiliar",
	Name = {
		-- de = "Charm, Serpentine",
		-- el = "Charm, Serpentine",
		en = "Charm, Serpentine",
		-- es = "Charm, Serpentine",
		-- fr = "Charm, Serpentine",
		-- it = "Charm, Serpentine",
		-- ja = "Charm, Serpentine",
		-- ko = "Charm, Serpentine",
		-- pl = "Charm, Serpentine",
		-- ["pt-BR"] = "Charm, Serpentine",
		-- ru = "Charm, Serpentine",
		-- tr = "Charm, Serpentine",
		-- uk = "Charm, Serpentine",
		-- ["zh-CN"] = "Charm, Serpentine",
		-- ["zh-TW"] = "Charm, Serpentine",
	},
	Description = {
		-- de = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- el = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		en = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- es = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- fr = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- it = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ja = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ko = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- pl = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ["pt-BR"] = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ru = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- tr = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- uk = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ["zh-CN"] = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
		-- ["zh-TW"] = "{$Keywords.CosmeticAltAdd}: Grounded embellishment to the warded gateways leading both above and below.",
	},
	FlavorText = {
		-- de = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- el = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		en =
		"Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- es = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- fr = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- it = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ja = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ko = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- pl = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ["pt-BR"] = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ru = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- tr = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- uk = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ["zh-CN"] = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
		-- ["zh-TW"] = "Land-Dracons are often misunderstood as being enemies of the Unseen, but once approached with care reveal their sensitive nature.",
	},
	CosmeticsGroup = "Cosmetic_ExitCharm",
	InsertAfterCosmetic = "Cosmetic_ExitCharm05",
	ShopCategory = "CosmeticsShop_PreRun",
	ActivateIds = { 589859, 589860 },
	IconPath = "NikkelM-Dracon_FamiliarCrossroads\\Crossroads\\Icons\\PreRun\\ExitCharm_SnakeFamiliar_Icon",
	CosmeticAnimationPath = "NikkelM-Dracon_FamiliarCrossroads\\Crossroads\\Assets\\PreRun\\ExitCharm_SnakeFamiliar",
	AnimationScale = 2,
	GameStateRequirements = {
		NamedRequirements = { "ModsNikkelMHadesBiomes_HasAllSnakeUpgrades", "T4Cosmetic" },
	},
	AlwaysRevealImmediately = true,
	Cost = {
		CosmeticsPoints = 450,
		WeaponPointsRare = 1,
	},
	RevealReactionVoiceLines = {
		{ GlobalVoiceLines = "PositiveReactionVoiceLines" },
	},
})

CosmeticsAPI.RegisterCardBack({
	Id = "NikkelM-Zagreus_Journey.Cosmetic_Arcana_Familiars_Ophis",
	PackId = "Cosmetic_CardDeck05",
	DeckArtPath = "NikkelM-Dracon_FamiliarCrossroads\\Crossroads\\Assets\\Arcana\\Arcana_Familiars\\Deck_Ophis",
	DeckArtMouseoverPath =
	"NikkelM-Dracon_FamiliarCrossroads\\Crossroads\\Assets\\Arcana\\Arcana_Familiars\\DeckMouseover_Ophis",
	CardBackPath = "NikkelM-Dracon_FamiliarArt\\GUI\\Screens\\Cardback\\CardBackFamiliarsOphis",
})

CosmeticsAPI.RegisterCrossroadsPackages({ "NikkelM-Dracon_FamiliarCrossroads" })
-- Also include the Codex portrait and bond icons, we're using CosmeticsAPI to ensure they're always loaded
CosmeticsAPI.RegisterAlwaysLoadedPackages({ "NikkelM-Dracon_FamiliarArt" })
