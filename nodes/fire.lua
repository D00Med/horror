
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
