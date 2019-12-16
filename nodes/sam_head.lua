
minetest.register_node("horror:sam_head", {
	description = "Sam head",
	tiles = {
		"horror_sam_top.png",
		"horror_sam_bottom.png",
		"horror_sam_right.png",
		"horror_sam_left.png",
		"horror_sam_back.png",
		"horror_sam_front.png"
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
