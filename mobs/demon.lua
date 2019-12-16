
mobs:register_mob("horror:demon", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 2,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 100,
   collisionbox = {-0.4, -0.5, -0.6, 0.6, 3, 0.6},
   visual = "mesh",
   mesh = "demon.b3d",
   textures = {
      {"demon.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3.5, y=3},
   makes_footstep_sound = true,
   walk_velocity = 2,
   run_velocity = 3,
   jump = true,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
	replace_rate = 5,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "air"},
	replace_with = "horror:gfire",
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 1,
      walk_end = 20,
      stand_start = 39,
      stand_end = 50,
      run_start = 1,
      run_end = 20,
      punch_start = 21,
      punch_end = 38,
   },
})

mobs:register_spawn("horror:demon", {"default:stone","default:lava_flowing"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:demon", "Demon", "default_dirt.png", 1)
