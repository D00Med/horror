
minetest.register_node("horror:roach", {
	description = "cockroach",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"horror_roach.png"},
	inventory_image = "horror_roach.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3},
	on_use = minetest.item_eat(2)
})
