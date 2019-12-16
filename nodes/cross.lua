
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
