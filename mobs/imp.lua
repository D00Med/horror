

mobs:register_mob("horror:imp", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 2,
   attack_type = "dogshoot",
   shoot_interval = 2.5,
	dogshoot_switch = 2,
	dogshoot_count = 0,
	dogshoot_count_max =5,
   arrow = "horror:fireball_2",
   shoot_offset = 0.5,
   hp_min = 40,
   hp_max = 55,
   armor = 80,
   collisionbox = {-0.5, 0, -0.6, 0.6, 3, 0.6},
   visual = "mesh",
   mesh = "imp.b3d",
   textures = {
      {"horror_imp.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
   walk_velocity = 2.5,
   run_velocity = 3.5,
   jump = true,
   drops = {
      {name = "default:coal_lump", chance = 1, min = 1, max = 2},
   },
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 35,
      walk_end = 55,
      stand_start = 1,
      stand_end = 30,
      run_start = 35,
      run_end = 55,
      punch_start = 60,
      punch_end = 80,
	  shoot_start = 80,
	  shoot_end = 100,
   },
})

mobs:register_spawn("horror:imp", {"default:dirt","horror:mud","default:gravel"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:imp", "Imp", "default_dirt.png", 1)
