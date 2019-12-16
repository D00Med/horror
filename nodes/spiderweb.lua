minetest.register_node("horror:spiderweb", {
	description = "spiderweb",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:spiderweb",
	liquid_alternative_source = "horror:spiderweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_spiderweb.png"
	},
	inventory_image = "horror_spiderweb.png",
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, dig_immediate=1}
})



minetest.register_node("horror:spiderweb_decaying", {
	description = "spiderweb",
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:spiderweb",
	liquid_alternative_source = "horror:spiderweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_spiderweb.png"
	},
	drop = "horror:spiderweb",
	inventory_image = "horror_spiderweb.png",
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, not_in_creative_inventory=1, leafdecay=1}
})
