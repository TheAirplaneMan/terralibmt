-- Load files
local modpath = minetest.get_modpath("terralibmt")

dofile(modpath.."/beetles.lua")
dofile(modpath.."/mud.lua")
dofile(modpath.."/cave_roots.lua")
dofile(modpath.."/green_slime.lua")
dofile(modpath.."/blue_slime.lua")
dofile(modpath.."/piranha.lua")
dofile(modpath.."/heart_crystal.lua")
dofile(modpath.."/life_fruit.lua")


minetest.register_craftitem("terralibmt:gel_clump", {
	description = ("Gel Blob"),
	inventory_image = "terralibmt_gel_clump.png"
})

minetest.register_craft({
	output = "default:torch 2",
	recipe = {
		{"terralibmt:gel_clump"},
		{"default:stick"},
	}
})