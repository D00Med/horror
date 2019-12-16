
minetest.register_node("horror:sunorb", {
	description = "sun orb",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"horror_orb.png"},
	inventory_image = "horror_orb.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 2000,
	alpha = 100,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {cracky=3,dig_immediate=3},
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name="horror:sunorb", param2=1})
		end
	end,
})
