minetest.register_node("terralibmt:sparkleblock", {
	description = ("Sparkleblock"),
	tiles = {"terralibmt_sparkleblock.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, slippery = 9},
	sounds = default.node_sound_ice_defaults(),
})

minetest.register_node("terralibmt:sparkle_glitter_block", {
	description = ("Sparkle Glitter Block"),
	tiles = {"terralibmt_sparkle_glitter_block.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {crumbly = 3, falling_node = 1, slippery = 6},
	sounds = default.node_sound_snow_defaults(),
})

minetest.register_node("terralibmt:sparkleglass", { --Sparkle glass cant be smelted from sparkleglitter
	description = ("Sparkleglass"),
	drawtype = "glasslike_framed_optional",
	tiles = {"terralibmt_sparkle_glass.png", "terralibmt_sparkle_glass_detail.png"},
	use_texture_alpha = "clip", -- only needed for stairs API
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	_tnt_loss = 2,
})

minetest.register_node("terralibmt:sparkle_source", {
	description = ("Sparkle Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "terralibmt_sparkle_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "terralibmt_sparkle_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "terralibmt:sparkle_flowing",
	liquid_alternative_source = "terralibmt:sparkle_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	post_effect_color = {a = 190, r = 255, g = 210, b = 255},
	groups = {sparkle = 1, liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("terralibmt:sparkle_flowing", {
	description = ("Flowing Sparkle"),
	drawtype = "flowingliquid",
	tiles = {"terralibmt_sparkle_flowing.png"},
	special_tiles = {
		{
			name = "terralibmt_sparkle_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "terralibmt_sparkle_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "terralibmt:sparkle_flowing",
	liquid_alternative_source = "terralibmt:sparkle_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	post_effect_color = {a = 190, r = 255, g = 210, b = 255},
	groups = {sparkle = 1, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_decoration({
	name = "terralibmt:sparkle_cave",
	deco_type = "schematic",

	place_on = {"default:stone", "terralibmt:stone_rough", "terralibmt:stone_bumpy"},
	sidelen = 16,

	fill_ratio = 0.0001, -- rarity

	y_max = -64,   -- BELOW ground
	y_min = -480,

	place_offset_y = -40,


        flags = "all_floors, force_placement",

	schematic = minetest.get_modpath("terralibmt") .. "/schematics/sparkle_cave.mts",
})








farming.register_plant("terralibmt:dream_wheat", {
	description = ("Dream Wheat Seed"),
	harvest_description = ("Dream Wheat"),
	paramtype2 = "meshoptions",
	inventory_image = "terralibmt_dream_wheat_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
--	fertility = {"grassland"},
	groups = {food_wheat = 1, flammable = 4},
	place_param2 = 3,
})

minetest.register_craftitem("terralibmt:dream_flour", {
	description = ("Dream Flour"),
	inventory_image = "terralibmt_dream_flour.png",
	groups = {food_flour = 1, flammable = 1},
})

minetest.register_craftitem("terralibmt:dream_bread", {
	description = ("Dream Bread"),
	inventory_image = "terralibmt_dream_bread.png",
	on_use = minetest.item_eat(6),
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craft({
	type = "shapeless",
	output = "terralibmt:dream_flour",
	recipe = {"terralibmt:dream_wheat", "terralibmt:dream_wheat", "terralibmt:dream_wheat", "terralibmt:dream_wheat"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "terralibmt:dream_bread",
	recipe = "terralibmt:dream_flour"
})



-- Conversion

minetest.register_abm({
	label = "Sparkleblock Conversion",
	nodenames = {"group:stone", "group:tree"},
	neighbors = {"group:sparkle"},
	interval = 9,  -- seconds between checks
	chance = 1,    -- 1 = always triggers when conditions are met

	action = function(pos, node)
		minetest.set_node(pos, {name = "terralibmt:sparkleblock"})
	end,
})

minetest.register_abm({
	label = "Sparkle Glitter Block Conversion",
	nodenames = {"group:soil", "group:flammable", "group:falling_node", "group:crumbly"},
	neighbors = {"group:sparkle"},
	interval = 6,  -- seconds between checks
	chance = 1,    -- 1 = always triggers when conditions are met

	action = function(pos, node)
		minetest.set_node(pos, {name = "terralibmt:sparkle_glitter_block"})
	end,
})

minetest.register_abm({
	label = "Sparkleglass Conversion",
	nodenames = {"group:leaves"},
	neighbors = {"group:sparkle"},
	interval = 3,  -- seconds between checks
	chance = 1,    -- 1 = always triggers when conditions are met

	action = function(pos, node)
		minetest.set_node(pos, {name = "terralibmt:sparkleglass"})
	end,
})