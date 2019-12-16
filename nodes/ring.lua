

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
