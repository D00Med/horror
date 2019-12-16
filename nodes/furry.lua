
minetest.register_node("horror:furry", {
	description = "Gnorm statue",
	tiles = {
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur.png",
		"horror_fur_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, -0.3125, 0.4375, 0.5, 0.5}, -- NodeBox1
			{-0.125, -0.125, -0.4375, 0.125, 0.125, -0.0625}, -- NodeBox2
			{0.25, -0.5, -0.5, 0.5, -0.4375, 0.1875}, -- NodeBox3
			{-0.5, -0.5, -0.5, -0.25, -0.4375, 0.1875}, -- NodeBox4
			{0.1875, -0.5, -0.125, 0.5, -0.1875, 0.125}, -- NodeBox5
			{-0.5, -0.5, -0.125, -0.25, -0.1875, 0.125}, -- NodeBox6
		}
	},
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1, falling_node=1}
})
