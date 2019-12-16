
minetest.register_node("horror:speaker", {
	description = "speaker",
	tiles = {
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0.25, 0.5, 0, 0.5}, -- NodeBox1
		}
	}
})
