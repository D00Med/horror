
minetest.register_node("horror:clock", {
	description = "clock",
	tiles = {
		"horror_clock_top.png",
		"horror_clock_top.png",
		"horror_clock_side.png",
		"horror_clock_side.png",
		"horror_clock_back.png",
		"horror_clock_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.25, 0.375, 0.4375, 0.25}, -- NodeBox1
			{-0.3125, 0.25, -0.1875, 0.3125, 0.5, 0.1875}, -- NodeBox2
			{-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125}, -- NodeBox3
		}
	},
})

minetest.register_abm({
	nodenames = {"horror:clock"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		minetest.sound_play("clock",
		{gain = 3, max_hear_distance = 1, loop = false})
		local meta = minetest.get_meta(pos)
		local time1 = minetest.get_timeofday()*24000
		meta:set_string("infotext", "time:"..time1)
		if math.random(1,500) then
		minetest.sound_play("clock_strikes_twelve",
		{gain = 1, max_hear_distance = 1, loop = false})
		end
	end
})
