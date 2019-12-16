minetest.register_node("horror:jar", {
	description = "eye_jar",
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
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox1
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox2
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375}, -- NodeBox3
			{-0.4375, -0.5, -0.3125, 0.4375, 0.5, 0.3125}, -- NodeBox4
			{-0.3125, -0.5, -0.4375, 0.25, 0.5, 0.4375}, -- NodeBox5
			{-0.5, -0.5, -0.375, 0.5, -0.375, 0.375}, -- NodeBox6
			{-0.375, -0.5, -0.5, 0.375, -0.375, 0.5}, -- NodeBox7
			{-0.3125, 0.375, -0.5, 0.375, 0.5, 0.5}, -- NodeBox8
			{-0.5, 0.375, -0.375, 0.5, 0.5, 0.375}, -- NodeBox9
		}
	}
})
