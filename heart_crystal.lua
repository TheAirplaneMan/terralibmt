minetest.register_node("terralibmt:heart_crystal", {
	description = ("Heart Crystal"),
	drawtype = "plantlike",
	tiles = {"terralibmt_heart_crystal_placed.png"},
	inventory_image = "terralibmt_heart_crystal.png",
	wield_image = "terralibmt_heart_crystal.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 4,
	groups = {cracky = 2},
	sounds = default.node_sound_glass_defaults(),
	drop = {
		max_items = 1,
		items = {
			{
				items = {"terralibmt:heart_crystal_fragment 3"},
				rarity = 3,
			},
			{
				items = {"terralibmt:heart_crystal_fragment 2"},
				rarity = 2,
			},
			{
				items = {"terralibmt:heart_crystal_fragment"},
			},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_decoration({
	name = "terralibmt:heart_crystal",
	deco_type = "simple",

	place_on = {"default:stone"},
	sidelen = 16,

	fill_ratio = 0.00025, -- rarity

	y_max = -64,   -- BELOW ground
	y_min = -31000,

        flags = "all_floors",

	decoration = "terralibmt:heart_crystal",
})

minetest.register_craftitem("terralibmt:heart_crystal_fragment", {
	description = ("Heart Crystal Fragment"),
	inventory_image = "terralibmt_heart_crystal_shard.png"
})

minetest.register_craft({
	output = "terralibmt:heart_crystal",
	recipe = {
		{"terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment"},
		{"terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment"},
		{"terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment", "terralibmt:heart_crystal_fragment"},
	}
})