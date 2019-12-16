
mobs:register_mob("horror:dragon", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 8,
   reach = 3,
   attack_type = "dogshoot",
   shoot_interval = 3.5,
   arrow = "horror:fireball",
   shoot_offset = 1,
   hp_min = 50,
   hp_max = 85,
   armor = 90,
   collisionbox = {-0.6, -0.9, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "dragon_new.b3d",
   textures = {
      {"horror_dragon.png"},
   },
   blood_amount = 90,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   sounds = {
      shoot_attack = "mobs_fireball",
   },
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   drops = {
      {name = "mobs:lava_orb", chance = 2, min = 1, max = 3},
      {name = "default:diamond", chance = 2, min = 1, max = 3},
   },
   fall_speed = 0,
   stepheight = 10,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 1,
      walk_end = 22,
      stand_start = 1,
      stand_end = 22,
      run_start = 1,
      run_end = 22,
      punch_start = 22,
      punch_end = 47,
   },
})

mobs:register_spawn("horror:dragon", {"default:pine_needles",}, 20, 0, 35000, 200, 31000)

mobs:register_egg("horror:dragon", "Zombie Dragon", "horror_orb.png", 1)
