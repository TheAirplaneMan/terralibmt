minetest.register_node("terralibmt:fungus_yummy", {
	description = ("Yummy Fungus"),
	tiles = {"terralibmt_yummy_fungus.png"},
	inventory_image = "terralibmt_yummy_fungus.png",
	wield_image = "terralibmt_yummy_fungus.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

	minetest.register_decoration({
		name = "terralibmt:fungus_yummy",
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 2,
		decoration = "terralibmt:fungus_yummy",
		param2 = 4,
	})