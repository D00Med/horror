
minetest.register_node("horror:blood_splatter", {
	description = "blood patch",
	drawtype = "signlike",
	tiles = {"horror_bloodsplat.png"},
	inventory_image = "horror_bloodsplat.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	groups = {cracky=3,dig_immediate=3},
})
