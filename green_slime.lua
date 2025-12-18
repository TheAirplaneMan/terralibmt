mobs:register_mob("terralibmt:green_slime", {
	type = "monster",
	hp_min = 5, 
        hp_max = 10,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	stepheight = 0.5,
	visual = "mesh",
	mesh = "slime.obj",
	textures = {{"green_slime_texture.png"}},
	visual_size = {x = 9, y = 9},
	makes_footstep_sound = false,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 1, 
        reach = 2,
	passive = false,
	walk_velocity = 1,
	run_velocity = 4,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 7,
	armor = 100,
	view_range = 16,
	drops = {
		{name = "terralibmt:gel_clump", chance = 1, min = 1, max = 2},
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0
})

mobs:spawn({
	name = "terralibmt:green_slime",
	nodes = {"default:dirt_with_grass"},
	active_object_count = 2,
        chance = 6000
})

-- spawn egg

mobs:register_egg("terralibmt:green_slime", ("Green Slime"), "green_slime_texture.png", 1)