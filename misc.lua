-- Tonic bottle for tlib_potions

minetest.register_node("terralibmt:tonic_bottle", {
	description = ("Empty Tonic Bottle"),
	drawtype = "plantlike",
	tiles = {"terralibmt_tonic_bottle_placed.png"},
	inventory_image = "terralibmt_tonic_bottle.png",
	wield_image = "terralibmt_tonic_bottle.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft( {
	output = "terralibmt:tonic_bottle 10",
	recipe = {
		{"default:obsidian", "", "default:obsidian"},
		{"default:obsidian", "", "default:obsidian"},
		{"", "default:obsidian", ""}
	}
})