minetest.register_node("terralibmt:clay_red", {
	description = ("Red Clay"),
	tiles = {"terralibmt_clay_red_block.png"},
	groups = {crumbly = 3},
	drop = "terralibmt:clay_red_lump 4",
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craftitem("terralibmt:clay_red_lump", {
	description = ("Red Clay Lump"),
	inventory_image = "terralibmt_clay_red_lump.png",
})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "terralibmt:clay_red",
		wherein         = {"default:dirt", "default:dirt_with_grass"},
		clust_scarcity  = 24 * 24 * 24,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -613,
			octaves = 1,
			persist = 0.0
		},
	})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:cobble",
		wherein         = {"default:dirt", "default:dirt_with_grass"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -614,
			octaves = 1,
			persist = 0.0
		},
	})