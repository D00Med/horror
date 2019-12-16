
--blood
minetest.register_node("horror:blood_flowing", {
	description = "blood_source",
	inventory_image = minetest.inventorycube("horror_bloodsource.png"),
	drawtype = "flowingliquid",
	tiles = {"horror_bloodsource.png"},
	special_tiles = {
		{
			image="horror_animblood.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}
		},
		{
			image="horror_animblood.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}
		},
	},
	alpha = 190,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 2,
	liquidtype = "flowing",
	liquid_alternative_flowing = "horror:blood_flowing",
	liquid_alternative_source = "horror:bloodsource",
	liquid_viscosity = 1,
	freezemelt = "default:snow",
	post_effect_color = {a=70, r=200, g=70, b=70},
	groups = {liquid=3, puts_out_fire=1, not_in_creative_inventory=1, freezes=1, melt_around=1},
})

minetest.register_node("horror:bloodsource", {
	description = "Bloodsource",
	inventory_image = minetest.inventorycube("horror_bloodsource.png"),
	drawtype = "liquid",
	tiles = {
		{name="horror_animblood.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="horror_animblood.png",
			animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1},
			backface_culling = false,
		}
	},
	alpha = 190,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 2,
	liquidtype = "source",
	liquid_alternative_flowing = "horror:blood_flowing",
	liquid_alternative_source = "horror:bloodsource",
	liquid_viscosity = 1,
	freezemelt = "default:ice",
	post_effect_color = {a=70, r=200, g=70, b=70},
	groups = {liquid=3, puts_out_fire=1, freezes=1}
})

--bucket
if minetest.get_modpath("bucket") then
bucket.register_liquid(
	"horror:bloodsource",
	"horror:blood_flowing",
	"horror:bucket_blood",
	"bucket_blood.png",
	"Blood Bucket"
)
end
