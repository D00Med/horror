

--mobs, eggs and spawning
mobs:register_mob("horror:hellbaron", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 3,
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
   mesh = "hellbaron.b3d",
   textures = {
      {"horror_hellbaron.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=1, y=1},
   makes_footstep_sound = true,
   walk_velocity = 2,
   run_velocity = 3.5,
   jump = true,
   drops = {
      {name = "default:steel_ingot", chance = 1, min = 1, max = 5},
   },
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 51,
      walk_end = 75,
      stand_start = 1,
      stand_end = 25,
      run_start = 51,
      run_end = 75,
      punch_start = 25,
      punch_end = 50,
	  shoot_start = 25,
	  shoot_end = 50,
   },
})

mobs:register_spawn("horror:hellbaron", {"default:lava_source", "default:stone"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:hellbaron", "Hell Baron", "default_dirt.png", 1)
