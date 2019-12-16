
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
