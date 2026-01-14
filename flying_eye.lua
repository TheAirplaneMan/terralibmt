mobs:register_mob("terralibmt:flying_eye", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 5,
	hp_min = 18,
	hp_max = 24,
	armor = 100,
	collisionbox = {-0.3750, -0.3750, -0.3750, 0.3750, 0.3750, 0.3750},
	visual = "mesh",
	mesh = "terralibmt_flying_ball.obj",
	textures = {{"terralibmt_flying_eye.png"}},
	blood_texture = "mobs_blood.png",
	visual_size = {x=10, y=10},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_oerkki"},
	fly = true,
	fly_in = ("air"),
	walk_velocity = 4,
	run_velocity = 5,
	view_range = 18,
--	drops = {
--		{name = "default:lava_source", chance = 3, min = 0, max = 2}
--	},
	lava_damage = 2,
})

-- where to spawn

mobs:spawn({
	name = "terralibmt:flying_eye",
	nodes = {"group:crumbly"},
	min_light = 0,
	max_light = 7,
	active_object_count = 2,
	min_height = 0,
        chance = 6000
})

-- spawn egg

mobs:register_egg("terralibmt:flying_eye", ("Flying Eye"), "terralibmt_eye_egg_texture.png", 1)

minetest.register_craftitem("terralibmt:lens", {
	description = ("Lens"),
	inventory_image = "terralibmt_lens.png"
})