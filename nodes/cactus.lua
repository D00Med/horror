
minetest.register_node("horror:cactus", {
	description = "Prickly Pear",
	drawtype = "plantlike",
	tiles = {"horror_cactus.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true,
	sunlight_propagates = true,
	inventory_image = "horror_cactus.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {choppy=1, oddly_breakable_by_hand=1, flammable=1, falling_node=1},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1, 0.5}
	},
	damage_per_second = 1,
	walkable = false,
})

minetest.register_abm({
	nodenames = {"horror:cactus"},
	interval = 10,
	chance = 150,
	action = function(pos)
		local num = math.random(1,4)
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" or
			minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "horror:cactus" then
			minetest.env:set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="horror:cactus"})
			minetest.env:remove_node(pos)
		end
		if num == 1 then
			if minetest.get_node({x=pos.x-2, y=pos.y, z=pos.z}).name == "air" then
				minetest.env:set_node({x=pos.x-2, y=pos.y, z=pos.z}, {name="horror:cactus"})
			end
		elseif num == 2 then
			if minetest.get_node({x=pos.x+2, y=pos.y, z=pos.z}).name == "air" then
				minetest.env:set_node({x=pos.x+2, y=pos.y, z=pos.z}, {name="horror:cactus"})
			end
		elseif num == 3 then
			if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-2}).name == "air" then
				minetest.env:set_node({x=pos.x, y=pos.y, z=pos.z-2}, {name="horror:cactus"})
			end
		elseif num == 4 then
			if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+2}).name == "air" then
				minetest.env:set_node({x=pos.x, y=pos.y, z=pos.z+2}, {name="horror:cactus"})
			end
		end
	end
})
