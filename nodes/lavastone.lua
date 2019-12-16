
minetest.register_node("horror:lavastone", {
	description = "lavastone",
	sunlight_propagates = true,
	light_source = 10,
	tiles = {{
	name="horror_lavastone.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}},
	inventory_image = "horror_fire_inv.png",
	wield_image = "horror_fire_inv.png",
	groups = {cracky=1}
})
