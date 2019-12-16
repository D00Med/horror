

minetest.register_node("horror:bookshelf", {
	description = "Bookshelf (fake)",
	tiles = {"default_wood.png", "default_wood.png", "default_bookshelf.png"},
	is_ground_content = false,
	walkable = false,
	drop = "default:bookshelf",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})
