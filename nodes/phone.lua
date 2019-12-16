
minetest.register_node("horror:phone", {
	description = "phone",
	tiles = {
		"horror_phone_top.png",
		"horror_phone_bottom.png",
		"horror_phone_side.png",
		"horror_phone_side.png",
		"horror_phone_back.png",
		"horror_phone_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.4375, 0.5, -0.1875, 0.4375}, -- NodeBox1
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox2
			{-0.5, -0.5, -0.375, 0.5, -0.1875, 0.4375}, -- NodeBox3
			{-0.25, -0.5, -0.375, 0.25, -0.0625, 0.1875}, -- NodeBox4
			{-0.5, -0.0625, -0.125, 0.5, 0.25, 0.125}, -- NodeBox6
		}
	}
})
