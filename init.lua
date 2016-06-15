--other files
if minetest.get_modpath("mobs") then
dofile(minetest.get_modpath("horror").."/mobs.lua")
end

--nodes

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
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="horror:sunorb", param2=1})
		end
	end,
})

minetest.register_node("horror:glowsteel_block", {
	description = "glowsteel_block",
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

minetest.register_node("horror:fire", {
	description = "decorative fire",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 50,
	walkable = false,
	damage_per_second = 2,
	tiles = {{
		name = "horror_fire.png",
		animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 1.00},
	}}
,
	inventory_image = "horror_fire_inv.png",
	wield_image = "horror_fire_inv.png",
	groups = {crumbly=1},
})

minetest.register_abm({
	nodenames = {"horror:fire"},
	interval = 1,
	chance = 2,
	action = function(pos, node)
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
	walkable = false,
	tiles = {
		"horror_spiderweb.png"
	},
	inventory_image = "horror_spiderweb.png",
	groups = {snappy=1, oddly_breakable_by_hand=1}
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

minetest.register_abm({
	nodenames = {"horror:lantern"},
	interval = 1,
	chance = 2,
	action = function(pos, node)
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

minetest.register_node("horror:lavastone", {
	description = "lavastone",
	sunlight_propagates = true,
	light_source = 10,
	tiles = {{
	name="horror_lavastone.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}}
,
	inventory_image = "horror_fire_inv.png",
	wield_image = "horror_fire_inv.png",	
	groups = {cracky=1}
})

minetest.register_node("horror:animflesh", {
	description = "undeadblock",
	tiles = {{
	name="flesh_anim.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}}
,
	inventory_image = "horror_flesh.png",
	wield_image = "horror_flesh.png",	
	groups = {cracky=1}
})

minetest.register_node("horror:furry", {
	description = "grumpy creature",
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
	groups = {cracky=1, falling_node=1}
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

minetest.register_abm({
	nodenames = {"horror:fountain"},
	interval = 1,
	chance = 2,
	action = function(pos, node)
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
	liquid_viscosity = WATER_VISC,
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
	liquid_viscosity = WATER_VISC,
	freezemelt = "default:ice",
	post_effect_color = {a=70, r=200, g=70, b=70},
	groups = {liquid=3, puts_out_fire=1, freezes=1}
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
	description = "mud",
	tiles = {
		"horror_mud.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {crumbly=1, falling_node=1}
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

minetest.register_on_joinplayer(function(player)
	minetest.after(0,function()
		player:override_day_night_ratio(0.41)
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
end)

minetest.register_node("horror:vines", {
	description = "vines",
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
	}
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

minetest.register_abm({
	nodenames = {"horror:clock"},
	interval = 1.0,
	chance = 1,
	action = function(...)
		minetest.sound_play({name="clock"}, 
		{max_hear_distance = 1, loop = false})
	end
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

minetest.register_abm({
	nodenames = {"horror:roach_spawner"},
	interval = 2,
	chance = 2,
	action = function(pos, node)
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

minetest.register_abm({
	nodenames = {"horror:head"},
	interval = 2,
	chance = 5,
	action = function(pos, node)
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

minetest.register_abm({
	nodenames = {"horror:flames"},
	interval = 3,
	chance = 1,
	action = function(pos, node)
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
	groups = {choppy=2},
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

minetest.register_tool("horror:cleaver", {
	description = "cleaver",
	inventory_image = "horror_cleaver.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy = 6},
	},
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
	groups = {choppy=2},
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
	groups = {choppy=2},
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

--All nodeboxes were generated using NodeBoxEditor v0.8.1 Windows