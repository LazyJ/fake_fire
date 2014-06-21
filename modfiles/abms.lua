--[[

	I commented out this part because:
		1. water and lava buckets are disabled on some servers,
		2. putting out fire with water and especially lava would only make
		a big mess, and...

	As for 'realism':
		* C'mon... This is *fake* fire.
		* Torches have long been impervious to water.
		* Minetest creates surreal worlds so it's OK if some things aren't
		perfectly realistic.
 
	Besides, the fake-fire can be put out by punching it - simple and effective.
	~ LazyJ, 2014_03_14



-- water and lava puts out fake fire --
minetest.register_abm({
	nodenames = {"fake_fire:fake_fire"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		if minetest.env:find_node_near(pos, 1, {"default:water_source",
		"default:water_flowing","default:lava_source",
		"default:lava_flowing"}) then
		minetest.sound_play("fire_extinguish",
		{gain = 1.0, max_hear_distance = 20,})
		node.name = "air"
		minetest.env:set_node(pos, node)
		end
	end
})
--]]


-- Do I need an ABM for this? Can I add this to the node definition with an
-- on_construct or after_place_node?
-- Yes and no.
-- The on_construct worked but only once. When the leafdecay removed the smoke
-- no more was produced to replace it. So an ABM is needed to pull-off this
-- smoke effect.

-- APPEARING & DISAPPEARING SMOKE

	-- This makes the animated smoke appear above the fake-fire.
	-- The disappearing part is handled by the game engine's leafdecay which
	-- is defined in the group line of the smoke's node registration in
	-- the nodes.lua file.
	-- ~ LazyJ

minetest.register_abm({
	nodenames = {
				"fake_fire:fake_fire",
				"fake_fire:ice_fire",
				"fake_fire:chimney_top_stone",
				"fake_fire:chimney_top_sandstone"
				},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		if name == "air" or name == "fake_fire:smoke" then
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "fake_fire:smoke"
			and height < 7 do
				height = height+1
				pos.y = pos.y+2
			end
			if height < 7 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="fake_fire:smoke"})
				end
			end
		end
	end,
})

