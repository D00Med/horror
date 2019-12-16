

minetest.register_node("horror:smashed_glass", {
	description = "Smashed Glass",
	tiles = {"default_glass.png^horror_glass_cracks.png",
	},
	drawtype = "glasslike",
	inventory_image = "default_glass.png^horror_glass_cracks.png",
	groups = {cracky = 2, oddly_breakable_by_hand=1, dig_immediate=3},
	paramtype = "light",
	sounds = default.node_sound_glass_defaults()
})
