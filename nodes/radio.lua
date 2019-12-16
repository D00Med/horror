
minetest.register_node("horror:radio", {
	description = "radio",
	tiles = {
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio_top.png",
		"horror_radio.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	on_rightclick = function()
		minetest.sound_play("Undersea_Garden",
		{gain = 0.5, max_hear_distance = 1, loop = false})
	end,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0, 0.125}, -- NodeBox1
			{-0.4375, 0, -0.0625, -0.25, 0.125, 0}, -- NodeBox2
			{-0.375, 0.0625, -0.0625, 0.375, 0.125, 0}, -- NodeBox3
		}
	}
})


-- minetest.register_abm({
	-- nodenames = {"horror:radio"},
	-- interval = 143.0,
	-- chance = 1,
	-- action = function(...)
		-- minetest.sound_play("Undersea_Garden",
		-- {gain = 2, max_hear_distance = 1, loop = false})
	-- end
-- })
