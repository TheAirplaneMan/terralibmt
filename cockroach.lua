mobs:register_mob("terralibmt:cockroach", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 5,
	hp_min = 24,
	hp_max = 32,
	armor = 80,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	visual = "mesh",
	visual_size = {x=0.58, y=0.7, z=1.45},
	mesh = "mobf_turtle.x",
	textures = {{"terralibmt_cockroach.png"}},
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
		{name = "terralibmt:insect_meat_raw", chance = 2, min = 1, max = 2},
		{name = "terralibmt:cockroach_milk_crystals", chance = 2, min = 1, max = 4}
	},
	lava_damage = 1,
})

mobs:spawn({
	name = "terralibmt:cockroach",
	nodes = {"default:stone", "default:mossycobble"},
	active_object_count = 2,
        chance = 6000,
	max_height = 0
})

	-- Optional spawn egg
mobs:register_egg(
	"terralibmt:cockroach",
	"Cockroach",
	"terralibmt_cockroach_egg.png",
	1
)

minetest.register_craftitem(":mobs:bucket_milk", {
	description = ("Bucket of Milk"),
	inventory_image = "mobs_bucket_milk.png",
	stack_max = 1,
	on_use = minetest.item_eat(8, "bucket:bucket_empty"),
	groups = {food_milk = 1, drink = 1}
})

mobs.add_eatable("mobs:bucket_milk", 8)

minetest.register_craftitem("terralibmt:cockroach_milk_crystals", {
	description = ("Cockroach Milk Crystals"),
	inventory_image = "terralibmt_cockroach_milk_crystals.png"
})

minetest.register_craft({
	output = "mobs:bucket_milk",
	recipe = {
		{"terralibmt:cockroach_milk_crystals", "terralibmt:cockroach_milk_crystals", "terralibmt:cockroach_milk_crystals"},
		{"terralibmt:cockroach_milk_crystals", "terralibmt:cockroach_milk_crystals", "terralibmt:cockroach_milk_crystals"},
		{"", "bucket:bucket_empty", ""},
	}
})

minetest.register_craftitem("terralibmt:insect_meat_raw", {
	description = ("Raw Insect Meat"),
	inventory_image = "terralibmt_insect_meat_raw.png",
	on_use = minetest.item_eat(-1)
})

minetest.register_craftitem("terralibmt:insect_meat_cooked", {
	description = ("Cooked Insect Meat"),
	inventory_image = "terralibmt_insect_meat_cooked.png",
	on_use = minetest.item_eat(4)
})