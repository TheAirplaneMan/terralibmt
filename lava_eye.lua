mobs:register_mob("terralibmt:lava_eye", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 8,
	hp_min = 48,
	hp_max = 64,
	armor = 80,
	collisionbox = {-0.3750, -0.3750, -0.3750, 0.3750, 0.3750, 0.3750},
	visual = "mesh",
	mesh = "terralibmt_flying_ball.obj",
	textures = {{"terralibmt_lava_eye.png"}},
	blood_texture = "mobs_blood.png",
	visual_size = {x=20, y=20},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_oerkki"},
	fly = true,
	fly_in = ("air"),
	walk_velocity = 4,
	run_velocity = 5,
	view_range = 18,
	drops = {
		{name = "terralibmt:fire_stone", chance = 1, min = 0, max = 2},
		{name = "default:obsidian", chance = 2, min = 0, max = 1}
	},
	lava_damage = 0,
})

-- where to spawn

mobs:spawn({
	name = "terralibmt:lava_eye",
	nodes = {"default:lava_source", "nether:rack", "nether:netherrack"},
	active_object_count = 1,
	max_height = -512,
        chance = 10000
})

-- spawn egg

mobs:register_egg("terralibmt:lava_eye", ("Lava Eye"), "terralibmt_lava_egg_texture.png", 1)
