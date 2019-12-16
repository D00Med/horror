
minetest.register_node("horror:glowsteel_block", {
	description = "Glow Steel",
	tiles = {{
	name="horror_glowsteel.png",
	animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.00},
	}},
	inventory_image = "horror_glowsteelinv.png",
	groups = {cracky = 2},
	sunlight_propagates = true,
	light_source = 2,
	paramtype = "light"
})
