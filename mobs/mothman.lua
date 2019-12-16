

mobs:register_mob("horror:mothman", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 2,
   reach = 3,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
   visual = "mesh",
   mesh = "mothman.b3d",
   textures = {
      {"mothman.png"},
   },
   blood_amount = 60,
   blood_texture = "horror_blood_effect.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   do_custom = function(self)
   local apos = self.object:getpos()
		minetest.add_particlespawner(
			1, --amount
			0.3, --time
			{x=apos.x-0.3, y=apos.y-0.3, z=apos.z-0.3}, --minpos
			{x=apos.x+0.3, y=apos.y-0.3, z=apos.z+0.3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=0,y=-1,z=0}, --minacc
			{x=0.5,y=-1,z=0.5}, --maxacc
			3, --minexptime
			5, --maxexptime
			3, --minsize
			5, --maxsize
			false, --collisiondetection
			"horror_dust.png" --texture
		)
   end,
   fall_speed = 0,
   stepheight = 5,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 20,
      speed_run = 33,
      walk_start = 1,
      walk_end = 11,
      stand_start = 1,
      stand_end = 11,
      run_start = 1,
      run_end = 11,
      punch_start = 1,
      punch_end = 11,
   },
})

mobs:register_spawn("horror:mothman", {"horror:lantern", "default:aspen_leaves"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:mothman", "Mothman", "horror_orb.png", 1)
