

--alternate style nodes

if horror.new_style == false then
minetest.register_node("horror:candlestick", {
	description = "Candlestick",
	tiles = {
		"horror_candlestick_top.png",
		"horror_metal.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png",
		"horror_candlestick_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.4375, 0.25}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox2
			{-0.125, 0, 0, 0.125, 0.0625, 0.0625}, -- NodeBox4
			{-0.25, -0.0625, 0, -0.125, 0, 0.0625}, -- NodeBox5
			{0.125, -0.0625, 0, 0.25, 0, 0.0625}, -- NodeBox6
			{-0.3125, 0, 0, -0.25, 0.0625, 0.0625}, -- NodeBox7
			{0.25, 0, 0, 0.3125, 0.0625, 0.0625}, -- NodeBox8
			{-0.4375, -0.0625, -0.0625, -0.3125, 0.375, 0.0625}, -- NodeBox9
			{0.3125, -0.0625, -0.0625, 0.4375, 0.375, 0.0625}, -- NodeBox10
			{-0.125, -0.25, -0.125, 0.125, -0.125, 0.125}, -- NodeBox11
			{-0.125, 0.125, -0.0625, 0.125, 0.1875, 0.0625}, -- NodeBox16
		}
	}
})
else
minetest.register_node("horror:candlestick", {
	description = "Candlestick",
	drawtype = "torchlike",
	tiles = {{
		name = "horror_candlestick_anim.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.00},
	}},
	inventory_image = "horror_candlestick.png",
	wield_image = "horror_candlestick.png",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 20,
	groups = {snappy=1, oddly_breakable_by_hand=1, dig_immediate=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.4375, 0.25},
	}
	},
})
end
