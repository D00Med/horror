
mobs:register_mob("horror:pinky", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 1,
   reach = 4,
   attack_type = "dogfight",
   hp_min = 70,
   hp_max = 85,
   armor = 80,
   collisionbox = {-0.8, -0, -0.8, 0.8, 1.9, 0.8},
   visual = "mesh",
   mesh = "pinky.b3d",
   textures = {
      {"pinky.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 2,
   run_velocity = 4,
   jump = true,
   drops = {
      {name = "horror:animflesh", chance = 2, min = 2, max = 3},
   },
   water_damage = 0,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 20,
      speed_run = 30,
      walk_start = 1,
      walk_end = 20,
      stand_start = 20,
      stand_end = 40,
      run_start = 1,
      run_end = 20,
      punch_start = 40,
      punch_end = 60,
   },
})

mobs:register_spawn("horror:pinky", {"default:sandstone_brick","nether:stone"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:pinky", "Pinky", "horror_flesh.png", 1)
