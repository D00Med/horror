

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
