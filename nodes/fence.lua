minetest.register_node("horror:fence", {
	description = "spike_fence",
	tiles = {
		"blank.png",
		"blank.png",
		"horror_spikes_side.png",
		"horror_spikes_side.png",
		"horror_spikes.png",
		"horror_spikes.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	damage_per_second = 1,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0}, -- NodeBox1
		}
	}
})
