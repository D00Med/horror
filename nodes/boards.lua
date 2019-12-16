

minetest.register_node("horror:boards", {
	description = "boards",
	tiles = {
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png",
		"horror_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.125, 0.4375, 0.5, 0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, 0.375, -0.0625, 0.5, 0.4375}, -- NodeBox2
			{-0.5, -0.4375, 0.4375, 0.5, -0.1875, 0.5}, -- NodeBox3
			{0.0625, -0.5, 0.375, 0.4375, 0.5, 0.4375}, -- NodeBox8
		}
	}
})
