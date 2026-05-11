minetest.register_node("terralibmt:drywall_block", {
	description = ("Drywall\nCan be applied with wallpaper"),
	tiles = {"terralibmt_drywall.png^terralibmt_drywall_overlay.png", "terralibmt_drywall.png^terralibmt_drywall_overlay.png", "terralibmt_drywall.png"},
	groups = {cracky = 3, choppy = 3, drywall = 1},
	drop = "terralibmt:drywall_chunk 4",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("terralibmt:drywall_chunk", {
	description = ("Drywall Chunk"),
	inventory_image = "terralibmt_drywall_chunk.png",
	groups = {drywall = 1},
})

minetest.register_craft({
	output = "terralibmt:drywall_block 4",
	recipe = {
		{"group:wood", "default:silver_sand", "group:wood"},
		{"default:silver_sand", "terralibmt:silt", "default:silver_sand"},
		{"group:wood", "default:silver_sand", "group:wood"},
	}
})

minetest.register_craft({
	output = "terralibmt:drywall_block 4",
	recipe = {
		{"default:silver_sand", "group:wood", "default:silver_sand"},
		{"group:wood", "group:stone", "group:wood"},
		{"default:silver_sand", "group:wood", "default:silver_sand"},
	}
})





local dyes = {
	{"white",      "White"},
	{"grey",       "Grey"},
	{"dark_grey",  "Dark Grey"},
	{"black",      "Black"},
	{"violet",     "Violet"},
	{"blue",       "Blue"},
	{"cyan",       "Cyan"},
	{"dark_green", "Dark Green"},
	{"green",      "Green"},
	{"yellow",     "Yellow"},
	{"brown",      "Brown"},
	{"orange",     "Orange"},
	{"red",        "Red"},
	{"magenta",    "Magenta"},
	{"pink",       "Pink"},
}

for i = 1, #dyes do
	local name, desc = unpack(dyes[i])

	minetest.register_node("terralibmt:drywall_block_" .. name .. "", {
		description = ("Drywall with " .. desc .. " Wallpaper"),
		tiles = {"terralibmt_wallpaper_" .. name .. ".png^terralibmt_drywall_overlay.png", "terralibmt_wallpaper_" .. name .. ".png^terralibmt_drywall_overlay.png", "terralibmt_wallpaper_" .. name .. ".png"},
		is_ground_content = false,
		drop = "terralibmt:drywall_chunk 4",
	        groups = {cracky = 3, choppy = 3, drywall = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craftitem("terralibmt:wallpaper_" .. name .. "", {
		description = ("" .. desc .. " Wallpaper"),
		inventory_image = "terralibmt_wallpaper_" .. name .. "_inv.png",
		groups = {wallpaper = 1},
	})

	minetest.register_craft({
		type = "shapeless",
		output = "terralibmt:wallpaper_" .. name .. "",
		recipe = {"dye:" .. name .. "", "default:paper"}
	})
end