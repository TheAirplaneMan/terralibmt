-- Load files
local modpath = minetest.get_modpath("terralibmt")

dofile(modpath.."/beetles.lua")
dofile(modpath.."/cave_roots.lua")
dofile(modpath.."/green_slime.lua")
dofile(modpath.."/blue_slime.lua")

minetest.register_craftitem("terralibmt:gel_clump", {
	description = ("Gel Clump"),
	inventory_image = "terralibmt_gel_clump.png"
})

minetest.register_craft({
	output = "default:torch 2",
	recipe = {
		{"terralibmt:gel_clump"},
		{"default:stick"},
	}
})