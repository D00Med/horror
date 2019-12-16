
--corners

function horror.register_corner(name, desc, text, breakeable_by_hand)

minetest.register_node("horror:"..name.."_corner", {
	description = desc,
	tiles = {
		text,
		text,
		text,
		text,
		text,
		text
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0.0625, 0.4375, 0.5}, -- NodeBox1
			{-0.0625, 0.4375, -0.5, 0.0625, 0.5, 0.5}, -- NodeBox4
			{-0.0625, 0.0625, 0.3125, 0.0625, 0.3125, 0.4375}, -- NodeBox5
			{-0.0625, 0.3125, 0.125, 0.0625, 0.4375, 0.3125}, -- NodeBox6
			{-0.0625, 0.375, -0.4375, 0.0625, 0.4375, -0.0625}, -- NodeBox7
			{-0.0625, -0.4375, 0.375, 0.0625, -0.125, 0.4375}, -- NodeBox8
			{-0.0625, 0.25, 0.25, 0.0625, 0.3125, 0.3125}, -- NodeBox9
			{-0.0625, 0.25, -0.125, 0.0625, 0.3125, 0.1875}, -- NodeBox10
			{-0.0625, -0.1875, 0.25, 0.0625, 0.1875, 0.3125}, -- NodeBox11
			{-0.0625, 0.125, -0.0625, 0.0625, 0.25, 0.125}, -- NodeBox12
			{-0.0625, -0.0625, 0.125, 0.0625, 0.125, 0.25}, -- NodeBox13
			{-0.0625, 0.0625, 0.0625, 0.0625, 0.125, 0.125}, -- NodeBox14
			{-0.0625, -0.3125, 0.3125, 0.0625, -0.125, 0.375}, -- NodeBox15
			{-0.0625, 0.3125, -0.3125, 0.0625, 0.375, -0.0625}, -- NodeBox16
		}
	},
	groups = {cracky=3, oddly_breakable_by_hand=breakeable_by_hand},
})
end


horror.register_corner("oldstone", "Old stone corner", "horror_stone.png", 0)
horror.register_corner("stone", "Stone corner", "default_stone.png", 0)
horror.register_corner("wood", "Wooden corner", "default_wood.png", 1)
horror.register_corner("obsidian", "Obsidian corner", "default_obsidian.png", 0)
