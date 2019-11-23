--other files
if minetest.get_modpath("mobs") then
dofile(minetest.get_modpath("horror").."/mobs.lua")
end

--flint and steel override(not included in the license since it's only changing the node placed)
if minetest.registered_items["fire:flint_and_steel"] then
minetest.override_item("fire:flint_and_steel", {
	description = "Flint and Steel",
	inventory_image = "fire_flint_steel.png",
	on_use = function(itemstack, user, pointed_thing)
		local player_name = user:get_player_name()
		local pt = pointed_thing

		if pt.type == "node" and minetest.get_node(pt.above).name == "air" then
			itemstack:add_wear(14)
			local node_under = minetest.get_node(pt.under).name

			if minetest.get_item_group(node_under, "flammable") >= 1 then
				if not minetest.is_protected(pt.above, player_name) then
					minetest.set_node(pt.above, {name = "horror:fire"})
				else
					minetest.chat_send_player(player_name, "This area is protected")
				end
			end
		end

		if not minetest.setting_getbool("creative_mode") then
			return itemstack
		end
	end
})
end

--sounds and weird_stuff
local sounds = true
local weird_stuff = false

minetest.register_globalstep(function()
	if math.random(1,1000) == 1 and sounds then
		local sound = math.random(1,7)
		minetest.sound_play(sound,
		{gain = 0.4, max_hear_distance = 1, loop = false})
	end

	if weird_stuff and math.random(1, 10000) == 1 then
		if math.random(1,4) == 1 then
			minetest.request_shutdown("bye bye!",false)
		else
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
		end
	end
end)

--dark setting
local dark = true
local dark_dark = true

--new style, set to false for the nodebox candle and candlestick
local new_style = true

--needed for functions
horror = {}

--Vignette overlay from Vignette mod by TriBlade9(license MIT)
--permanent dawn
if dark then
minetest.register_on_joinplayer(function(player)
	minetest.after(0,function()
		player:override_day_night_ratio(0.41)
		if dark_dark then
		player:set_sky({r=0, g=0, b=0}, "plain")
		end
	end)
	player:hud_add({
    hud_elem_type = "image",
    position = {x = 0.5, y = 0.5},
    scale = {
      x = -100,
      y = -100
    },
    text = "horror_hud.png"
  })
	if weird_stuff and math.random(1,700) == 666 then
		player:hud_add({
		hud_elem_type = "image",
		position = {x = 0.5, y = 0.5},
		scale = {
		x = -50,
		y = -100
		},
		text = "horror_pentagram.png"
		})
		local name = player:get_player_name()
		minetest.chat_send_all(name.." is posessed")
		minetest.after(1, function()
			player:set_sky({r=216, g=40, b=8}, "plain")
		end)
		minetest.after(50, function()
			if player ~= nil then
				local playerpos = player:getpos()
				tnt.boom(
					{x=playerpos.x, y=playerpos.y+1, z=playerpos.z},
					{damage_radius=5,radius=4,ignore_protection=false, disable_playerdamage=false}
				)
			end
		end)
	end
end)
end

--drop head on death

minetest.register_on_dieplayer(function(player)
	local pos = player:getpos();
	minetest.add_item(pos, "horror:sam_head")
end)

--blood

minetest.register_node("horror:blood_flowing", {
	description = "blood_source",
	inventory_image = minetest.inventorycube("horror_bloodsource.png"),
	drawtype = "flowingliquid",
	tiles = {"horror_bloodsource.png"},
	special_tiles = {
		{
			image="horror_animblood.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}
		},
		{
			image="horror_animblood.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}
		},
	},
	alpha = 190,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 2,
	liquidtype = "flowing",
	liquid_alternative_flowing = "horror:blood_flowing",
	liquid_alternative_source = "horror:bloodsource",
	liquid_viscosity = 1,
	freezemelt = "default:snow",
	post_effect_color = {a=70, r=200, g=70, b=70},
	groups = {liquid=3, puts_out_fire=1, not_in_creative_inventory=1, freezes=1, melt_around=1},
})

minetest.register_node("horror:bloodsource", {
	description = "Bloodsource",
	inventory_image = minetest.inventorycube("horror_bloodsource.png"),
	drawtype = "liquid",
	tiles = {
		{name="horror_animblood.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="horror_animblood.png",
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1},
			backface_culling = false,
		}
	},
	alpha = 190,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 2,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:blood_flowing",
	liquid_alternative_source = "horror:bloodsource",
	liquid_viscosity = 1,
	freezemelt = "default:ice",
	post_effect_color = {a=70, r=200, g=70, b=70},
	groups = {liquid=3, puts_out_fire=1, freezes=1}
})

--bucket
if minetest.get_modpath("bucket") then
bucket.register_liquid(
	"horror:bloodsource",
	"horror:blood_flowing",
	"horror:bucket_blood",
	"bucket_blood.png",
	"Blood Bucket"
)
end

--stair
stairs.register_stair_and_slab("oldstone", "horror:stone",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"horror_stone.png"},
		"Old Stone Stair",
		"Old Stone Slab",
		default.node_sound_wood_defaults())


--corners

function horror.register_corner(name, desc, text, breakeable_by_hand)

minetest.register_node("horror:"..name.."_corner", {
	description = desc,
	tiles = {
		text,
		text,
		text,
		text,
		text,
		text
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0.0625, 0.4375, 0.5}, -- NodeBox1
			{-0.0625, 0.4375, -0.5, 0.0625, 0.5, 0.5}, -- NodeBox4
			{-0.0625, 0.0625, 0.3125, 0.0625, 0.3125, 0.4375}, -- NodeBox5
			{-0.0625, 0.3125, 0.125, 0.0625, 0.4375, 0.3125}, -- NodeBox6
			{-0.0625, 0.375, -0.4375, 0.0625, 0.4375, -0.0625}, -- NodeBox7
			{-0.0625, -0.4375, 0.375, 0.0625, -0.125, 0.4375}, -- NodeBox8
			{-0.0625, 0.25, 0.25, 0.0625, 0.3125, 0.3125}, -- NodeBox9
			{-0.0625, 0.25, -0.125, 0.0625, 0.3125, 0.1875}, -- NodeBox10
			{-0.0625, -0.1875, 0.25, 0.0625, 0.1875, 0.3125}, -- NodeBox11
			{-0.0625, 0.125, -0.0625, 0.0625, 0.25, 0.125}, -- NodeBox12
			{-0.0625, -0.0625, 0.125, 0.0625, 0.125, 0.25}, -- NodeBox13
			{-0.0625, 0.0625, 0.0625, 0.0625, 0.125, 0.125}, -- NodeBox14
			{-0.0625, -0.3125, 0.3125, 0.0625, -0.125, 0.375}, -- NodeBox15
			{-0.0625, 0.3125, -0.3125, 0.0625, 0.375, -0.0625}, -- NodeBox16
		}
	},
	groups = {cracky=3, oddly_breakable_by_hand=breakeable_by_hand},
})
end

horror.register_corner("oldstone", "Old stone corner", "horror_stone.png", 0)
horror.register_corner("stone", "Stone corner", "default_stone.png", 0)
horror.register_corner("wood", "Wooden corner", "default_wood.png", 1)
horror.register_corner("obsidian", "Obsidian corner", "default_obsidian.png", 0)

--alternate style nodes

if new_style == false then
minetest.register_node("horror:candlestick", {
	description = "Candlestick",
	tiles = {
		"horror_candlestick_top.png",
		"horror_metal.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.4375, 0.25}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox2
			{-0.125, 0, 0, 0.125, 0.0625, 0.0625}, -- NodeBox4
			{-0.25, -0.0625, 0, -0.125, 0, 0.0625}, -- NodeBox5
			{0.125, -0.0625, 0, 0.25, 0, 0.0625}, -- NodeBox6
			{-0.3125, 0, 0, -0.25, 0.0625, 0.0625}, -- NodeBox7
			{0.25, 0, 0, 0.3125, 0.0625, 0.0625}, -- NodeBox8
			{-0.4375, -0.0625, -0.0625, -0.3125, 0.375, 0.0625}, -- NodeBox9
			{0.3125, -0.0625, -0.0625, 0.4375, 0.375, 0.0625}, -- NodeBox10
			{-0.125, -0.25, -0.125, 0.125, -0.125, 0.125}, -- NodeBox11
			{-0.125, 0.125, -0.0625, 0.125, 0.1875, 0.0625}, -- NodeBox16
		}
	}
})
else
minetest.register_node("horror:candlestick", {
	description = "Candlestick",
	drawtype = "torchlike",
	tiles = {{
		name = "horror_candlestick_anim.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.00},
	}},
	inventory_image = "horror_candlestick.png",
	wield_image = "horror_candlestick.png",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 20,
	groups = {snappy=1, oddly_breakable_by_hand=1, dig_immediate=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.4375, 0.25},
	}
	},
})
end


if new_style == false then
minetest.register_node("horror:candle", {
	description = "candle",
	tiles = {
		"horror_candle_top.png",
		"horror_candle_base.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 20,
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.1875, 0.125}, -- NodeBox1
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125}, -- NodeBox2
			{-0.125, -0.4375, -0.4375, 0.0625, -0.25, -0.25}, -- NodeBox3
			{-0.0625, 0.1875, -0.0625, 0.0625, 0.3125, 0.0625}, -- NodeBox5
		}
	}
})
else
minetest.register_node("horror:candle", {
	description = "Candle",
	drawtype = "torchlike",
	tiles = {{
		name = "horror_candle_anim.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.00},
	}},
	inventory_image = "horror_candle_inv.png",
	wield_image = "horror_candle_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 15,
	groups = {cracky=1, oddly_breakable_by_hand=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.3, 0.25},
	}
	},
})
end

--ABMs

local punch_entities = {}
punch_entities["horror:ghost"] = true
punch_entities["horror:centipede"] = true
punch_entities["horror:spider"] = true
punch_entities["horror:demon"] = true
punch_entities["horror:pinky"] = true
punch_entities["horror:skull"] = true
punch_entities["horror:mancubus"] = true
punch_entities["horror:manticore"] = true
punch_entities["horror:shadow"] = true
punch_entities["horror:cacodemon"] = true
punch_entities["horror:mogall"] = true
punch_entities["creatures:zombie"] = true


minetest.register_abm({
	nodenames = {"horror:sunorb", "horror:gloworb"},
	interval = 5,
	chance = 1,
	action = function(pos)
		local objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 5)
			for _, obj in pairs(objs) do
				if obj:get_luaentity() ~= nil then
					local ent = obj:get_luaentity().name
					if punch_entities[ent] then
						obj:punch(obj, 0.5, {
							full_punch_interval=0.5,
							damage_groups={fleshy=4},
						}, nil)
					end
				end
			end
	end
})

--don't disable this one if mobs is enabled, unless you want a big mess of fire wherever there are demons
minetest.register_abm({
	nodenames = {"horror:gfire"},
	interval = 5,
	chance = 1,
	action = function(pos)
		minetest.remove_node(pos)
	end
})

minetest.register_abm({
	nodenames = {"horror:fire"},
	interval = 1,
	chance = 2,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 30,
			time = 4,
			minpos = {x=pos.x-0.5, y=pos.y, z=pos.z-0.5},
			maxpos = {x=pos.x+0.5, y=pos.y+1, z=pos.z+0.5},
			minvel = {x=-0.1, y=0.5, z=-0.1},
			maxvel = {x=0.1, y=0.5, z=0.1},
			minacc = {x=0, y=0, z=0},
			maxacc = {x=0, y=0, z=0},
			minexptime = 0.5,
			maxexptime = 0.5,
			minsize = 0.1,
			maxsize = 0.5,
			collisiondetection = false,
			texture = "horror_smoke.png"
		})
	end
})

--left behind for cleaning up during testing ;)
-- minetest.register_abm({
	-- nodenames = {"horror:spiderweb"},
	-- interval = 50,
	-- chance = 1,
	-- action = function(pos)
		-- minetest.remove_node(pos)
	-- end
-- })

minetest.register_abm({
	nodenames = {"horror:lantern"},
	interval = 1,
	chance = 2,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 10,
			time = 4,
			minpos = {x=pos.x-0.5, y=pos.y-0.5, z=pos.z-0.5},
			maxpos = {x=pos.x+0.5, y=pos.y+0.5, z=pos.z+0.5},
			minvel = {x=-0.1, y=-0.1, z=-0.1},
			maxvel = {x=0.1, y=0.1, z=0.1},
			minacc = {x=0, y=0, z=0},
			maxacc = {x=0, y=0, z=0},
			minexptime = 1,
			maxexptime = 2,
			minsize = 1,
			maxsize = 2,
			collisiondetection = false,
			texture = "horror_fly.png"
		})
	end
})

minetest.register_abm({
	nodenames = {"horror:fountain"},
	interval = 1,
	chance = 2,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 59,
			time = 4,
			minpos = {x=pos.x+0.1, y=pos.y-0.1, z=pos.z},
			maxpos = {x=pos.x+0.1, y=pos.y-0.1, z=pos.z},
			minvel = {x=0, y=-1, z=0},
			maxvel = {x=0, y=-2, z=0},
			minacc = {x=0, y=0, z=0},
			maxacc = {x=0, y=0, z=0},
			minexptime = 0.5,
			maxexptime = 1,
			minsize = 2,
			maxsize = 3,
			collisiondetection = false,
			texture = "horror_gunk.png"
		})
	end
})

--the flames are useless without this
minetest.register_abm({
	nodenames = {"horror:flames"},
	interval = 3,
	chance = 1,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 70,
			time = 4,
			minpos = {x=pos.x-0.2, y=pos.y-0.5, z=pos.z-0.2},
			maxpos = {x=pos.x+0.2, y=pos.y-0.5, z=pos.z+0.2},
			minvel = {x=0, y=0.7, z=0},
			maxvel = {x=0, y=0.9, z=0},
			minacc = {x=0, y=0, z=0},
			maxacc = {x=0, y=0, z=0},
			minexptime = 0.2,
			maxexptime = 0.5,
			minsize = 2,
			maxsize = 3,
			collisiondetection = false,
			texture = "horror_flame.png"
		})
	end
})


minetest.register_abm({
	nodenames = {"horror:head"},
	interval = 2,
	chance = 5,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 2,
			time = 4,
			minpos = {x=pos.x-0.2, y=pos.y-0.2, z=pos.z-0.1},
			maxpos = {x=pos.x+0.2, y=pos.y-0.2, z=pos.z+0.1},
			minvel = {x=0, y=-0.7, z=0},
			maxvel = {x=0, y=-0.8, z=0},
			minacc = {x=0, y=-1, z=0},
			maxacc = {x=0, y=-1, z=0},
			minexptime = 4,
			maxexptime = 5,
			minsize = 1,
			maxsize = 2,
			collisiondetection = false,
			texture = "horror_blood.png"
		})
	end
})


minetest.register_abm({
	nodenames = {"horror:clock"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		minetest.sound_play("clock",
		{gain = 3, max_hear_distance = 1, loop = false})
		local meta = minetest.get_meta(pos)
		local time1 = minetest.get_timeofday()*24000
		meta:set_string("infotext", "time:"..time1)
		if math.random(1,500) then
		minetest.sound_play("clock_strikes_twelve",
		{gain = 1, max_hear_distance = 1, loop = false})
		end
	end
})

-- minetest.register_abm({
	-- nodenames = {"horror:radio"},
	-- interval = 143.0,
	-- chance = 1,
	-- action = function(...)
		-- minetest.sound_play("Undersea_Garden",
		-- {gain = 2, max_hear_distance = 1, loop = false})
	-- end
-- })

minetest.register_abm({
	nodenames = {"horror:roach_spawner"},
	interval = 2,
	chance = 2,
	action = function(pos)
		minetest.add_particlespawner({
			amount = 10,
			time = 4,
			minpos = {x=pos.x+0.2, y=pos.y-0.2, z=pos.z},
			maxpos = {x=pos.x+0.2, y=pos.y-0.2, z=pos.z},
			minvel = {x=-0.5, y=0, z=-0.5},
			maxvel = {x=0.5, y=0, z=0.5},
			minacc = {x=0, y=-1, z=0},
			maxacc = {x=0, y=-1, z=0},
			minexptime = 8,
			maxexptime = 10,
			minsize = 2,
			maxsize = 3,
			collisiondetection = true,
			texture = "horror_roach.png"
		})
	end
})

minetest.register_abm({
	nodenames = {"horror:cactus"},
	interval = 10,
	chance = 150,
	action = function(pos)
		local num = math.random(1,4)
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" or
			minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "horror:cactus" then
			minetest.env:set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="horror:cactus"})
			minetest.env:remove_node(pos)
		end
		if num == 1 then
			if minetest.get_node({x=pos.x-2, y=pos.y, z=pos.z}).name == "air" then
				minetest.env:set_node({x=pos.x-2, y=pos.y, z=pos.z}, {name="horror:cactus"})
			end
		elseif num == 2 then
			if minetest.get_node({x=pos.x+2, y=pos.y, z=pos.z}).name == "air" then
				minetest.env:set_node({x=pos.x+2, y=pos.y, z=pos.z}, {name="horror:cactus"})
			end
		elseif num == 3 then
			if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-2}).name == "air" then
				minetest.env:set_node({x=pos.x, y=pos.y, z=pos.z-2}, {name="horror:cactus"})
			end
		elseif num == 4 then
			if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+2}).name == "air" then
				minetest.env:set_node({x=pos.x, y=pos.y, z=pos.z+2}, {name="horror:cactus"})
			end
		end
	end
})

--nodes

minetest.register_node("horror:bookshelf", {
	description = "Bookshelf (fake)",
	tiles = {"default_wood.png", "default_wood.png", "default_bookshelf.png"},
	is_ground_content = false,
	walkable = false,
	drop = "default:bookshelf",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("horror:gargoyle2", {
	description = "Small gargoyle",
	tiles = {
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.125, 0.4375}, -- NodeBox21
			{-0.25, -0.125, -0.125, 0.25, 0.25, 0.3125}, -- NodeBox22
			{-0.25, 0.25, -0.125, 0.25, 0.3125, 0.25}, -- NodeBox23
			{-0.1875, 0.3125, -0.125, 0.1875, 0.375, 0.1875}, -- NodeBox24
			{-0.125, 0.25, -0.3125, 0.125, 0.5, 0}, -- NodeBox25
			{-0.0625, 0.25, -0.375, 0.0625, 0.4375, -0.3125}, -- NodeBox26
			{-0.0625, 0.1875, -0.4375, 0.0625, 0.375, -0.375}, -- NodeBox27
			{0.125, -0.125, -0.1875, 0.25, 0.125, -0.0625}, -- NodeBox28
			{-0.25, -0.125, -0.1875, -0.125, 0.125, -0.0625}, -- NodeBox29
			{-0.25, -0.125, -0.25, -0.125, -0.0625, -0.1875}, -- NodeBox30
			{0.125, -0.125, -0.25, 0.25, -0.0625, -0.1875}, -- NodeBox31
			{-0.1875, 0.375, 0.0625, -0.0625, 0.5, 0.5}, -- NodeBox32
			{0.0625, 0.375, 0.0625, 0.1875, 0.5, 0.5}, -- NodeBox33
			{0.0625, 0.3125, 0.25, 0.1875, 0.5, 0.5}, -- NodeBox34
			{-0.1875, 0.3125, 0.25, -0.0625, 0.5, 0.5}, -- NodeBox35
			{-0.1875, 0.25, 0.3125, -0.0625, 0.5, 0.5}, -- NodeBox36
			{0.0625, 0.25, 0.3125, 0.1875, 0.5, 0.5}, -- NodeBox37
			{0.0625, 0.125, 0.375, 0.1875, 0.5, 0.5}, -- NodeBox38
			{-0.1875, 0.125, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox39
			{0.0625, 0, 0.4375, 0.1875, 0.5, 0.5}, -- NodeBox40
			{-0.1875, 0, 0.4375, -0.0625, 0.5, 0.5}, -- NodeBox41
		}
	}
})




minetest.register_node("horror:sunorb", {
	description = "sun orb",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"horror_orb.png"},
	inventory_image = "horror_orb.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 2000,
	alpha = 100,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3},
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name="horror:sunorb", param2=1})
		end
	end,
})

minetest.register_node("horror:pentagram", {
	description = "pentagram",
	drawtype = "signlike",
	visual_scale = 3.0,
	tiles = {"horror_pentagram.png"},
	inventory_image = "horror_pentagram.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	light_source = 50,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	on_rightclick = function(pos, node, _)
	if minetest.get_modpath("mobs") then
		minetest.after(0.5, function()
		minetest.set_node(pos, {name="horror:portal", param2=node.param2})
		minetest.add_particlespawner(
			25, --amount
			1, --time
			{x=pos.x-1, y=pos.y, z=pos.z-1}, --minpos
			{x=pos.x+1, y=pos.y, z=pos.z+1}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=-0.5,y=1,z=-0.5}, --minacc
			{x=0.5,y=1,z=0.5}, --maxacc
			1, --minexptime
			1.5, --maxexptime
			5, --minsize
			6, --maxsize
			false, --collisiondetection
			"horror_flame2.png" --texture
		)
		end)
		end
	end,
	groups = {cracky=3,dig_immediate=3},
})

minetest.register_node("horror:portal", {
	description = "portal",
	drawtype = "signlike",
	visual_scale = 3.0,
	tiles = {"horror_portal.png"},
	inventory_image = "horror_portal.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	light_source = 50,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	on_construct = function(pos)
		minetest.after(1, function()
		minetest.env:add_entity(pos, "horror:pinky")
		minetest.remove_node(pos)
		end)
	end,
	groups = {cracky=3,dig_immediate=3, not_in_creative_inventory=1},
})

minetest.register_node("horror:blood_splatter", {
	description = "blood patch",
	drawtype = "signlike",
	tiles = {"horror_bloodsplat.png"},
	inventory_image = "horror_bloodsplat.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	groups = {cracky=3,dig_immediate=3},
})

minetest.register_node("horror:glowsteel_block", {
	description = "Glow Steel",
	tiles = {{
	name="horror_glowsteel.png",
	animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.00},
	}},
	inventory_image = "horror_glowsteelinv.png",
	groups = {cracky = 2},
	sunlight_propagates = true,
	light_source = 2,
	paramtype = "light"
})

minetest.register_node("horror:smashed_glass", {
	description = "Smashed Glass",
	tiles = {"default_glass.png^horror_glass_cracks.png",
	},
	drawtype = "glasslike",
	inventory_image = "default_glass.png^horror_glass_cracks.png",
	groups = {cracky = 2, oddly_breakable_by_hand=1, dig_immediate=3},
	paramtype = "light",
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("horror:fire", {
	description = "Decorative Fire",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 40,
	walkable = false,
	damage_per_second = 2,
	tiles = {{
		name = "horror_fire.png",
		animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 1.00},
	}}
,
	inventory_image = "horror_fire_inv.png",
	wield_image = "horror_fire_inv.png",
	groups = {crumbly=1, oddly_breakable_by_hand=1, dig_immediate=3},
})

minetest.register_node("horror:gfire", {
	description = "decorative green fire",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 30,
	walkable = false,
	damage_per_second = 2,
	tiles = {{
		name = "horror_gfire.png",
		animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 1.00},
	}}
,
	inventory_image = "horror_gfire_inv.png",
	wield_image = "horror_gfire_inv.png",
	groups = {crumbly=1, leafdecay=1, not_in_creative_inventory=1},
})


minetest.register_node("horror:gargoyle", {
	description = "stone gargoyle",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	tiles = {
		"horror_gargoyle.png"
	},
	inventory_image = "horror_gargoyle.png",
	groups = {cracky=1}
})

minetest.register_node("horror:bones", {
	description = "bonepile",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	tiles = {
		"horror_bones.png"
	},
	groups = {cracky=1}
})

minetest.register_node("horror:spiderweb", {
	description = "spiderweb",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:spiderweb",
	liquid_alternative_source = "horror:spiderweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_spiderweb.png"
	},
	inventory_image = "horror_spiderweb.png",
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, dig_immediate=1}
})

minetest.register_node("horror:spiderweb_decaying", {
	description = "spiderweb",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:spiderweb",
	liquid_alternative_source = "horror:spiderweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_spiderweb.png"
	},
	drop = "horror:spiderweb",
	inventory_image = "horror_spiderweb.png",
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, not_in_creative_inventory=1, leafdecay=1}
})



minetest.register_node("horror:lantern", {
	description = "Lantern",
	drawtype = "plantlike",
	use_texture_alpha = true,
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 100,
	walkable = false,
	tiles = {
		"horror_lantern.png"
	},
	inventory_image = "horror_lantern.png",
	groups = {snappy=1, oddly_breakable_by_hand=1}
})



minetest.register_node("horror:lavastone", {
	description = "lavastone",
	sunlight_propagates = true,
	light_source = 10,
	tiles = {{
	name="horror_lavastone.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}},
	inventory_image = "horror_fire_inv.png",
	wield_image = "horror_fire_inv.png",
	groups = {cracky=1}
})

minetest.register_node("horror:animflesh", {
	description = "undeadblock",
	tiles = {{
	name="flesh_anim.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}},
	inventory_image = "horror_flesh.png",
	wield_image = "horror_flesh.png",
	groups = {fleshy=1, dig_immediate=3, oddly_breakable_by_hand=1}
})

minetest.register_node("horror:furry", {
	description = "Gnorm statue",
	tiles = {
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, -0.3125, 0.4375, 0.5, 0.5}, -- NodeBox1
			{-0.125, -0.125, -0.4375, 0.125, 0.125, -0.0625}, -- NodeBox2
			{0.25, -0.5, -0.5, 0.5, -0.4375, 0.1875}, -- NodeBox3
			{-0.5, -0.5, -0.5, -0.25, -0.4375, 0.1875}, -- NodeBox4
			{0.1875, -0.5, -0.125, 0.5, -0.1875, 0.125}, -- NodeBox5
			{-0.5, -0.5, -0.125, -0.25, -0.1875, 0.125}, -- NodeBox6
		}
	},
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1, falling_node=1}
})

minetest.register_node("horror:fountain", {
	description = "gargoyle_fountain",
	tiles = {
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox1
			{-0.3125, -0.4375, 0.375, 0.3125, 0.375, 0.5}, -- NodeBox2
			{-0.25, -0.375, 0.25, 0.1875, 0.3125, 0.5}, -- NodeBox3
			{-0.25, -0.3125, 0.125, 0.25, 0.3125, 0.5}, -- NodeBox4
			{-0.25, -0.3125, -0.0625, 0.25, -0.125, 0.5}, -- NodeBox5
			{-0.25, 0, -0.1875, 0.25, 0.1875, 0.5}, -- NodeBox6
			{-0.125, 0.1875, -0.0625, 0.125, 0.25, 0.5}, -- NodeBox7
		}
	},
	paramtype2 = "facedir",
	groups = {cracky=1},
})




minetest.register_node("horror:cross", {
	description = "cross",
	tiles = {
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125}, -- NodeBox1
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox2
			{-0.375, 0.0625, -0.125, 0.375, 0.25, 0.125}, -- NodeBox3
		}
	},
	paramtype2 = "facedir",
	groups = {cracky=1}
})

minetest.register_node("horror:tombstone", {
	description = "tombstone",
	tiles = {
		"horror_crackedstone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_crackedstone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.25, 0.5, -0.4375, 0.3125}, -- NodeBox1
			{-0.4375, -0.5, -0.125, 0.4375, 0.125, 0.1875}, -- NodeBox2
			{-0.375, -0.5, -0.125, 0.375, 0.25, 0.1875}, -- NodeBox3
			{-0.3125, -0.5, -0.125, 0.3125, 0.375, 0.1875}, -- NodeBox4
		}
	},
	paramtype2 = "facedir",
	groups = {cracky=1}
})

minetest.register_node("horror:mud", {
	description = "solid mud",
	tiles = {
		"horror_mud.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {crumbly=1, falling_node=1}
})

minetest.register_node("horror:bush", {
	description = "bush",
	drawtype = "allfaces",
	tiles = {
		"default_leaves_simple.png^default_leaves.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {snappy=1}
})


minetest.register_node("horror:stone", {
	description = "Old Stone",
	tiles = {
		"horror_stone.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {cracky=1}
})

minetest.register_node("horror:mud_liquid", {
	description = "mud",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:mud_liquid",
	liquid_alternative_source = "horror:mud_liquid",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_mud.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {crumbly=1, liquid=1, falling_node=1}
})

minetest.register_node("horror:spikes", {
	description = "spikes",
	tiles = {
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes.png",
		"horror_spikes.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky=1, falling_node=1},
	damage_per_second = 1,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.125, -0.375, 0.375, -0.0625}, -- NodeBox1
			{0.125, -0.5, 0.0625, 0.1875, 0.1875, 0.125}, -- NodeBox2
			{-0.0625, -0.5, -0.1875, 0, 0.5, -0.125}, -- NodeBox3
			{-0.25, -0.5, 0.1875, -0.1875, 0, 0.25}, -- NodeBox4
			{0.3125, -0.5, -0.3125, 0.375, 0.25, -0.25}, -- NodeBox5
			{-0.0625, -0.5, -0.4375, 0, 0.0625, -0.375}, -- NodeBox6
		}
	}
})

minetest.register_node("horror:chain", {
	description = "chain",
	tiles = {
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.25, 0.25, -0.125, 0.4375, 0.5}, -- NodeBox1
			{0.125, 0.25, 0.25, 0.1875, 0.4375, 0.5}, -- NodeBox2
			{-0.1875, 0.25, 0.1875, 0.1875, 0.4375, 0.25}, -- NodeBox3
			{-0.0625, 0.4375, 0, 0.0625, 0.5, 0.375}, -- NodeBox4
			{-0.0625, 0.1875, 0, 0.0625, 0.5, 0.0625}, -- NodeBox5
			{-0.0625, 0.125, 0, 0.0625, 0.1875, 0.375}, -- NodeBox6
			{-0.0625, 0.125, 0.3125, 0.0625, 0.5, 0.375}, -- NodeBox7
			{-0.1875, 0.1875, 0.0625, 0.1875, 0.25, 0.1875}, -- NodeBox8
			{-0.1875, -0.125, 0.0625, -0.125, 0.1875, 0.1875}, -- NodeBox9
			{-0.1875, -0.125, 0.1875, 0.1875, -0.0625, 0.0625}, -- NodeBox10
			{0.125, -0.125, 0.0625, 0.1875, 0.25, 0.1875}, -- NodeBox11
			{0.0625, -0.0625, 0, -0.0625, 0, 0.375}, -- NodeBox12
			{-0.0625, -0.375, 0.3125, 0.0625, 0, 0.375}, -- NodeBox13
			{-0.0625, -0.375, 0, 0.0625, 0, 0.0625}, -- NodeBox14
			{-0.0625, -0.375, 0, 0.0625, -0.3125, 0.375}, -- NodeBox15
			{-0.1875, -0.3125, 0.125, 0.1875, -0.25, 0.25}, -- NodeBox16
			{0.125, -0.25, 0.125, 0.1875, -0.5, 0.25}, -- NodeBox17
			{-0.1875, -0.5, 0.125, -0.125, -0.3125, 0.25}, -- NodeBox18
		}
	}
})



minetest.register_node("horror:vines", {
	description = "vines",
	climbable = true,
	tiles = {
		"blank.png",
		"blank.png",
		"blank.png",
		"blank.png",
		"horror_vines.png",
		"horror_vines.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox1
		}
	}
})

minetest.register_node("horror:gloworb", {
	description = "gloworb",
	tiles = {
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 1000,
	groups = {cracky=1},
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.1875, -0.1875, 0.375, 0.1875, 0.1875}, -- NodeBox5
			{-0.1875, -0.375, -0.1875, 0.1875, 0.375, 0.1875}, -- NodeBox6
			{-0.3125, -0.25, -0.25, 0.3125, 0.25, 0.25}, -- NodeBox7
			{-0.25, -0.25, -0.3125, 0.25, 0.25, 0.3125}, -- NodeBox8
			{-0.25, -0.3125, -0.25, 0.25, 0.3125, 0.25}, -- NodeBox9
			{-0.1875, -0.1875, -0.375, 0.1875, 0.1875, 0.375}, -- NodeBox12
		}
	}
})

if new_style == false then
minetest.register_node("horror:candle", {
	description = "candle",
	tiles = {
		"horror_candle_top.png",
		"horror_candle_base.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 20,
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.1875, 0.125}, -- NodeBox1
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125}, -- NodeBox2
			{-0.125, -0.4375, -0.4375, 0.0625, -0.25, -0.25}, -- NodeBox3
			{-0.0625, 0.1875, -0.0625, 0.0625, 0.3125, 0.0625}, -- NodeBox5
		}
	}
})
else
minetest.register_node("horror:candle", {
	description = "Candle",
	drawtype = "torchlike",
	tiles = {{
		name = "horror_candle_anim.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.00},
	}},
	inventory_image = "horror_candle_inv.png",
	wield_image = "horror_candle_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 15,
	groups = {cracky=1, oddly_breakable_by_hand=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.3, 0.25},
	}
	},
})
end

minetest.register_node("horror:clock", {
	description = "clock",
	tiles = {
		"horror_clock_top.png",
		"horror_clock_top.png",
		"horror_clock_side.png",
		"horror_clock_side.png",
		"horror_clock_back.png",
		"horror_clock_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.25, 0.375, 0.4375, 0.25}, -- NodeBox1
			{-0.3125, 0.25, -0.1875, 0.3125, 0.5, 0.1875}, -- NodeBox2
			{-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125}, -- NodeBox3
		}
	},
})

minetest.register_node("horror:knife", {
	description = "knife",
	tiles = {
		"horror_knife_top.png",
		"horror_knife_bottom.png",
		"horror_knife.png",
		"horror_knife.png",
		"horror_knife.png",
		"horror_knife.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, 0.0625, -0.0625, 0.3125, 0.1875, 0}, -- NodeBox2
			{-0.125, -0.5, -0.0625, 0.125, 0.4375, 0}, -- NodeBox3
			{-0.0625, -0.5, 0, 0.0625, 0.5, -0.0625}, -- NodeBox4
		}
	}
})

minetest.register_node("horror:ring", {
	description = "ring",
	tiles = {
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png",
		"horror_metal.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.25, 0.3125, 0.125, 0.5, 0.5}, -- NodeBox1
			{0.125, 0, 0.375, 0.1875, 0.375, 0.5}, -- NodeBox2
			{-0.125, 0, 0.375, -0.0625, 0.375, 0.5}, -- NodeBox3
			{-0.125, 0, 0.375, 0.1875, 0.0625, 0.5}, -- NodeBox4
		}
	}
})


minetest.register_node("horror:jar", {
	description = "eye_jar",
	tiles = {
		"jar_top.png",
		"jar_top.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox1
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox2
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375}, -- NodeBox3
			{-0.4375, -0.5, -0.3125, 0.4375, 0.5, 0.3125}, -- NodeBox4
			{-0.3125, -0.5, -0.4375, 0.25, 0.5, 0.4375}, -- NodeBox5
			{-0.5, -0.5, -0.375, 0.5, -0.375, 0.375}, -- NodeBox6
			{-0.375, -0.5, -0.5, 0.375, -0.375, 0.5}, -- NodeBox7
			{-0.3125, 0.375, -0.5, 0.375, 0.5, 0.5}, -- NodeBox8
			{-0.5, 0.375, -0.375, 0.5, 0.5, 0.375}, -- NodeBox9
		}
	}
})

minetest.register_node("horror:stand", {
	description = "itemstand",
	tiles = {
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, 0.4375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox1
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375}, -- NodeBox2
			{-0.375, -0.4375, -0.375, 0.375, -0.375, 0.375}, -- NodeBox3
			{-0.375, 0.375, -0.375, 0.375, 0.4375, 0.375}, -- NodeBox4
			{-0.1875, -0.375, -0.1875, 0.1875, 0.375, 0.1875}, -- NodeBox5
		}
	}
})

minetest.register_node("horror:fence", {
	description = "spike_fence",
	tiles = {
		"blank.png",
		"blank.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes.png",
		"horror_spikes.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	damage_per_second = 1,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0}, -- NodeBox1
		}
	}
})

minetest.register_node("horror:tree", {
	description = "Dead tree",
	drawtype = "plantlike",
	tiles = {"horror_tree.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true,
	sunlight_propagates = true,
	inventory_image = "horror_tree.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {choppy=1, oddly_breakable_by_hand=1, flammable=1, attatched_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	drop = "default:wood",
	walkable = true,
})

minetest.register_node("horror:cactus", {
	description = "Prickly Pear",
	drawtype = "plantlike",
	tiles = {"horror_cactus.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true,
	sunlight_propagates = true,
	inventory_image = "horror_cactus.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {choppy=1, oddly_breakable_by_hand=1, flammable=1, falling_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1, 0.5}
	},
	damage_per_second = 1,
	walkable = false,
})

minetest.register_node("horror:radio", {
	description = "radio",
	tiles = {
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	on_rightclick = function()
		minetest.sound_play("Undersea_Garden",
		{gain = 0.5, max_hear_distance = 1, loop = false})
	end,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0, 0.125}, -- NodeBox1
			{-0.4375, 0, -0.0625, -0.25, 0.125, 0}, -- NodeBox2
			{-0.375, 0.0625, -0.0625, 0.375, 0.125, 0}, -- NodeBox3
		}
	}
})

minetest.register_node("horror:roach_spawner", {
	description = "cockroach_box",
	tiles = {
		"horror_mud.png",
		"horror_mud.png",
		"horror_mud.png",
		"horror_mud.png",
		"horror_mud.png",
		"horror_mud.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "horror:roach",
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0, 0.25, -0.4375, 0.5}, -- NodeBox1
			{-0.25, -0.25, 0, 0.25, -0.1875, 0.5}, -- NodeBox2
			{-0.25, -0.5, 0.4375, 0.25, -0.1875, 0.5}, -- NodeBox3
			{-0.25, -0.5, 0, -0.1875, -0.1875, 0.5}, -- NodeBox4
			{0.1875, -0.5, 0, 0.25, -0.1875, 0.5}, -- NodeBox5
		}
	}
})



minetest.register_node("horror:roach", {
	description = "cockroach",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"horror_roach.png"},
	inventory_image = "horror_roach.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3},
	on_use = minetest.item_eat(2)
})

minetest.register_node("horror:head", {
	description = "head",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"horror_head.png"},
	inventory_image = "horror_head.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3}
})


minetest.register_node("horror:flames", {
	description = "flames",
	drawtype = "plantlike",
	visual_scale = 0.5,
	tiles = {"horror_flame.png"},
	inventory_image = "horror_flame.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 50,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3}
})



minetest.register_node("horror:boards", {
	description = "boards",
	tiles = {
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.125, 0.4375, 0.5, 0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, 0.375, -0.0625, 0.5, 0.4375}, -- NodeBox2
			{-0.5, -0.4375, 0.4375, 0.5, -0.1875, 0.5}, -- NodeBox3
			{0.0625, -0.5, 0.375, 0.4375, 0.5, 0.4375}, -- NodeBox8
		}
	}
})

minetest.register_node("horror:bottle", {
	description = "bottle",
	tiles = {
		"jar_top.png",
		"jar_top.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875}, -- NodeBox1
			{-0.125, -0.5, -0.125, 0.125, 0.125, 0.125}, -- NodeBox2
			{-0.0625, 0.125, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox3
		}
	}
})

minetest.register_node("horror:phone", {
	description = "phone",
	tiles = {
		"horror_phone_top.png",
		"horror_phone_bottom.png",
		"horror_phone_side.png",
		"horror_phone_side.png",
		"horror_phone_back.png",
		"horror_phone_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.4375, 0.5, -0.1875, 0.4375}, -- NodeBox1
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox2
			{-0.5, -0.5, -0.375, 0.5, -0.1875, 0.4375}, -- NodeBox3
			{-0.25, -0.5, -0.375, 0.25, -0.0625, 0.1875}, -- NodeBox4
			{-0.5, -0.0625, -0.125, 0.5, 0.25, 0.125}, -- NodeBox6
		}
	}
})



minetest.register_node("horror:shelf", {
	description = "shelf",
	tiles = {
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.0625, 0.5, 0.5, 0.5}, -- NodeBox5
			{0.4375, 0.3125, 0.125, 0.5, 0.4375, 0.5}, -- NodeBox6
			{0.4375, 0.1875, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.5, 0.1875, 0.3125, -0.4375, 0.5, 0.5}, -- NodeBox10
			{-0.5, 0.3125, 0.125, -0.4375, 0.4375, 0.5}, -- NodeBox11
		}
	}
})

minetest.register_node("horror:barrel", {
	description = "barrel",
	tiles = {
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel.png",
		"horror_barrel.png",
		"horror_barrel.png",
		"horror_barrel.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	drop = {
		items = {
			{items = {'farming:bread'}, rarity = 1},
			{items = {'farming:bread'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:coal_lump'}, rarity = 1},
			{items = {'default:coal_lump'}, rarity = 1},
		}
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox2
			{-0.4375, -0.5, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox3
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox4
		}
	}
})

minetest.register_node("horror:keypad", {
	description = "keypad",
	tiles = {
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.4375, 0.375, 0.25, 0.0625, 0.5}, -- NodeBox1
		}
	}
})

minetest.register_node("horror:speaker", {
	description = "speaker",
	tiles = {
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0.25, 0.5, 0, 0.5}, -- NodeBox1
		}
	}
})

minetest.register_node("horror:table", {
	description = "table",
	tiles = {
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125, -0.5, -0.5, 0.5, 0.375, -0.3125}, -- NodeBox2
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
			{0.3125, 0.3125, -0.3125, 0.5, 0.375, -0.0625}, -- NodeBox4
			{0.3125, 0.125, -0.3125, 0.5, 0.375, -0.25}, -- NodeBox5
			{0.125, 0.3125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox6
			{0.25, 0.125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox7
		}
	}
})

minetest.register_node("horror:table_stone", {
	description = "stone table",
	tiles = {
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png",
		"horror_stone.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125, -0.5, -0.5, 0.5, 0.375, -0.3125}, -- NodeBox2
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
			{0.3125, 0.3125, -0.3125, 0.5, 0.375, -0.0625}, -- NodeBox4
			{0.3125, 0.125, -0.3125, 0.5, 0.375, -0.25}, -- NodeBox5
			{0.125, 0.3125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox6
			{0.25, 0.125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox7
		}
	}
})

minetest.register_node("horror:skull", {
	description = "skull",
	tiles = {
		"horror_skull_top.png",
		"horror_skull_bottom.png",
		"horror_skull_right.png",
		"horror_skull_left.png",
		"horror_skull_back.png",
		"horror_skull_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.125, 0.3125}, -- NodeBox1
		}
	}
})

minetest.register_node("horror:sam_head", {
	description = "Sam head",
	tiles = {
		"horror_sam_top.png",
		"horror_sam_bottom.png",
		"horror_sam_right.png",
		"horror_sam_left.png",
		"horror_sam_back.png",
		"horror_sam_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.125, 0.3125}, -- NodeBox1
		}
	}
})



--All nodeboxes were generated using NodeBoxEditor Windows

--3d models


--tools
minetest.register_tool("horror:cleaver", {
	description = "cleaver",
	inventory_image = "horror_cleaver.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=45, maxlevel=1},
		},
		damage_groups = {fleshy = 6},
	},
})

minetest.register_tool("horror:rapier", {
	description = "Rapier",
	inventory_image = "horror_rapier.png",
	wield_scale = {x = 1.5, y = 1.5, z = 0.6},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy = 9},
	},
})

minetest.register_tool("horror:pitchfork", {
	description = "Pitchfork",
	inventory_image = "horror_pitchfork.png",
	wield_scale = {x = 1.5, y = 1.5, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 2.9,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy = 12},
	},
})

--craftitems

minetest.register_craftitem("horror:ring", {
	description = "Ghosts Ring",
	inventory_image = "horror_ring.png"
})

--crafting
minetest.register_craft({
	output = 'horror:lantern',
	recipe = {
		{'default:glass'},
		{'default:torch'},
		{'default:glass'},
	}
})

minetest.register_craft({
	output = 'horror:skull',
	recipe = {
		{'bones:bones'},
	}
})

minetest.register_craft({
	output = 'horror:candlestick',
	recipe = {
		{'', 'default:torch', ''},
		{'default:torch', 'group:stick', 'default:torch'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'horror:candle',
	recipe = {
		{'', '', ''},
		{'', 'default:torch', ''},
		{'', 'default:copper_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:bookshelf',
	recipe = {
		{'default:bookshelf'},
	}
})

minetest.register_craft({
	output = 'horror:cleaver',
	recipe = {
		{'group:stick', 'default:steel_ingot', ''},
		{'group:stick', 'default:steel_ingot', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:rapier',
	recipe = {
		{'default:steel_ingot', ''},
		{'default:steel_ingot', ''},
		{'group:stick', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'horror:pitchfork',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'horror:knife',
	recipe = {
		{'', 'group:stick', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:eye_jar',
	recipe = {
		{'', '', ''},
		{'', 'default:glass', ''},
		{'', 'default:glass', ''},
	}
})

minetest.register_craft({
	output = 'horror:roach_spawner',
	recipe = {
		{'group:wood', 'group:wood', ''},
		{'group:wood', '', ''},
		{'group:wood', 'group:wood', ''},
	}
})

minetest.register_craft({
	output = 'horror:radio',
	recipe = {
		{'group:stick', '', ''},
		{'default:steel_ingot', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:clock',
	recipe = {
		{'', '', ''},
		{'', 'group:stick', ''},
		{'', 'default:wood', ''},
	}
})

minetest.register_craft({
	output = 'horror:tombstone',
	recipe = {
		{'', '', ''},
		{'', 'default:stone', ''},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:cross',
	recipe = {
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:obsidian_corner 4',
	recipe = {
		{'', '', ''},
		{'default:obsidian', 'default:obsidian', ''},
		{'default:obsidian', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:wood_corner 4',
	recipe = {
		{'', '', ''},
		{'default:wood', 'default:wood', ''},
		{'default:wood', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:stone_corner 4',
	recipe = {
		{'', '', ''},
		{'default:stone', 'default:stone', ''},
		{'default:stone', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:oldstone_corner 4',
	recipe = {
		{'', '', ''},
		{'horror:stone', 'horror:stone', ''},
		{'horror:stone', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:boards 4',
	recipe = {
		{'default:wood', '', 'default:wood'},
		{'', 'default:wood', ''},
		{'default:wood', '', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'horror:table 4',
	recipe = {
		{'group:wood', 'group:wood', 'default:wood'},
		{'group:wood', '', ''},
		{'group:wood', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:table_stone 4',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
		{'default:stone', '', ''},
		{'default:stone', '', ''},
	}
})

minetest.register_craft({
	type = 'cooking',
	output = 'default:coal_lump',
	recipe = 'default:tree',
})

minetest.register_craft({
	type = 'cooking',
	output = 'horror:stone',
	recipe = 'default:stone',
})

minetest.register_craft({
	output = 'horror:shelf',
	recipe = {
		{'', '', ''},
		{'group:wood', 'group:wood', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:gargoyle2',
	recipe = {
		{'', '', ''},
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'horror:stand',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'horror:fountain',
	recipe = {
		{'', '', ''},
		{'default:stone', 'bucket:bucket_water', ''},
		{'default:stone', '', ''},
	}
})


minetest.register_craft({
	output = 'horror:lavastone 10',
	recipe = {
		{'', '', ''},
		{'', 'bucket:bucket_lava', ''},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:chain 6',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:vines 2',
	recipe = {
		{'', '', ''},
		{'default:leaves', 'default:leaves', ''},
		{'', '', ''},
	}
})
