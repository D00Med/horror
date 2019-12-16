
mobs:register_mob("horror:manticore", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 2,
   reach = 3,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 130,
   collisionbox = {-0.5, -0.5, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "manticore.b3d",
   textures = {
      {"manticore.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 2.5,
   run_velocity = 3.5,
   jump = true,
   drops = {
      {name = "horror:cockroach", chance = 1, min = 1, max = 1},
   },
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 1,
      walk_end = 11,
      stand_start = 1,
      stand_end = 11,
      run_start = 1,
      run_end = 11,
      punch_start = 11,
      punch_end = 26,
   },
})

mobs:register_spawn("horror:manticore", {"default:dirt_with_grass","default:mossycobble"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:manticore", "Manticore", "default_dirt.png", 1)
