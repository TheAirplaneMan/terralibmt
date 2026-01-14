mobs:register_mob("terralibmt:black_slime", {
	type = "monster",
	hp_min = 12, 
        hp_max = 16,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	stepheight = 0.5,
	visual = "mesh",
	mesh = "slime.obj",
	textures = {{"black_slime_texture.png"}},
	visual_size = {x = 9, y = 9},
	makes_footstep_sound = false,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 4, 
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
	name = "terralibmt:black_slime",
	nodes = {"default:stone", "terralibmt:stone_rough"},
	active_object_count = 1,
	max_height = -32,
        chance = 6000
})

-- spawn egg

mobs:register_egg("terralibmt:black_slime", ("Black Slime"), "black_slime_texture.png", 1)