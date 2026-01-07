minetest.register_node("terralibmt:living_tree", {
	description = ("Living Tree"),
	tiles = {"terralibmt_living_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("terralibmt:living_tree_wood", {
	description = ("Living Tree Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terralibmt_living_tree_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("terralibmt:living_tree_leaves", {
	description = ("Living Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"terralibmt_living_tree_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:stick"}, rarity = 3},
			{items = {"terralibmt:living_tree_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("terralibmt:living_tree_vines", {
	description = ("Living Tree Vines"),
	drawtype = "plantlike",
	tiles = {"terralibmt_living_tree_vines.png"},
	inventory_image = "terralibmt_living_tree_vines.png",
	wield_image = "terralibmt_living_tree_vines.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.0001,
	biomes = {"grassland"},
	height = 0,
	y_min = 0,
	y_max = 1000,
	place_offset_y = math.random(-25,-1),
	schematic = minetest.get_modpath("terralibmt") .. "/schematics/living_tree.mts",
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})