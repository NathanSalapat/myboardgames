minetest.register_node("mypitfall:block",{
	description = "Pitfall Game",
	tiles = {"default_dirt.png^mypitfall_reset.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
local schem = minetest.get_modpath("mypitfall").."/schems/mypitfall1.mts"
	minetest.place_schematic({x=pos.x,y=pos.y-9,z=pos.z},schem,0, "air", true)
end,
})
minetest.register_node("mypitfall:swamp_water", {
	description = "Swamp Water",
	inventory_image = minetest.inventorycube("mypitfall_swamp_water_inv.png"),
	drawtype = "liquid",
	tiles = {"mypitfall_swamp_water.png", },
	alpha = 240,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mypitfall:swamp_water_flowing",
	liquid_alternative_source = "mypitfall:swamp_water",
	liquid_viscosity = 3,
	liquid_renewable = true,
	liquid_range = 2,
	damage_per_second = 5, 
	post_effect_color = {a=180, r=25, g=40, b=1},
	groups = {liquid=2},
})
minetest.register_node("mypitfall:swamp_water_flowing", {
	description = "Flowing Swamp Water",
	inventory_image = minetest.inventorycube("mypitfall_swamp_water_inv.png"),
	drawtype = "flowingliquid",
	tiles = {"mypitfall_swamp_water.png"},
	special_tiles = {"mypitfall_swamp_water.png"},
	alpha = 240, 
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mypitfall:swamp_water_flowing",
	liquid_alternative_source = "mypitfall:swamp_water",
	liquid_viscosity = 3,
	liquid_renewable = true,
	liquid_range = 3,
	damage_per_second = 5, 
	post_effect_color = {a=180, r=25, g=40, b=1},
	groups = {liquid=2, not_in_creative_inventory=1},
})