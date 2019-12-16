
minetest.register_node("horror:gloworb", {
	description = "gloworb",
	tiles = {
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png",
		"horror_orb.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 1000,
	groups = {cracky=1},
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.1875, -0.1875, 0.375, 0.1875, 0.1875}, -- NodeBox5
			{-0.1875, -0.375, -0.1875, 0.1875, 0.375, 0.1875}, -- NodeBox6
			{-0.3125, -0.25, -0.25, 0.3125, 0.25, 0.25}, -- NodeBox7
			{-0.25, -0.25, -0.3125, 0.25, 0.25, 0.3125}, -- NodeBox8
			{-0.25, -0.3125, -0.25, 0.25, 0.3125, 0.25}, -- NodeBox9
			{-0.1875, -0.1875, -0.375, 0.1875, 0.1875, 0.375}, -- NodeBox12
		}
	}
})
