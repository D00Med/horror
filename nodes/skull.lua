
minetest.register_node("horror:skull", {
	description = "skull",
	tiles = {
		"horror_skull_top.png",
		"horror_skull_bottom.png",
		"horror_skull_right.png",
		"horror_skull_left.png",
		"horror_skull_back.png",
		"horror_skull_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.125, 0.3125}, -- NodeBox1
		}
	}
})
