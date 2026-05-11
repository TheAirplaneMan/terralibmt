minetest.clear_craft({ output = 'upgrade_packs:hp_10' })



-- Register

upgrade_packs.register_pack("terralibmt:up_health_1", "health", {
	description = ("Health Container Mk. 1"),
	strength = 2,
	image = "terralibmt_heart_container_1.png"
})

upgrade_packs.register_pack("terralibmt:up_health_2", "health", {
	description = ("Health Container Mk. 2"),
	strength = 4,
	image = "terralibmt_heart_container_2.png"
})

minetest.register_craft({
	output = "terralibmt:up_health_1",
	recipe = {
		{"terralibmt:heart_crystal_fragment", "default:tin_ingot", "terralibmt:heart_crystal_fragment"},
		{"default:gold_ingot", "terralibmt:heart_crystal", "default:gold_ingot"},
		{"terralibmt:heart_crystal_fragment", "default:tin_ingot", "terralibmt:heart_crystal_fragment"},
	}
})

minetest.register_craft({
	output = "terralibmt:up_health_2",
	recipe = {
		{"terralibmt:life_fruit", "default:mese_crystal", "terralibmt:life_fruit"},
		{"default:obsidian", "terralibmt:up_health_1", "default:obsidian"},
		{"terralibmt:life_fruit", "default:mese_crystal", "terralibmt:life_fruit"},
	}
})
