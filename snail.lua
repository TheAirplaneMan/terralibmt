mobs:register_mob("terralibmt:snail", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 4,
	hp_min = 24,
	hp_max = 20,
	armor = 60,
	collisionbox = {-0.3125, -0.5000, -0.3125, 0.3125, 0.2500, 0.3125},
	visual_size = {x=10, y=10},
	visual = "mesh",
	mesh = "terralibmt_snail.obj",
	textures = {
		{"terralibmt_snail.png"},
		{"terralibmt_snail_2.png"}
	},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_stonemonster"},
	walk_velocity = 1,
	run_velocity = 3,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
	drops = {
		{name = "terralibmt:insect_meat_raw", chance = 1, min = 0, max = 1},
		{name = "default:silver_sandstone", chance = 5, min = 0, max = 1}
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
})

mobs:spawn({
	name = "terralibmt:snail",
	nodes = {"default:stone", "terralibmt:stone_bumpy", "terralibmt:stone_rough"},
	active_object_count = 1,
	max_height = -32,
        chance = 12000
})

-- spawn egg

mobs:register_egg("terralibmt:snail", ("Snail"), "terralibmt_living_tree.png", 1)