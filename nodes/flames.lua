
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
