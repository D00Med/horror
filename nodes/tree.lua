
minetest.register_node("horror:tree", {
	description = "Dead tree",
	drawtype = "plantlike",
	tiles = {"horror_tree.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true,
	sunlight_propagates = true,
	inventory_image = "horror_tree.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {choppy=1, oddly_breakable_by_hand=1, flammable=1, attatched_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 1, 0.3}
	},
	drop = "default:wood",
	walkable = true,
})
