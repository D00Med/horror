
--tools
minetest.register_tool("horror:cleaver", {
	description = "cleaver",
	inventory_image = "horror_cleaver.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=45, maxlevel=1},
		},
		damage_groups = {fleshy = 6},
	},
})

minetest.register_tool("horror:rapier", {
	description = "Rapier",
	inventory_image = "horror_rapier.png",
	wield_scale = {x = 1.5, y = 1.5, z = 0.6},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy = 9},
	},
})

minetest.register_tool("horror:pitchfork", {
	description = "Pitchfork",
	inventory_image = "horror_pitchfork.png",
	wield_scale = {x = 1.5, y = 1.5, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 2.9,
		max_drop_level = 0,
		groupcaps = {
			fleshy = {times={[3]=1.35}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy = 12},
	},
})
