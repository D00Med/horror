
if horror.new_style == false then
minetest.register_node("horror:candle", {
	description = "candle",
	tiles = {
		"horror_candle_top.png",
		"horror_candle_base.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png",
		"horror_candle.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 20,
	groups = {cracky=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.1875, 0.125}, -- NodeBox1
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125}, -- NodeBox2
			{-0.125, -0.4375, -0.4375, 0.0625, -0.25, -0.25}, -- NodeBox3
			{-0.0625, 0.1875, -0.0625, 0.0625, 0.3125, 0.0625}, -- NodeBox5
		}
	}
})
else
minetest.register_node("horror:candle", {
	description = "Candle",
	drawtype = "torchlike",
	tiles = {{
		name = "horror_candle_anim.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 1.00},
	}},
	inventory_image = "horror_candle_inv.png",
	wield_image = "horror_candle_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 15,
	groups = {cracky=1, oddly_breakable_by_hand=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.3, 0.25},
	}
	},
})
end
