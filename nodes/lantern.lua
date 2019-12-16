
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
