minetest.register_node("terralibmt:yellow_willow_tree", {
	description = ("Yellow Willow Tree"),
	tiles = {"terralibmt_yellow_willow_tree_top.png", "terralibmt_yellow_willow_tree_top.png",
		"terralibmt_yellow_willow_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("terralibmt:yellow_willow_wood", {
	description = ("Yellow Willow Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terralibmt_yellow_willow_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("terralibmt:yellow_willow_leaves", {
	description = ("Yellow Willow Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"terralibmt_yellow_willow_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"terralibmt:yellow_willow_sapling"}, rarity = 20},
			{items = {"terralibmt:yellow_willow_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("terralibmt:yellow_willow_sapling", {
	description = ("Yellow Willow Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"terralibmt_yellow_willow_sapling.png"},
	inventory_image = "terralibmt_yellow_willow_sapling.png",
	wield_image = "terralibmt_yellow_willow_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 0.5, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(300, 1500))
--	end,
--
--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"default:aspen_sapling",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -2, y = 1, z = -2},
--			{x = 2, y = 12, z = 2},
--			-- maximum interval of interior volume check
--			4)
--
--		return itemstack
--	end,
})

minetest.register_node("terralibmt:yellow_willow_vines", {
	description = ("Yellow Willow Tree Vines"),
	drawtype = "plantlike",
	tiles = {"terralibmt_yellow_willow_vines.png"},
	inventory_image = "terralibmt_yellow_willow_vines.png",
	wield_image = "terralibmt_yellow_willow_vines.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

	minetest.register_decoration({
		name = "terralibmt:yellow_willow_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("terralibmt") .. "/schematics/yellow_willow.mts",
		flags = "place_center_x, place_center_z, force_placement",
		rotation = "random",
		place_offset_y = -1,
	})