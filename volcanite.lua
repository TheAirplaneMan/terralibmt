mobs:register_mob("terralibmt:volcanite", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 8,
	hp_min = 64,
	hp_max = 80,
	armor = 80,
	collisionbox = {-0.5000, -1.000, -0.5000, 0.5000, 0.7500, 0.5000},
	visual_size = {x=2, y=1},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {{"terralibmt_volcanite.png"}},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_stonemonster"},
	walk_velocity = 1,
	run_velocity = 4,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
	drops = {
		{name = "terralibmt:fire_stone", chance = 1, min = 0, max = 2},
		{name = "default:obsidian", chance = 2, min = 0, max = 1}
	},
	water_damage = 1,
	lava_damage = 0,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
	do_custom = function(self, dtime)

		self.flame_timer = (self.flame_timer or 0) + dtime

		if self.flame_timer < 0.1 then return end

		self.flame_timer = 0

		local pos = self.object:get_pos()

		-- pos, amount, texture, min_size, max_size, radius, gravity, glow, fall
		mobs:effect(pos, 5, "fire_basic_flame.png", 6, 8, 0.1, 0.2, 14, nil)
	end
})

mobs:spawn({
	name = "terralibmt:volcanite",
	nodes = {"default:stone", "nether:rack", "nether:netherrack"},
	neighbors = {"group:fire", "default:lava_source"},
	active_object_count = 2,
	max_height = -512,
        chance = 4000
})

-- spawn egg

mobs:register_egg("terralibmt:volcanite", ("Volcanite"), "terralibmt_lava_egg_texture.png", 1)