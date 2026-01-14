minetest.register_craftitem("terralibmt:fire_stone", {
	description = ("Fire Stone"),
	inventory_image = "terralibmt_fire_stone.png"
})

minetest.register_craft( {
	output = "terralibmt:fire_stone 4",
	recipe = {
		{"group:stone", "default:obsidian", "group:stone"},
		{"default:obsidian", "bucket:bucket_lava", "default:obsidian"},
		{"group:stone", "default:obsidian", "group:stone"}
	}
})

minetest.register_craft( {
	output = "terralibmt:fire_brick 4",
	recipe = {
		{"terralibmt:fire_stone", "default:brick", "terralibmt:fire_stone"},
		{"default:brick", "bucket:bucket_lava", "default:brick"},
		{"terralibmt:fire_stone", "default:brick", "terralibmt:fire_stone"}
	}
})

minetest.register_craft( {
	output = "terralibmt:fire_stone_block",
	recipe = {
		{"terralibmt:fire_stone", "terralibmt:fire_stone", "terralibmt:fire_stone"},
		{"terralibmt:fire_stone", "terralibmt:fire_stone", "terralibmt:fire_stone"},
		{"terralibmt:fire_stone", "terralibmt:fire_stone", "terralibmt:fire_stone"}
	}
})

minetest.register_node("terralibmt:fire_brick", {
	description = ("Fire Brick"),
	paramtype = "light",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terralibmt_fire_brick.png"},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5000, -0.5000, -0.5000, 0.5000, 0.3750, 0.5000},
		},
	},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	groups = {igniter = 2, cracky = 1, level = 2},
	damage_per_second = 4,
	light_source = 5,
})

minetest.register_node("terralibmt:fire_stone_block", {
	description = ("Fire Stone Block"),
	paramtype = "light",
	tiles = {"terralibmt_fire_stone_block.png"},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5000, -0.5000, -0.5000, 0.5000, 0.3750, 0.5000},
		},
	},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	groups = {igniter = 2, cracky = 1, level = 2},
	damage_per_second = 4,
	light_source = 5,
})