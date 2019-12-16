

minetest.register_node("horror:animflesh", {
	description = "undeadblock",
	tiles = {{
	name="flesh_anim.png",
	animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00},
	}},
	inventory_image = "horror_flesh.png",
	wield_image = "horror_flesh.png",
	groups = {fleshy=1, dig_immediate=3, oddly_breakable_by_hand=1}
})
