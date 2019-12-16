
mobs:register_mob("horror:sam", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 1,
   reach = 1,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.25, 0.35, -0.25, 0.25, 0.9, 0.25},
   physical = false,
   visual = "mesh",
   mesh = "character.b3d",
   textures = {
      {"horror_sam.png"},
   },
   blood_amount = 60,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=1, y=1},
   makes_footstep_sound = false,
   walk_velocity = 0.01,
   run_velocity = 5,
   jump = false,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 1,
      speed_run = 1,
      walk_start = 1,
      walk_end = 1,
      stand_start = 1,
      stand_end = 1,
      run_start = 1,
      run_end = 1,
      punch_start = 1,
      punch_end = 1,
   },
})

mobs:register_spawn("horror:sam", {"default:mossycobble","default:sandstone_brick"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:sam", "Sam Head", "default_brick.png", 1)
