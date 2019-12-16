
mobs:register_mob("horror:spider", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 32,
	hp_max = 42,
	armor = 130,
	collisionbox = {-0.7, 0, -0.7, 0.7, 1.5, 0.7},
	visual = "mesh",
	mesh = "hspider.b3d",
	textures = {
		{"hspider.png"},
	},
   blood_amount = 80,
	blood_texture = "horror_blood_effect.png",
	visual_size = {x=3, y=3},
	makes_footstep_sound = true,
	walk_velocity = 2.5,
	run_velocity = 3.1,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 2, min = 1, max = 1},
		{name = "farming:cotton", chance = 1, min = 3, max = 6},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 20,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "air"},
	replace_with = "horror:spiderweb_decaying",
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 45,
		walk_end = 65,
		run_start = 45,
		run_end = 65,
		stand_start = 1,
		stand_end = 20,
		punch_start = 20,
		punch_end = 40,

	},
})

mobs:register_spawn("horror:spider", {"default:leaves","default:stone"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:spider", "Giant Spider", "default_obsidian.png", 1)
