minetest.register_node("terralibmt:life_fruit_plant", {
	description = ("Life Fruit Plant"),
	drawtype = "plantlike",
	tiles = {"terralibmt_life_fruit_plant.png"},
	inventory_image = "terralibmt_life_fruit_plant.png",
	wield_image = "terralibmt_life_fruit_plant.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 4,
	groups = {snappy = 3},
	sounds = default.node_sound_leaves_defaults(),
	drop = "terralibmt:life_fruit",
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_decoration({
	name = "terralibmt:life_fruit",
	deco_type = "simple",

	place_on = {"terralibmt:mud"},
	sidelen = 16,

	fill_ratio = 0.00025, -- rarity

	y_max = -64,   -- BELOW ground
	y_min = -31000,

        flags = "all_floors",

	decoration = "terralibmt:life_fruit",
})

minetest.register_craftitem("terralibmt:life_fruit", {
	description = ("Life Fruit"),
	inventory_image = "terralibmt_life_fruit.png"
})