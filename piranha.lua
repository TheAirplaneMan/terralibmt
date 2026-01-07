mobs:register_mob("terralibmt:piranha", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 4,
	hp_min = 12,
	hp_max = 16,
	armor = 100,
	fly = true,
	fly_in = "default:water_source",
	collisionbox = {-0.25, -0.2, -0.25, 0.25, 0.2, 0.25},
	visual_size = {x = 2, y = 2, z = 2},
	visual = "mesh",
	mesh = "fishy.b3d",
	textures = {{"terralibmt_piranha.png"}},
	animation = {
		speed_normal = 24,
		speed_run = 24,
		stand_start = 1,
		stand_end = 50,
		walk_start = 60,
		walk_end = 90,
		run_start = 60,
		run_end = 90,
		hide_start = 95,
		hide_end = 100
	},
	makes_footstep_sound = false,
	walk_velocity = 4,
	run_velocity = 5,
	view_range = 12,
	jump = false,
	drops = {
		{name = "terralibmt:hook", chance = 4, min = 1, max = 1}
	},
	lava_damage = 2,
})

mobs:spawn({
	name = "terralibmt:piranha",
	nodes = {"default:water_source"},
	active_object_count = 3,
        chance = 4000,
	max_height = -64
})

	-- Optional spawn egg
mobs:register_egg(
	"terralibmt:piranha",
	"Piranha",
	"default_stone.png",
	1
)

mobs:register_mob("terralibmt:coelacanth", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 8,
	hp_min = 18,
	hp_max = 24,
	armor = 80,
	fly = true,
	fly_in = "default:water_source",
	collisionbox = {-0.25, -0.2, -0.25, 0.25, 0.2, 0.25},
	visual_size = {x = 4, y = 4, z = 7},
	visual = "mesh",
	mesh = "fishy.b3d",
	textures = {{"terralibmt_coelacanth.png"}},
	animation = {
		speed_normal = 24,
		speed_run = 24,
		stand_start = 1,
		stand_end = 50,
		walk_start = 60,
		walk_end = 90,
		run_start = 60,
		run_end = 90,
		hide_start = 95,
		hide_end = 100
	},
	makes_footstep_sound = false,
	walk_velocity = 4,
	run_velocity = 5,
	view_range = 12,
	jump = false,
	drops = {
		{name = "terralibmt:hook", chance = 4, min = 1, max = 1}
	},
	lava_damage = 2,
})

mobs:spawn({
	name = "terralibmt:coelacanth",
	nodes = {"default:water_source"},
	active_object_count = 1,
        chance = 4000,
	max_height = -512
})

	-- Optional spawn egg
mobs:register_egg(
	"terralibmt:coelacanth",
	"Coelacanth",
	"default_stonebrick.png",
	1
)