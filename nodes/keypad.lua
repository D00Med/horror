
minetest.register_node("horror:keypad", {
	description = "keypad",
	tiles = {
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_bottom.png",
		"horror_phone_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.4375, 0.375, 0.25, 0.0625, 0.5}, -- NodeBox1
		}
	}
})
