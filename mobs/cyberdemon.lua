
mobs:register_mob("horror:cyberdemon", {
	type = "monster",
	passive = false,
	reach = 6,
	damage = 2,
	attack_type = "shoot",
   shoot_interval = 1.5,
   arrow = "horror:rocket",
   shoot_offset = -1,
	hp_min = 102,
	hp_max = 112,
	armor = 100,
	collisionbox = {-0.8, 0, -0.8, 0.8, 6.5, 0.8},
	visual = "mesh",
	mesh = "cyberdemon.b3d",
	textures = {
		{"horror_cyberdemon.png"},
	},
   blood_amount = 90,
	blood_texture = "horror_blood_effect.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2.1,
	sounds = {
		random = "mobs_stone_monster",
		attack = "mobs_stone_monster",
	},
	jump = true,
	drops = {
		{name = "default:mese", chance = 2, min = 1, max = 1},
		{name = "mobs:meat_raw", chance = 1, min = 3, max = 5},
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	view_range = 15,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 20,
		walk_end = 40,
		run_start = 20,
		run_end = 40,
		stand_start = 64,
		stand_end = 80,
		shoot_start = 1,
		shoot_end = 15,

	},
})

mobs:register_spawn("horror:cyberdemon", {"nether:stone","default:dirt_with_grass"}, 20, 0, 35000, 2, 31000)

mobs:register_egg("horror:cyberdemon", "Cyberdemon", "wool_red.png", 1)
