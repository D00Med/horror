
mobs:register_mob("horror:armour", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 7,
   reach = 2,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 180,
   collisionbox = {-0.3, -1, -0.3, 0.3, 1, 0.3},
   visual = "mesh",
   mesh = "armour.b3d",
   textures = {
      {"armour.png"},
   },
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
   walk_velocity = 0.5,
   run_velocity = 1,
   jump = true,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 17,
      speed_run = 20,
      walk_start = 22,
      walk_end = 62,
      stand_start = 1,
      stand_end = 1,
      run_start = 21,
      run_end = 62,
      punch_start = 1,
      punch_end = 21,
   },
})

mobs:register_spawn("horror:armour", {"default:mossycobble","default:sandstone_brick"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:armour", "Axe Armour", "default_stone.png", 1)
