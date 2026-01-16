minetest.register_tool("terralibmt:club_tree", {
	description = ("Tree-Log Club"),
	inventory_image = "terralibmt_club_tree.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=0,
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {club = 1, flammable = 2}
})

minetest.register_craft({
	output = "terralibmt:club_tree",
	recipe = {
		{"group:tree"},
		{"group:tree"},
		{"group:stick"}
	}
})

minetest.register_tool("terralibmt:club_tree_spiked", {
	description = ("Spiked Tree-Log Club"),
	inventory_image = "terralibmt_club_tree_spiked.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=0,
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {club = 1, flammable = 2}
})

minetest.register_craft({
	output = "terralibmt:club_tree_spiked",
	recipe = {
		{"default:flint", "group:tree", "default:flint"},
		{"default:flint", "group:tree", "default:flint"},
		{"", "group:stick", ""}
	}
})