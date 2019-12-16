
--craftitems

minetest.register_craftitem("horror:ring", {
	description = "Ghosts Ring",
	inventory_image = "horror_ring.png"
})

--crafting
minetest.register_craft({
	output = 'horror:lantern',
	recipe = {
		{'default:glass'},
		{'default:torch'},
		{'default:glass'},
	}
})

minetest.register_craft({
	output = 'horror:skull',
	recipe = {
		{'bones:bones'},
	}
})

minetest.register_craft({
	output = 'horror:candlestick',
	recipe = {
		{'', 'default:torch', ''},
		{'default:torch', 'group:stick', 'default:torch'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'horror:candle',
	recipe = {
		{'', '', ''},
		{'', 'default:torch', ''},
		{'', 'default:copper_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:bookshelf',
	recipe = {
		{'default:bookshelf'},
	}
})

minetest.register_craft({
	output = 'horror:cleaver',
	recipe = {
		{'group:stick', 'default:steel_ingot', ''},
		{'group:stick', 'default:steel_ingot', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:rapier',
	recipe = {
		{'default:steel_ingot', ''},
		{'default:steel_ingot', ''},
		{'group:stick', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'horror:pitchfork',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'horror:knife',
	recipe = {
		{'', 'group:stick', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:eye_jar',
	recipe = {
		{'', '', ''},
		{'', 'default:glass', ''},
		{'', 'default:glass', ''},
	}
})

minetest.register_craft({
	output = 'horror:roach_spawner',
	recipe = {
		{'group:wood', 'group:wood', ''},
		{'group:wood', '', ''},
		{'group:wood', 'group:wood', ''},
	}
})

minetest.register_craft({
	output = 'horror:radio',
	recipe = {
		{'group:stick', '', ''},
		{'default:steel_ingot', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:clock',
	recipe = {
		{'', '', ''},
		{'', 'group:stick', ''},
		{'', 'default:wood', ''},
	}
})

minetest.register_craft({
	output = 'horror:tombstone',
	recipe = {
		{'', '', ''},
		{'', 'default:stone', ''},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:cross',
	recipe = {
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:obsidian_corner 4',
	recipe = {
		{'', '', ''},
		{'default:obsidian', 'default:obsidian', ''},
		{'default:obsidian', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:wood_corner 4',
	recipe = {
		{'', '', ''},
		{'default:wood', 'default:wood', ''},
		{'default:wood', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:stone_corner 4',
	recipe = {
		{'', '', ''},
		{'default:stone', 'default:stone', ''},
		{'default:stone', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:oldstone_corner 4',
	recipe = {
		{'', '', ''},
		{'horror:stone', 'horror:stone', ''},
		{'horror:stone', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:boards 4',
	recipe = {
		{'default:wood', '', 'default:wood'},
		{'', 'default:wood', ''},
		{'default:wood', '', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'horror:table 4',
	recipe = {
		{'group:wood', 'group:wood', 'default:wood'},
		{'group:wood', '', ''},
		{'group:wood', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:table_stone 4',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
		{'default:stone', '', ''},
		{'default:stone', '', ''},
	}
})

minetest.register_craft({
	type = 'cooking',
	output = 'default:coal_lump',
	recipe = 'default:tree',
})

minetest.register_craft({
	type = 'cooking',
	output = 'horror:stone',
	recipe = 'default:stone',
})

minetest.register_craft({
	output = 'horror:shelf',
	recipe = {
		{'', '', ''},
		{'group:wood', 'group:wood', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'horror:gargoyle2',
	recipe = {
		{'', '', ''},
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'horror:stand',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
		{'', 'default:stone', ''},
		{'default:stone', 'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'horror:fountain',
	recipe = {
		{'', '', ''},
		{'default:stone', 'bucket:bucket_water', ''},
		{'default:stone', '', ''},
	}
})


minetest.register_craft({
	output = 'horror:lavastone 10',
	recipe = {
		{'', '', ''},
		{'', 'bucket:bucket_lava', ''},
		{'', 'default:stone', ''},
	}
})

minetest.register_craft({
	output = 'horror:chain 6',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'horror:vines 2',
	recipe = {
		{'', '', ''},
		{'default:leaves', 'default:leaves', ''},
		{'', '', ''},
	}
})
