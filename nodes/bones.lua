
minetest.register_node("horror:bones", {
	description = "bonepile",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	tiles = {
		"horror_bones.png"
	},
	groups = {cracky=1}
})
