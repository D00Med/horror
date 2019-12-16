minetest.register_node("horror:shelf", {
	description = "shelf",
	tiles = {
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel_top.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.0625, 0.5, 0.5, 0.5}, -- NodeBox5
			{0.4375, 0.3125, 0.125, 0.5, 0.4375, 0.5}, -- NodeBox6
			{0.4375, 0.1875, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.5, 0.1875, 0.3125, -0.4375, 0.5, 0.5}, -- NodeBox10
			{-0.5, 0.3125, 0.125, -0.4375, 0.4375, 0.5}, -- NodeBox11
		}
	}
})
