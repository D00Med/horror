
minetest.register_node("horror:pentagram", {
	description = "pentagram",
	drawtype = "signlike",
	visual_scale = 3.0,
	tiles = {"horror_pentagram.png"},
	inventory_image = "horror_pentagram.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	light_source = 50,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	on_rightclick = function(pos, node, _)
	if minetest.get_modpath("mobs") then
		minetest.after(0.5, function()
		minetest.set_node(pos, {name="horror:portal", param2=node.param2})
		minetest.add_particlespawner(
			25, --amount
			1, --time
			{x=pos.x-1, y=pos.y, z=pos.z-1}, --minpos
			{x=pos.x+1, y=pos.y, z=pos.z+1}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=-0.5,y=1,z=-0.5}, --minacc
			{x=0.5,y=1,z=0.5}, --maxacc
			1, --minexptime
			1.5, --maxexptime
			5, --minsize
			6, --maxsize
			false, --collisiondetection
			"horror_flame2.png" --texture
		)
		end)
		end
	end,
	groups = {cracky=3,dig_immediate=3},
})
