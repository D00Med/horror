
minetest.register_node("horror:portal", {
	description = "portal",
	drawtype = "signlike",
	visual_scale = 3.0,
	tiles = {"horror_portal.png"},
	inventory_image = "horror_portal.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	light_source = 50,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	on_construct = function(pos)
		minetest.after(1, function()
		minetest.env:add_entity(pos, "horror:pinky")
		minetest.remove_node(pos)
		end)
	end,
	groups = {cracky=3,dig_immediate=3, not_in_creative_inventory=1},
})
