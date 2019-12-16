
minetest.register_node("horror:knife", {
	description = "knife",
	tiles = {
		"horror_knife_top.png",
		"horror_knife_bottom.png",
		"horror_knife.png",
		"horror_knife.png",
		"horror_knife.png",
		"horror_knife.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, 0.0625, -0.0625, 0.3125, 0.1875, 0}, -- NodeBox2
			{-0.125, -0.5, -0.0625, 0.125, 0.4375, 0}, -- NodeBox3
			{-0.0625, -0.5, 0, 0.0625, 0.5, -0.0625}, -- NodeBox4
		}
	}
})
