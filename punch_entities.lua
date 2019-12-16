
--ABMs

local punch_entities = {}
punch_entities["horror:ghost"] = true
punch_entities["horror:centipede"] = true
punch_entities["horror:spider"] = true
punch_entities["horror:demon"] = true
punch_entities["horror:pinky"] = true
punch_entities["horror:skull"] = true
punch_entities["horror:mancubus"] = true
punch_entities["horror:manticore"] = true
punch_entities["horror:shadow"] = true
punch_entities["horror:cacodemon"] = true
punch_entities["horror:mogall"] = true
punch_entities["creatures:zombie"] = true


minetest.register_abm({
	nodenames = {"horror:sunorb", "horror:gloworb"},
	interval = 5,
	chance = 1,
	action = function(pos)
		local objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 5)
			for _, obj in pairs(objs) do
				if obj:get_luaentity() ~= nil then
					local ent = obj:get_luaentity().name
					if punch_entities[ent] then
						obj:punch(obj, 0.5, {
							full_punch_interval=0.5,
							damage_groups={fleshy=4},
						}, nil)
					end
				end
			end
	end
})
