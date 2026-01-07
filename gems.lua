minetest.register_node("terralibmt:stone_with_gem", {
	description = ("Gem Ore"),
	tiles = {"default_stone.png^terralibmt_gem_mineral.png"},
	drop = {
		max_items = 1,
		items = {
			{items = {"terralibmt:ruby"}},
			{items = {"terralibmt:amber"}},
			{items = {"terralibmt:emerald"}},
			{items = {"terralibmt:diamond"}},
			{items = {"terralibmt:topaz"}},
			{items = {"terralibmt:sapphire"}},
			{items = {"terralibmt:amethyst"}},
			{items = {"terralibmt:onyx"}}
		}
	},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "terralibmt:stone_with_gem",
	wherein        = "default:stone",
	clust_scarcity = 17 * 17 * 17,
	clust_num_ores = 4,
	clust_size     = 3,
	y_max          = -1024,
	y_min          = -31000,
})

minetest.register_craftitem("terralibmt:ruby", {
	description = ("Ruby"),
	inventory_image = "terralibmt_ruby.png"
})

minetest.register_craft({
	output = "terralibmt:ruby_block",
	recipe = {
		{"terralibmt:ruby", "terralibmt:ruby", "terralibmt:ruby"},
		{"terralibmt:ruby", "terralibmt:ruby", "terralibmt:ruby"},
		{"terralibmt:ruby", "terralibmt:ruby", "terralibmt:ruby"},
	}
})

minetest.register_node("terralibmt:ruby_block", {
	description = ("Ruby Block"),
	tiles = {"terralibmt_ruby_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:amber", {
	description = ("Amber"),
	inventory_image = "terralibmt_amber.png"
})

minetest.register_craft({
	output = "terralibmt:amber_block",
	recipe = {
		{"terralibmt:amber", "terralibmt:amber", "terralibmt:amber"},
		{"terralibmt:amber", "terralibmt:amber", "terralibmt:amber"},
		{"terralibmt:amber", "terralibmt:amber", "terralibmt:amber"},
	}
})

minetest.register_node("terralibmt:amber_block", {
	description = ("Amber Block"),
	tiles = {"terralibmt_amber_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:emerald", {
	description = ("Emerald"),
	inventory_image = "terralibmt_emerald.png"
})

minetest.register_craft({
	output = "terralibmt:emerald_block",
	recipe = {
		{"terralibmt:emerald", "terralibmt:emerald", "terralibmt:emerald"},
		{"terralibmt:emerald", "terralibmt:emerald", "terralibmt:emerald"},
		{"terralibmt:emerald", "terralibmt:emerald", "terralibmt:emerald"},
	}
})

minetest.register_node("terralibmt:emerald_block", {
	description = ("Emerald Block"),
	tiles = {"terralibmt_emerald_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:topaz", {
	description = ("Topaz"),
	inventory_image = "terralibmt_topaz.png"
})

minetest.register_craft({
	output = "terralibmt:topaz_block",
	recipe = {
		{"terralibmt:topaz", "terralibmt:topaz", "terralibmt:topaz"},
		{"terralibmt:topaz", "terralibmt:topaz", "terralibmt:topaz"},
		{"terralibmt:topaz", "terralibmt:topaz", "terralibmt:topaz"},
	}
})

minetest.register_node("terralibmt:topaz_block", {
	description = ("Topaz Block"),
	tiles = {"terralibmt_topaz_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:sapphire", {
	description = ("Sapphire"),
	inventory_image = "terralibmt_sapphire.png"
})

minetest.register_craft({
	output = "terralibmt:sapphire_block",
	recipe = {
		{"terralibmt:sapphire", "terralibmt:sapphire", "terralibmt:sapphire"},
		{"terralibmt:sapphire", "terralibmt:sapphire", "terralibmt:sapphire"},
		{"terralibmt:sapphire", "terralibmt:sapphire", "terralibmt:sapphire"},
	}
})

minetest.register_node("terralibmt:sapphire_block", {
	description = ("Sapphire Block"),
	tiles = {"terralibmt_sapphire_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:amethyst", {
	description = ("Amethyst"),
	inventory_image = "terralibmt_amethyst.png"
})

minetest.register_craft({
	output = "terralibmt:amethyst_block",
	recipe = {
		{"terralibmt:amethyst", "terralibmt:amethyst", "terralibmt:amethyst"},
		{"terralibmt:amethyst", "terralibmt:amethyst", "terralibmt:amethyst"},
		{"terralibmt:amethyst", "terralibmt:amethyst", "terralibmt:amethyst"},
	}
})

minetest.register_node("terralibmt:amethyst_block", {
	description = ("Amethyst Block"),
	tiles = {"terralibmt_amethyst_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:onyx", {
	description = ("Onyx"),
	inventory_image = "terralibmt_onyx.png"
})

minetest.register_craft({
	output = "terralibmt:onyx_block",
	recipe = {
		{"terralibmt:onyx", "terralibmt:onyx", "terralibmt:onyx"},
		{"terralibmt:onyx", "terralibmt:onyx", "terralibmt:onyx"},
		{"terralibmt:onyx", "terralibmt:onyx", "terralibmt:onyx"},
	}
})

minetest.register_node("terralibmt:onyx_block", {
	description = ("Onyx Block"),
	tiles = {"terralibmt_onyx_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})