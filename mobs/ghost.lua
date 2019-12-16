
mobs:register_mob("horror:ghost", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 32,
	hp_max = 42,
	armor = 130,
	collisionbox = {-0.4, 0, -0.5, 0.5, 2.5, 0.5},
	visual = "mesh",
	mesh = "ghost.b3d",
	textures = {
		{"horror_ghost.png"},
	},
   blood_amount = 60,
	blood_texture = "horror_blood_effect.png",
	visual_size = {x=3, y=3.6},
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
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item():get_name()
		if item == "horror:ring" then
				local pos = self.object:getpos()
				local obj = minetest.env:add_entity(pos, "horror:ghost_friendly")
				local ghost = obj:get_luaentity()
				ghost.tamed = true
				ghost.owner = clicker
				self.object:remove()
		end
	end,
	do_custom = function(self)
		if math.random(1, 5000) == 1 then
			local pos = self.object:getpos()
			minetest.add_item(pos, "horror:ring")
		end
	end,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
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

mobs:register_mob("horror:ghost_friendly", {
	type = "npc",
	passive = true,
	attacks_monsters = true,
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
   blood_amount = 60,
	blood_texture = "horror_blood_effect.png",
	visual_size = {x=2, y=2.6},
	makes_footstep_sound = false,
	walk_velocity = 1,
	run_velocity = 2.1,
	sounds = {
		random = "mobs_oerkki",
		attack = "mobs_oerkki",
	},
	follow = "horror:ring",
	jump = true,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
	view_range = 15,
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

mobs:register_spawn("horror:ghost",
  {"default:snowblock","default:sand", "default:dirt_with_snow"},
  20, 0, 15000, 2, 31000
)

mobs:register_egg("horror:ghost", "Ghost", "default_snow.png", 1)
