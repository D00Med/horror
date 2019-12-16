
mobs:register_mob("horror:shadow", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 3,
   reach = 3,
   attack_type = "dogfight",
   shoot_interval = 2.5,
   arrow = "horror:fireball",
   shoot_offset = 1,
   hp_min = 30,
   hp_max = 45,
   armor = 100,
   collisionbox = {-0.3, -0, -0.3, 0.3, 1, 0.3},
   visual = "mesh",
   mesh = "shadow.b3d",
   textures = {
      {"blank.png"},
   },
   blood_amount = 60,
   blood_texture = "horror_shadow.png",
   visual_size = {x=4, y=4},
   makes_footstep_sound = true,
   walk_velocity = 1,
   run_velocity = 2,
   jump = true,
   fly = true,
   fall_speed = 0,
   stepheight = 1.5,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 30,
   do_custom = function(self)
   local apos = self.object:getpos()
		minetest.add_particlespawner(
			1, --amount
			0.3, --time
			{x=apos.x-0.3, y=apos.y+0.3, z=apos.z-0.3}, --minpos
			{x=apos.x+0.3, y=apos.y+0.3, z=apos.z+0.3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=0,y=1,z=0}, --minacc
			{x=0.5,y=1.2,z=0.5}, --maxacc
			3, --minexptime
			5, --maxexptime
			2, --minsize
			3, --maxsize
			false, --collisiondetection
			"horror_shadow.png" --texture
		)
   end,
   animation = {
      speed_normal = 5,
      speed_run = 6,
      walk_start = 2,
      walk_end = 19,
      stand_start = 2,
      stand_end = 19,
      run_start = 2,
      run_end = 19,
      punch_start = 2,
      punch_end = 19,
   },
})

mobs:register_spawn("horror:shadow", {"default:snow", "default:pine_needles"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:shadow", "Shadow elemental", "default_obsidian.png", 1)
