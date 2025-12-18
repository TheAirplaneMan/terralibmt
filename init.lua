-- Load files
local modpath = minetest.get_modpath("terralibmt")

dofile(modpath.."/green_slime.lua")
dofile(modpath.."/blue_slime.lua")

minetest.register_craftitem("terralibmt:gel_clump", {
	description = ("Gel Clump"),
	inventory_image = "terralibmt.png"
})

minetest.register_craft({
	output = "default:torch 2",
	recipe = {
		{"terralibmt:gel_clump"},
		{"default:stick"},
	}
})