minetest.register_node("tlib_jungle:wicker", {
	description = ("Wicker Block"),
	drawtype = "glasslike",
	tiles = {"tlib_jungle_wicker.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {snappy = 1, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("tlib_jungle:wicker_light", {
	description = ("Wicker Light"),
	drawtype = "glasslike",
	tiles = {"tlib_jungle_wicker_light.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {snappy = 1, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_leaves_defaults(),
	light_source = 12,
})