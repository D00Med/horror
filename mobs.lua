


mobs:register_mob("horror:centipede_body", {
	type = "npc",
	attacks_monsters = true,
	reach = 0,
	damage = 0,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	visual = "mesh",
	mesh = "centipede_segment.b3d",
	textures = {
		{"centipede.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = false,
	walk_velocity = 1.5,
	run_velocity = 3.5,
	jump = true,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "ethereal:bamboo"},
	replace_with = "air",
	view_range = 10,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 12,
		run_start = 1,
		run_end = 12,

	},
})

--Improvements thanks to TenPlus1 and Byakuren
mobs:register_mob("horror:centipede_head", {
	type = "monster",
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	visual = "mesh",
	mesh = "centipede.b3d",
	textures = {
		{"centipede.png"},
	},
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 2.5,
	run_velocity = 3.5,
	jump = false,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	},
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	do_custom = function(self)

            if not self.centipede then
                self.centipede = true -- flip switch so this part is done only once

                -- get head position and define a few temp variables
                local pos = self.object:getpos()
                local obj, obj2, ent

                -- add body and make it follow head
                obj = minetest.add_entity({x=pos.x+1, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj:get_luaentity()
                ent.following = self.object

                -- add body and make it follow previous body segment
                obj2 = minetest.add_entity({x=pos.x+2, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj2:get_luaentity()
                ent.following = obj
                -- add body and make it follow previous body segment
                obj3 = minetest.add_entity({x=pos.x+3, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj3:get_luaentity()
                ent.following = obj2
                -- add body and make it follow previous body segment
                obj4 = minetest.add_entity({x=pos.x+4, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj4:get_luaentity()
                ent.following = obj3
                -- add body and make it follow previous body segment
                obj5 = minetest.add_entity({x=pos.x+5, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj5:get_luaentity()
                ent.following = obj4
                -- add body and make it follow previous body segment
                obj6 = minetest.add_entity({x=pos.x+6, y=pos.y, z=pos.z}, "horror:centipede_body")
                ent = obj6:get_luaentity()
                ent.following = obj5
            end
    end,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 10,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "ethereal:bamboo"},
	replace_with = "air",
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 12,
		run_start = 1,
		run_end = 12,

	},
})

mobs:register_spawn("horror:centipede_head", {"horror:mud","default:dirt_with_dry_grass"}, 20, 0, 1500, 2, 31000)

mobs:register_egg("horror:centipede_head", "Centipede", "default_dirt.png", 1)


mobs:register_mob("horror:spider", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 32,
	hp_max = 42,
	armor = 130,
	collisionbox = {-0.6, -0.6, -0.5, 0.5, 0.6, 0.5},
	visual = "mesh",
	mesh = "hspider.b3d",
	textures = {
		{"hspider.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=4, y=4},
	makes_footstep_sound = true,
	walk_velocity = 2.5,
	run_velocity = 3.1,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 10, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	replace_rate = 20,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "air"},
	replace_with = "horror:spiderweb_decaying",
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 12,
		run_start = 1,
		run_end = 12,
		stand_start = 1,
		stand_end = 1,

	},
})

mobs:register_spawn("horror:spider", {"default:leaves","default:stone"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:spider", "6-legged Spider", "default_obsidian.png", 1)

mobs:register_mob("horror:ghost", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 32,
	hp_max = 42,
	armor = 130,
	collisionbox = {-0.4, 0, -0.5, 0.5, 1.5, 0.5},
	visual = "mesh",
	mesh = "ghost.b3d",
	textures = {
		{"horror_ghost.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=4, y=4.6},
	makes_footstep_sound = false,
	walk_velocity = 1,
	run_velocity = 2.1,
	sounds = {
		random = "mobs_oerkki",
		attack = "mobs_oerkki",
	},
	jump = true,
	drops = {
		{name = "farming:cotton", chance = 10, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 1,
	view_range = 5,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 1,
		walk_end = 20,
		run_start = 30,
		run_end = 50,
		stand_start = 1,
		stand_end = 2,
		punch_start = 50,
		punch_end = 70,

	},
})

mobs:register_spawn("horror:ghost", {"default:snowblock","default:sand"}, 20, 0, 15000, 2, 31000)

mobs:register_egg("horror:ghost", "Ghost", "default_snow.png", 1)

mobs:register_mob("horror:cyberdemon", {
	type = "monster",
	passive = false,
	reach = 3,
	damage = 2,
	attack_type = "shoot",
   shoot_interval = 3.5,
   arrow = "horror:rocket",
   shoot_offset = 0,
	hp_min = 102,
	hp_max = 112,
	armor = 130,
	collisionbox = {-0.7, 0, -0.7, 0.7, 5, 0.7},
	visual = "mesh",
	mesh = "cyberdemon.b3d",
	textures = {
		{"horror_cyberdemon.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2.1,
	sounds = {
		random = "mobs_stone_monster",
		attack = "mobs_stone_monster",
	},
	jump = true,
	drops = {
		{name = "default:mese", chance = 1, min = 1, max = 1},
		{name = "mobs:meat_raw", chance = 1, min = 3, max = 5},
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	view_range = 15,
	animation = {
		speed_normal = 10,
		speed_run = 15,
		walk_start = 20,
		walk_end = 40,
		run_start = 20,
		run_end = 40,
		stand_start = 64,
		stand_end = 80,
		shoot_start = 1,
		shoot_end = 15,

	},
})

mobs:register_spawn("horror:cyberdemon", {"nether:stone","default:dirt_with_grass"}, 20, 0, 20000, 2, 31000)

mobs:register_egg("horror:cyberdemon", "Cyberdemon", "wool_red.png", 1)


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
   armor = 80,
   collisionbox = {-0.6, -0.9, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "dragon_new.b3d",
   textures = {
      {"horror_dragon.png"},
   },
   blood_texture = "mobs_blood.png",
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
      {name = "mobs:lava_orb", chance = 1, min = 1, max = 1},
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

mobs:register_spawn("horror:dragon", {"default:pine_needles",}, 20, 0, 15000, 200, 31000)
   
mobs:register_egg("horror:dragon", "Zombie Dragon", "horror_orb.png", 1)

mobs:register_arrow("horror:fireball", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"horror_fireball.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "horror_steam.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,
   
   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,

   hit_node = function(self, pos, node)
      self.object:remove()
   end,
})

mobs:register_arrow("horror:rocket", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"horror_rocket.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "horror_rocket_smoke.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,
   
   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 8},
      }, nil)
   end,

   hit_node = function(self, pos, node)
      mobs:explosion(pos, 2, 1, 1)
   end,
})


mobs:register_mob("horror:skull", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 8,
   reach = 3,
   attack_type = "dogfight",
   shoot_interval = 2.5,
   arrow = "horror:fireball",
   shoot_offset = 1,
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
   visual = "mesh",
   mesh = "skull.b3d",
   textures = {
      {"skull.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   do_custom = function(self)
   local apos = self.object:getpos()
		local part = minetest.add_particlespawner(
			12, --amount
			0.3, --time
			{x=apos.x-0.3, y=apos.y-0.3, z=apos.z-0.3}, --minpos
			{x=apos.x+0.3, y=apos.y-0.3, z=apos.z+0.3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=0,y=1,z=0}, --minacc
			{x=0.5,y=1,z=0.5}, --maxacc
			1, --minexptime
			2, --maxexptime
			3, --minsize
			5, --maxsize
			false, --collisiondetection
			"horror_flame2.png" --texture
		)
   end,
   fall_speed = 0,
   stepheight = 10,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 5,
      speed_run = 6,
      walk_start = 1,
      walk_end = 10,
      stand_start = 1,
      stand_end = 10,
      run_start = 1,
      run_end = 10,
      punch_start = 1,
      punch_end = 10,
   },
})

mobs:register_spawn("horror:skull", {"fire:basic_flame","default:leaves"}, 20, 0, 15000, 2, 31000)
   
mobs:register_egg("horror:skull", "Flying Skull", "horror_gfire_inv.png", 1)

mobs:register_mob("horror:mogall", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 8,
   reach = 3,
   attack_type = "dogfight",
   shoot_interval = 2.5,
   arrow = "horror:fireball",
   shoot_offset = 1,
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.3, -0, -0.3, 0.3, 1, 0.3},
   visual = "mesh",
   mesh = "mogall.b3d",
   textures = {
      {"mogall.png"},
   },
   blood_texture = "mobs_blood.png",
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
   animation = {
      speed_normal = 5,
      speed_run = 6,
      walk_start = 20,
      walk_end = 60,
      stand_start = 1,
      stand_end = 20,
      run_start = 20,
      run_end = 60,
      punch_start = 20,
      punch_end = 60,
   },
})

mobs:register_spawn("horror:mogall", {"default:jungleleaves",}, 20, 0, 15000, 2, 31000)
   
mobs:register_egg("horror:mogall", "Mogall", "horror_stone.png", 1)

-- mobs:register_mob("horror:shadow", {
   -- type = "monster",
   -- passive = false,
   -- attacks_monsters = true,
   -- damage = 3,
   -- reach = 3,
   -- attack_type = "dogfight",
   -- shoot_interval = 2.5,
   -- arrow = "horror:fireball",
   -- shoot_offset = 1,
   -- hp_min = 30,
   -- hp_max = 45,
   -- armor = 80,
   -- collisionbox = {-0.3, -0, -0.3, 0.3, 1, 0.3},
   -- visual = "mesh",
   -- mesh = "shadow.b3d",
   -- textures = {
      -- {"horror_shadow.png"},
   -- },
   -- blood_texture = "mobs_blood.png",
   -- visual_size = {x=4, y=4},
   -- makes_footstep_sound = true,
   -- walk_velocity = 1,
   -- run_velocity = 2,
   -- jump = true,
   -- fly = true,
   -- fall_speed = 0,
   -- stepheight = 1.5,
   -- water_damage = 2,
   -- lava_damage = 0,
   -- light_damage = 0,
   -- view_range = 30,
   -- animation = {
      -- speed_normal = 5,
      -- speed_run = 6,
      -- walk_start = 2,
      -- walk_end = 19,
      -- stand_start = 2,
      -- stand_end = 19,
      -- run_start = 2,
      -- run_end = 19,
      -- punch_start = 2,
      -- punch_end = 19,
   -- },
-- })

-- mobs:register_spawn("horror:shadow", {"default:snow", "default:pine_needles"}, 20, 0, 15000, 2, 31000)
   
-- mobs:register_egg("horror:shadow", "Shadow elemental", "default_obsidian.png", 1)


mobs:register_mob("horror:mothman", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 8,
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
   blood_texture = "mobs_blood.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = true,
   do_custom = function(self)
   local apos = self.object:getpos()
		local part = minetest.add_particlespawner(
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


mobs:register_mob("horror:manticore", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 4,
   reach = 4,
   attack_type = "dogfight",
   hp_min = 40,
   hp_max = 55,
   armor = 80,
   collisionbox = {-0.5, -0.5, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "manticore.b3d",
   textures = {
      {"manticore.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 3,
   run_velocity = 5,
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

mobs:register_mob("horror:birdie", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 3,
   reach = 2,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.5, -0, -0.6, 0.6, 1.6, 0.6},
   visual = "mesh",
   mesh = "birdie.b3d",
   textures = {
      {"birdie.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 1,
   run_velocity = 2,
   jump = true,
   water_damage = 0,
   lava_damage = 0,
   light_damage = 1,
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
   blood_texture = "mobs_blood.png",
   visual_size = {x=3, y=3},
   makes_footstep_sound = true,
   walk_velocity = 2,
   run_velocity = 4,
   jump = true,
   drops = {
      {name = "horror:flesh", chance = 1, min = 1, max = 1},
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

mobs:register_mob("horror:demon", {
   type = "monster",
   passive = false,
   attacks_monsters = true,
   damage = 6,
   reach = 4,
   attack_type = "dogfight",
   hp_min = 30,
   hp_max = 45,
   armor = 80,
   collisionbox = {-0.4, -0.5, -0.6, 0.6, 3, 0.6},
   visual = "mesh",
   mesh = "demon.b3d",
   textures = {
      {"demon.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=3.5, y=3},
   makes_footstep_sound = true,
   walk_velocity = 2,
   run_velocity = 3,
   jump = true,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
	replace_rate = 5,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "air"},
	replace_with = "horror:gfire",
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 1,
      walk_end = 20,
      stand_start = 39,
      stand_end = 50,
      run_start = 1,
      run_end = 20,
      punch_start = 21,
      punch_end = 38,
   },
})

mobs:register_spawn("horror:demon", {"default:stone","default:lava_flowing"}, 20, 0, 15000, 2, 31000)
   
mobs:register_egg("horror:demon", "Demon", "default_dirt.png", 1)

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
   blood_texture = "mobs_blood.png",
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
   blood_texture = "mobs_blood.png",
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
