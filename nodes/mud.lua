
minetest.register_node("horror:mud", {
	description = "solid mud",
	tiles = {
		"horror_mud.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {crumbly=1, falling_node=1}
})


minetest.register_node("horror:mud_liquid", {
	description = "mud",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:mud_liquid",
	liquid_alternative_source = "horror:mud_liquid",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"horror_mud.png"
	},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {crumbly=1, liquid=1, falling_node=1}
})
