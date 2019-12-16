
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
