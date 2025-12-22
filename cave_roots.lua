minetest.register_node("terralibmt:dirt_with_roots", {
	description = ("Rooty Dirt"),
	tiles = {"default_dirt.png^terralibmt_root_overlay.png"},
	groups = {crumbly = 3, soil = 1},
	drop = "terralibmt:cave_root",
	sounds = default.node_sound_dirt_defaults(),
	_tnt_loss = 3,
})

minetest.register_craftitem("terralibmt:cave_root", {
	description = ("Cave Root"),
	inventory_image = "terralibmt_cave_root.png",
})

minetest.register_craftitem("terralibmt:cave_root_cooked", {
	description = ("Roasted Cave Root"),
	inventory_image = "terralibmt_cave_root_cooked.png",
	groups = {food_cave_root = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "terralibmt:cave_root_cooked",
	recipe = "terralibmt:cave_root",

})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:dirt",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -256,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 23456,
		octaves = 1,
		persist = 0.0
	},
})


minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:dirt",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -512,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 12345,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "terralibmt:dirt_with_roots",
	wherein        = "default:dirt",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_max          = 0,
	y_min          = -512,
})