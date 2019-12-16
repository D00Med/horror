
-- global variable
horror = {
	sounds = true,
	weird_stuff = false,

	--dark setting
	dark = true,
	dark_dark = true,

	--new style, set to false for the nodebox candle and candlestick
	new_style = true
}

local MP = minetest.get_modpath("horror")

-- register mobs
if minetest.get_modpath("mobs") then
	dofile(MP.."/mobs/arrows.lua")
	dofile(MP.."/mobs/hellbaron.lua")
	dofile(MP.."/mobs/centipede.lua")
	dofile(MP.."/mobs/spider.lua")
	dofile(MP.."/mobs/ghost.lua")
	dofile(MP.."/mobs/skeleton.lua")
	dofile(MP.."/mobs/cyberdemon.lua")
	dofile(MP.."/mobs/dragon.lua")
	dofile(MP.."/mobs/skull.lua")
	dofile(MP.."/mobs/cacodemon.lua")
	dofile(MP.."/mobs/mogall.lua")
	dofile(MP.."/mobs/shadow.lua")
	dofile(MP.."/mobs/mothman.lua")
	dofile(MP.."/mobs/manticore.lua")
	dofile(MP.."/mobs/imp.lua")
	dofile(MP.."/mobs/werewolf.lua")
	dofile(MP.."/mobs/mancubus.lua")
	dofile(MP.."/mobs/birdie.lua")
	dofile(MP.."/mobs/pinky.lua")
	dofile(MP.."/mobs/demon.lua")
	dofile(MP.."/mobs/armor.lua")
	dofile(MP.."/mobs/sam.lua")
end

-- common files
dofile(MP.."/flint_steel.lua")
dofile(MP.."/globalstep.lua")
dofile(MP.."/on_join.lua")
dofile(MP.."/on_death.lua")
dofile(MP.."/register_corner.lua")
dofile(MP.."/punch_entities.lua")


--nodes
--All nodeboxes were generated using NodeBoxEditor Windows
dofile(MP.."/nodes/blood.lua")
dofile(MP.."/nodes/oldstone.lua")
dofile(MP.."/nodes/candlestick.lua")
dofile(MP.."/nodes/candle.lua")
dofile(MP.."/nodes/fire.lua")
dofile(MP.."/nodes/lantern.lua")
dofile(MP.."/nodes/fountain.lua")
dofile(MP.."/nodes/flames.lua")
dofile(MP.."/nodes/head.lua")
dofile(MP.."/nodes/clock.lua")
dofile(MP.."/nodes/cactus.lua")
dofile(MP.."/nodes/bookshelf.lua")
dofile(MP.."/nodes/gargoyle.lua")
dofile(MP.."/nodes/gargoyle2.lua")
dofile(MP.."/nodes/sunorb.lua")
dofile(MP.."/nodes/pentagram.lua")
dofile(MP.."/nodes/portal.lua")
dofile(MP.."/nodes/blood_splatter.lua")
dofile(MP.."/nodes/glowsteel_block.lua")
dofile(MP.."/nodes/smashed_glass.lua")
dofile(MP.."/nodes/bones.lua")
dofile(MP.."/nodes/spiderweb.lua")
dofile(MP.."/nodes/lavastone.lua")
dofile(MP.."/nodes/animflesh.lua")
dofile(MP.."/nodes/furry.lua")
dofile(MP.."/nodes/cross.lua")
dofile(MP.."/nodes/tombstone.lua")
dofile(MP.."/nodes/mud.lua")
dofile(MP.."/nodes/bush.lua")
dofile(MP.."/nodes/stone.lua")
dofile(MP.."/nodes/spikes.lua")
dofile(MP.."/nodes/chain.lua")
dofile(MP.."/nodes/vines.lua")
dofile(MP.."/nodes/gloworb.lua")
dofile(MP.."/nodes/knife.lua")
dofile(MP.."/nodes/ring.lua")
dofile(MP.."/nodes/jar.lua")
dofile(MP.."/nodes/stand.lua")
dofile(MP.."/nodes/fence.lua")
dofile(MP.."/nodes/tree.lua")
dofile(MP.."/nodes/roach.lua")
dofile(MP.."/nodes/roach_spawner.lua")
dofile(MP.."/nodes/boards.lua")
dofile(MP.."/nodes/bottle.lua")
dofile(MP.."/nodes/phone.lua")
dofile(MP.."/nodes/shelf.lua")
dofile(MP.."/nodes/barrel.lua")
dofile(MP.."/nodes/keypad.lua")
dofile(MP.."/nodes/speaker.lua")
dofile(MP.."/nodes/table.lua")
dofile(MP.."/nodes/table_stone.lua")
dofile(MP.."/nodes/skull.lua")
dofile(MP.."/nodes/sam_head.lua")

dofile(MP.."/tools.lua")
dofile(MP.."/crafts.lua")
