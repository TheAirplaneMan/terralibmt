if minetest.get_modpath("titanium") then

	minetest.register_node("terralibmt:titanstone", {
		description = ("Titanstone"),
		tiles = {"terralibmt_titanstone.png"},
		groups = {cracky = 1, level = 2},
		drop = "default:obsidian",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("terralibmt:titanstone_brick", {
		description = ("Titanstone Brick"),
		tiles = {"terralibmt_titanstone_brick.png"},
		groups = {cracky = 1, level = 2},
		drop = "default:obsidian",
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "terralibmt:titanstone 4",
		recipe = {
			{"default:obsidian", "default:obsidian", "default:obsidian"},
			{"default:obsidian", "titanium:titanium", "default:obsidian"},
			{"default:obsidian", "default:obsidian", "default:obsidian"},
		}
	})

	minetest.register_craft({
		output = "terralibmt:titanstone_brick 4",
		recipe = {
			{"terralibmt:titanstone", "terralibmt:titanstone"},
			{"terralibmt:titanstone", "terralibmt:titanstone"},
		}
	})
end
