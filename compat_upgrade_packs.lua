if minetest.get_modpath("upgrade_packs") then
	minetest.clear_craft({ output = 'upgrade_packs:hp_10' })

	minetest.register_craft({
		output = "upgrade_packs:hp_10",
		recipe = {
			{"terralibmt:heart_crystal", "default:goldblock", "terralibmt:heart_crystal"},
			{"default:goldblock", "vessels:steel_bottle", "default:goldblock"},
			{"terralibmt:heart_crystal", "default:goldblock", "terralibmt:heart_crystal"},
		}
	})
end

if minetest.get_modpath("more_up_packs") then
	minetest.clear_craft({ output = 'more_up_packs:hp_20' })

	minetest.register_craft({
		output = "more_up_packs:hp_20",
		recipe = {
			{"terralibmt:life_fruit", "default:goldblock", "terralibmt:life_fruit"},
			{"default:goldblock", "upgrade_packs:hp_10", "default:goldblock"},
			{"terralibmt:life_fruit", "default:goldblock", "terralibmt:fire_fruit"},
		}
	})
end