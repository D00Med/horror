

mobs:register_mob("horror:skull", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 1,
   reach = 3,
   attack_type = "dogfight",
   shoot_interval = 2.5,
   arrow = "horror:fireball",
   shoot_offset = 1,
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.4, -0.1, -0.4, 0.4, 1.5, 0.4},
   visual = "mesh",
   mesh = "lost_soul.b3d",
   textures = {
      {"lost_soul.png"},
   },
   blood_texture = "horror_flame2.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   do_custom = function(self)
   local apos = self.object:getpos()
		 minetest.add_particlespawner(
			12, --amount
			0.3, --time
			{x=apos.x-0.3, y=apos.y+0.6, z=apos.z-0.3}, --minpos
			{x=apos.x+0.3, y=apos.y+0.6, z=apos.z+0.3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=0,y=1.5,z=0}, --minacc
			{x=0.5,y=1.5,z=0.5}, --maxacc
			1, --minexptime
			2, --maxexptime
			3, --minsize
			5, --maxsize
			false, --collisiondetection
			"horror_flame3.png" --texture
		)
   end,
   fall_speed = 0,
   stepheight = 10,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 20,
      walk_end = 40,
      stand_start = 1,
      stand_end = 20,
      run_start = 20,
      run_end = 40,
      punch_start = 40,
      punch_end = 65,
   },
})

mobs:register_spawn("horror:skull", {"fire:basic_flame","default:leaves"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:skull", "Lost Soul", "horror_gfire_inv.png", 1)
