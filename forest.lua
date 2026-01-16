	minetest.register_decoration({
		name = "terralibmt:big_apple_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 3,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"deciduous_forest", "grassland"},
		y_max = 31000,
		y_min = 1,
		rotation = "random",
		schematic = minetest.get_modpath("terralibmt") .. "/schematics/big_apple_tree.mts",
		flags = "place_center_x, place_center_z, force_placement",
	})

	minetest.register_decoration({
		name = "terralibmt:medium_apple_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 4,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"deciduous_forest", "grassland"},
		y_max = 31000,
		y_min = 1,
		rotation = "random",
		schematic = minetest.get_modpath("terralibmt") .. "/schematics/medium_apple_tree.mts",
		flags = "place_center_x, place_center_z, force_placement",
	})

minetest.register_node("terralibmt:daybloom", {
	description = ("Daybloom"),
	tiles = {"terralibmt_daybloom.png"},
	inventory_image = "terralibmt_daybloom.png",
	wield_image = "terralibmt_daybloom.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {flower = 1, flora = 1, snappy = 3, attached_node = 1, color_yellow = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

	minetest.register_decoration({
		name = "terralibmt:daybloom",
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 923,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 2,
		decoration = "terralibmt:daybloom",
	})