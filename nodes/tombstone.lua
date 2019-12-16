
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
