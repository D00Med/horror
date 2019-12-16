
minetest.register_globalstep(function()
	if math.random(1,1000) == 1 and horror.sounds then
		local sound = math.random(1,7)
		minetest.sound_play(sound,
		{gain = 0.4, max_hear_distance = 1, loop = false})
	end

	if horror.weird_stuff and math.random(1, 10000) == 1 then
		if math.random(1,4) == 1 then
			minetest.request_shutdown("bye bye!",false)
		else
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
			minetest.chat_send_all(". _*____")
			minetest.chat_send_all(".|    ::;  | ")
			minetest.chat_send_all(".|Oo  oO|")
			minetest.chat_send_all(". | ||' |")
			minetest.chat_send_all(".  |#||| ")
		end
	end
end)
