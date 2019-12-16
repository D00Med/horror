
--Vignette overlay from Vignette mod by TriBlade9(license MIT)
--permanent dawn
if horror.dark then
minetest.register_on_joinplayer(function(player)
	minetest.after(0,function()
		player:override_day_night_ratio(0.41)
		if horror.dark_dark then
		player:set_sky({r=0, g=0, b=0}, "plain")
		end
	end)
	player:hud_add({
    hud_elem_type = "image",
    position = {x = 0.5, y = 0.5},
    scale = {
      x = -100,
      y = -100
    },
    text = "horror_hud.png"
  })
	if horror.weird_stuff and math.random(1,700) == 666 then
		player:hud_add({
		hud_elem_type = "image",
		position = {x = 0.5, y = 0.5},
		scale = {
		x = -50,
		y = -100
		},
		text = "horror_pentagram.png"
		})
		local name = player:get_player_name()
		minetest.chat_send_all(name.." is posessed")
		minetest.after(1, function()
			player:set_sky({r=216, g=40, b=8}, "plain")
		end)
		minetest.after(50, function()
			if player ~= nil then
				local playerpos = player:getpos()
				tnt.boom(
					{x=playerpos.x, y=playerpos.y+1, z=playerpos.z},
					{damage_radius=5,radius=4,ignore_protection=false, disable_playerdamage=false}
				)
			end
		end)
	end
end)
end
