
mobs:register_mob("horror:mancubus", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 2,
   attack_type = "shoot",
   shoot_interval = 2.5,
	dogshoot_switch = 2,
	dogshoot_count = 0,
	dogshoot_count_max =5,
   arrow = "horror:fireball_3",
   shoot_offset = 0.5,
   hp_min = 50,
   hp_max = 65,
   armor = 100,
   collisionbox = {-0.8, 0, -0.8, 0.8, 3, 0.8},
   visual = "mesh",
   mesh = "mancubus.b3d",
   textures = {
      {"mancubus.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
   walk_velocity = 0.5,
   run_velocity = 1,
   jump = true,
   drops = {
      {name = "mobs:meat_raw", chance = 1, min = 1, max = 2},
   },
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 20,
      walk_end = 40,
      stand_start = 45,
      stand_end = 65,
      run_start = 20,
      run_end = 40,
	  shoot_start = 1,
	  shoot_end = 15,
   },
})

mobs:register_spawn("horror:mancubus", {"default:stone","default:sand"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:mancubus", "Mancubus", "default_sand.png", 1)
