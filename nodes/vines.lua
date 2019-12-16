
minetest.register_node("horror:vines", {
	description = "vines",
	climbable = true,
	tiles = {
		"blank.png",
		"blank.png",
		"blank.png",
		"blank.png",
		"horror_vines.png",
		"horror_vines.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox1
		}
	}
})
