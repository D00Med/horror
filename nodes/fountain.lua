
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
