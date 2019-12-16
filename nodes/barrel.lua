

minetest.register_node("horror:barrel", {
	description = "barrel",
	tiles = {
		"horror_barrel_top.png",
		"horror_barrel_top.png",
		"horror_barrel.png",
		"horror_barrel.png",
		"horror_barrel.png",
		"horror_barrel.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {choppy=2, oddly_breakable_by_hand=1},
	drop = {
		items = {
			{items = {'farming:bread'}, rarity = 1},
			{items = {'farming:bread'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:apple'}, rarity = 1},
			{items = {'default:coal_lump'}, rarity = 1},
			{items = {'default:coal_lump'}, rarity = 1},
		}
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox2
			{-0.4375, -0.5, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox3
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox4
		}
	}
})
