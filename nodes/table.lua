

minetest.register_node("horror:table", {
	description = "table",
	tiles = {
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125, -0.5, -0.5, 0.5, 0.375, -0.3125}, -- NodeBox2
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
			{0.3125, 0.3125, -0.3125, 0.5, 0.375, -0.0625}, -- NodeBox4
			{0.3125, 0.125, -0.3125, 0.5, 0.375, -0.25}, -- NodeBox5
			{0.125, 0.3125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox6
			{0.25, 0.125, -0.5, 0.3125, 0.375, -0.3125}, -- NodeBox7
		}
	}
})
