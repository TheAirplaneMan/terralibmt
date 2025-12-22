-- Ensure mod table exists
terralibmt = terralibmt or {}

-- Beetle definitions
terralibmt.beetles = {
	{"cochineal", "Cochineal", "red"},
	{"cyan", "Cyan", "cyan"},
	{"lac", "Lac", "violet"},
}

-- Ensure mobs_redo is present
if not mobs then
	minetest.log("error", "[terralibmt] mobs_redo not found!")
	return
end

local beetles = terralibmt.beetles

-- Register beetle mobs
for i = 1, #beetles do
	local name, desc, color = unpack(beetles[i])

	mobs:register_mob("terralibmt:" .. name .. "_beetle", {
		type = "monster",
		passive = false,
		attack_type = "dogfight",
		pathfinding = true,
		reach = 2,
		damage = 3,
		hp_min = 12,
		hp_max = 16,
		armor = 100,
		collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
		visual = "mesh",
		visual_size = {x=0.45, y=0.45},
		mesh = "mobf_turtle.x",
		textures = {{"terralibmt_" .. name .. "_beetle.png"}},
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
		makes_footstep_sound = true,
		walk_velocity = 4,
		run_velocity = 5,
		view_range = 16,
		jump = false,
		drops = {
			{name = "terralibmt:" .. name .. "_husk", chance = 1, min = 1, max = 1}
		},
		lava_damage = 2,
	})

	-- Optional spawn egg
	mobs:register_egg(
		"terralibmt:" .. name .. "_beetle",
		desc .. " Beetle",
		"terralibmt_" .. name .. "_husk.png",
		1
	)
end

-- Register husk items
for _, row in ipairs(terralibmt.beetles) do
	local name = row[1]
	local description = row[2]
	local color = row[3]

	local groups = {
		beetle_husk = 1,
		["color_" .. color] = 1
	}

	minetest.register_craftitem("terralibmt:" .. name .. "_husk", {
		description = description .. " Husk",
		inventory_image = "terralibmt_" .. name .. "_husk.png",
		groups = groups
	})
end