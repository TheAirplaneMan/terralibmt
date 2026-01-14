-- Load files
local modpath = minetest.get_modpath("terralibmt")

dofile(modpath.."/fungus.lua")
dofile(modpath.."/gems.lua")
dofile(modpath.."/fire_stone.lua")
dofile(modpath.."/living_tree.lua")
dofile(modpath.."/yellow_willow.lua")
dofile(modpath.."/purple_sakura.lua")
dofile(modpath.."/mud.lua")
dofile(modpath.."/misc.lua")
dofile(modpath.."/cave_roots.lua")
dofile(modpath.."/heart_crystal.lua")
dofile(modpath.."/life_fruit.lua")

-- Mobs

dofile(modpath.."/volcanite.lua")
dofile(modpath.."/lava_eye.lua")
dofile(modpath.."/flying_eye.lua")
dofile(modpath.."/cockroach.lua")
dofile(modpath.."/piranha.lua")
dofile(modpath.."/black_slime.lua")
dofile(modpath.."/yellow_slime.lua")
dofile(modpath.."/blue_slime.lua")
dofile(modpath.."/green_slime.lua")


-- Mod Compatibility

dofile(modpath.."/compat_upgrade_packs.lua")
dofile(modpath.."/compat_titanium.lua")

minetest.register_craftitem("terralibmt:gel_clump", {
	description = ("Gel Blob"),
	inventory_image = "terralibmt_gel_clump.png"
})

minetest.register_craft({
	output = "default:torch 4",
	recipe = {
		{"terralibmt:gel_clump"},
		{"default:stick"},
	}
})

minetest.register_node("terralibmt:stone_rough", {
	description = ("Rough Stone"),
	tiles = {"terralibmt_stone_rough.png"},
	groups = {cracky = 2, stone = 1},
	drop = "default:cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terralibmt:stone_bumpy", {
	description = ("Bumpy Stone"),
	tiles = {"terralibmt_stone_bumpy.png"},
	groups = {cracky = 2, stone = 1},
	drop = "default:cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terralibmt:silt", {
	description = ("Silt"),
	tiles = {"terralibmt_silt.png"},
	groups = {crumbly = 3, falling_node = 1, silt = 1},
	sounds = default.node_sound_sand_defaults(),
	_tnt_loss = 2,
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "terralibmt:silt",
	wherein         = {"default:stone"},
	clust_scarcity  = 32 * 32 * 32,
	clust_size      = 8,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 56789,
		octaves = 1,
		persist = 0.0
	},
})


minetest.register_ore({
	ore_type        = "blob",
	ore             = "terralibmt:stone_rough",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 8,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 34567,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "terralibmt:stone_bumpy",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 8,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 76543,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "terralibmt:stone_rough",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 27,
	clust_size     = 6,
	y_max          = 31000,
	y_min          = -31000,
})