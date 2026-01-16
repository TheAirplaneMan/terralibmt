minetest.register_node("terralibmt:bubble_crystal", {
	description = ("Bubble Crystal"),
	drawtype = "plantlike",
	tiles = {"terralibmt_bubble_crystal.png"},
	inventory_image = "terralibmt_bubble_crystal.png",
	wield_image = "terralibmt_bubble_crystal.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 4,
	groups = {cracky = 2},
	sounds = default.node_sound_glass_defaults(),
	drop = {
		max_items = 1,
		items = {
			{
				items = {"terralibmt:bubble_crystal_fragment 3"},
				rarity = 3,
			},
			{
				items = {"terralibmt:bubble_crystal_fragment 2"},
				rarity = 2,
			},
			{
				items = {"terralibmt:bubble_crystal_fragment"},
			},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_decoration({
	name = "terralibmt:bubble_crystal",
	deco_type = "simple",

	place_on = {"default:stone"},
	sidelen = 16,

	fill_ratio = 0.00005, -- rarity

	y_max = -64,   -- BELOW ground
	y_min = -31000,

        flags = "all_floors",

	decoration = "terralibmt:bubble_crystal",
})

minetest.register_craftitem("terralibmt:bubble_crystal_fragment", {
	description = ("Bubble Crystal Fragment"),
	inventory_image = "terralibmt_bubble_crystal_shard.png"
})

minetest.register_craft({
	output = "terralibmt:bubble_crystal",
	recipe = {
		{"terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment"},
		{"terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment"},
		{"terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment", "terralibmt:bubble_crystal_fragment"},
	}
})