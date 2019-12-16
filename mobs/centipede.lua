
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
	blood_texture = "horror_blood_effect.png",
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
	do_custom = function(self)
		if self.following == nil then
		self.object:remove()
		end
	end,
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
   blood_amount = 80,
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
                local obj, obj2, obj3, obj4, obj5, obj6, ent

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
