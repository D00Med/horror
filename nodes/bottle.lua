
minetest.register_node("horror:bottle", {
	description = "bottle",
	tiles = {
		"jar_top.png",
		"jar_top.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png",
		"jar_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875}, -- NodeBox1
			{-0.125, -0.5, -0.125, 0.125, 0.125, 0.125}, -- NodeBox2
			{-0.0625, 0.125, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox3
		}
	}
})
