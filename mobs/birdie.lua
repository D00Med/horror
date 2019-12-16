
mobs:register_mob("horror:birdie", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 3,
   reach = 3,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 100,
   collisionbox = {-0.5, -0, -0.6, 0.6, 1.6, 0.6},
   visual = "mesh",
   mesh = "birdie.b3d",
   textures = {
      {"birdie.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 1,
   run_velocity = 2,
   jump = true,
   drops = {
      {name = "mobs:meat_raw", chance = 1, min = 1, max = 2},
   },
   water_damage = 0,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 42,
      walk_end = 62,
      stand_start = 1,
      stand_end = 11,
      run_start = 42,
      run_end = 62,
      punch_start = 20,
      punch_end = 35,
   },
})

mobs:register_spawn("horror:birdie", {"default:dirt_with_grass","default:dirt_with_dry_grass"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:birdie", "Birdie", "default_dirt.png", 1)
