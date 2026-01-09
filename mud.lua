minetest.register_node("terralibmt:mud", {
	description = ("Mud"),
	tiles = {"terralibmt_mud.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	_tnt_loss = 3,
})

minetest.register_node("terralibmt:mudstone", {
	description = ("Mudstone"),
	tiles = {"terralibmt_mudstone.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
	_tnt_loss = 4,
})

minetest.register_craft({
	type = "shapeless",
	output = "terralibmt:mudstone",
	recipe = {"default:cobble", "terralibmt:mud"}
})