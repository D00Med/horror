

minetest.register_node("horror:spikes", {
	description = "spikes",
	tiles = {
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes.png",
		"horror_spikes.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky=1, falling_node=1},
	damage_per_second = 1,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.125, -0.375, 0.375, -0.0625}, -- NodeBox1
			{0.125, -0.5, 0.0625, 0.1875, 0.1875, 0.125}, -- NodeBox2
			{-0.0625, -0.5, -0.1875, 0, 0.5, -0.125}, -- NodeBox3
			{-0.25, -0.5, 0.1875, -0.1875, 0, 0.25}, -- NodeBox4
			{0.3125, -0.5, -0.3125, 0.375, 0.25, -0.25}, -- NodeBox5
			{-0.0625, -0.5, -0.4375, 0, 0.0625, -0.375}, -- NodeBox6
		}
	}
})
