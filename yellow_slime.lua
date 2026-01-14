mobs:register_mob("terralibmt:yellow_slime", {
	type = "monster",
	hp_min = 10, 
        hp_max = 14,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	stepheight = 0.5,
	visual = "mesh",
	mesh = "slime.obj",
	textures = {{"yellow_slime_texture.png"}},
	visual_size = {x = 9, y = 9},
	makes_footstep_sound = false,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 3, 
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
	name = "terralibmt:yellow_slime",
	nodes = {"default:stone", "terralibmt:stone_rough"},
	active_object_count = 1,
        chance = 6000
})

-- spawn egg

mobs:register_egg("terralibmt:yellow_slime", ("Yellow Slime"), "yellow_slime_texture.png", 1)