mobs:register_mob("terralibmt:wraith", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 4,
	damage = 6,
	hp_min = 20,
	hp_max = 30,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "character.b3d",
	textures = {{"terralibmt_wraith.png"}},
	makes_footstep_sound = true,
--	sounds = {random = "terralibmt_gross2_random"},
	fly = true,
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 0,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
--	drops = {
--		{name = "corruptionmt:rotten_eye", chance = 1, min = 0, max = 1}
--	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 1,
	suffocation = false,
	attack_animals = true,
	group_attack = true,
	blood_amount = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
})

mobs:spawn({
	name = "terralibmt:wraith",
	nodes = {"group:crumbly"},
	min_light = 0,
	max_light = 7,
	active_object_count = 1,
        chance = 6000
})

-- spawn egg

mobs:register_egg("terralibmt:wraith", ("Wraith"), "terralibmt_wraith_egg.png", 1)