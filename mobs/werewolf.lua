
mobs:register_mob("horror:werewolf", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 2,
   attack_type = "dogfight",
   shoot_interval = 2.5,
	dogshoot_switch = 2,
	dogshoot_count = 0,
	dogshoot_count_max =5,
   arrow = "horror:fireball_2",
   shoot_offset = 0.5,
   hp_min = 10,
   hp_max = 25,
   armor = 100,
   collisionbox = {-0.5, 0, -0.6, 0.6, 2, 0.6},
   visual = "mesh",
   mesh = "werewolf.b3d",
   textures = {
      {"horror_werewolf.png"},
   },
   blood_amount = 80,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
   walk_velocity = 1,
   run_velocity = 3.5,
   jump = true,
   drops = {
      {name = "default:papyrus", chance = 3, min = 1, max = 6},
   },
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 45,
      walk_end = 65,
      stand_start = 1,
      stand_end = 20,
      run_start = 66,
      run_end = 86,
      punch_start = 20,
      punch_end = 44,
   },
})

mobs:register_spawn("horror:werewolf",
  {"default:dirt_with_grass","horror:mud","default:gravel"},
  20, 0, 35000, 2, 31000
)

mobs:register_egg("horror:werewolf", "Werewolf", "default_gravel.png", 1)
