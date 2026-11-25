---@meta _

import = require

---@diagnostic disable-next-line: undefined-global
local mods = rom.mods

---@module 'LuaENVY-ENVY-auto'
mods["LuaENVY-ENVY"].auto()
---@diagnostic disable: lowercase-global

---@diagnostic disable-next-line: undefined-global
rom = rom
---@diagnostic disable-next-line: undefined-global
_PLUGIN = _PLUGIN

---@module 'game'
game = rom.game
---@module 'game-import'
import_as_fallback(game)

---@module 'SGG_Modding-SJSON'
sjson = mods["SGG_Modding-SJSON"]
---@module 'SGG_Modding-ModUtil'
modutil = mods["SGG_Modding-ModUtil"]
---@module 'SGG_Modding-ReLoad'
reload = mods["SGG_Modding-ReLoad"]
---@module 'NikkelM-Cosmetics_API'
CosmeticsAPI = mods["NikkelM-Cosmetics_API"]

local function on_ready()
	mod = modutil.mod.Mod.Register(_PLUGIN.guid)

	import "Scripts/Meta/Utils.lua"

	import "Game/Units/Enemies.sjson.lua"
	import "Game/Projectiles/Familiar_Projectiles.sjson.lua"
	import "Game/Animations/Model/Enemy_DragonBurrower_Animation.sjson.lua"
	import "Game/Animations/Model/Hero_Melinoe_Animation_Personality.sjson.lua"
	import "Game/Animations/Enemy_Ephyra_VFX.sjson.lua"
	import "Game/Animations/Enemy_Typhon_VFX.sjson.lua"
	import "Game/Animations/GUI_Screens_VFX.sjson.lua"
	import "Game/Obstacles/Crossroads.sjson.lua"

	import "Scripts/EffectData.lua"
	import "Scripts/FamiliarData.lua"
	import "Scripts/RequirementsData.lua"
	import "Scripts/FamiliarCostumeData.lua"
	import "Scripts/CosmeticsData.lua"
	import "Scripts/CodexData.lua"
	import "Scripts/KeywordData.lua"
	import "Scripts/NPCData.lua"
	import "Scripts/ProjectileData.lua"
	import "Scripts/QuestData.lua"
	import "Scripts/RunClearData.lua"
	import "Scripts/UIData.lua"
	import "Scripts/WeaponSets.lua"

	import "Scripts/EffectLogic.lua"
	import "Scripts/FamiliarLogic.lua"
	import "Scripts/FamiliarPresentation.lua"
	import "Scripts/PatchLogic.lua"
	import "Scripts/RoomLogic.lua"
end

local function on_ready_late()
	import "Scripts/FamiliarLogic_Late.lua"
	import "Scripts/FamiliarPresentation_Late.lua"
	import "Scripts/SaveLogic_Late.lua"
end

local function on_reload()
end

local function on_reload_late()
end

local loader = reload.auto_multiple()

modutil.once_loaded.game(function()
	loader.load("early", on_ready, on_reload)
end)

mods.on_all_mods_loaded(function()
	modutil.once_loaded.game(function()
		loader.load("late", on_ready_late, on_reload_late)
	end)
end)
