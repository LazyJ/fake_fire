-- FLAME TYPES

-- SMOKEY FIRE (TRIGGERS SMOKE ABM)
minetest.register_node("fake_fire:fake_fire", {
    description = "Smokey, Fake Fire",
	tiles = {
		{name="fake_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	is_ground_content = true,
   	inventory_image = 'fake_fire.png',
	wield_image = {
		{name="fake_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	drawtype = "plantlike",
	 -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
	waving = 1,
	light_source = 14,
	-- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
	-- been disabled for a reason. I don't want griefers lighting players on
	-- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
	--groups = {dig_immediate=3,attached_node=1},
	groups = {
				oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
				not_in_creative_inventory=1
			},
	paramtype = "light",
	walkable = false,
	drop = "",  -- So fire won't return to the inventory. ~ LazyJ
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
		-- This swaps the smoky version with the smokeless version. ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:smokeless_fire"})
	end
})



-- SMOKELESS FIRE (DOES NOT TRIGGER SMOKE ABM)
minetest.register_node("fake_fire:smokeless_fire", {
    description = "Smokeless, Fake Fire",
	tiles = {
		{name="fake_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	is_ground_content = true,
   	inventory_image = 'fake_fire.png',
	wield_image = {
		{name="fake_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	drawtype = "plantlike",
	 -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
	waving = 1,
	light_source = 14,
	-- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
	-- been disabled for a reason. I don't want griefers lighting players on
	-- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
	--groups = {dig_immediate=3,attached_node=1},
	groups = {
				oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
				not_in_creative_inventory=1
			},
	paramtype = "light",
	walkable = false,
	drop = "",  -- So fire won't return to the inventory. ~ LazyJ
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
		-- This swaps the smokeless version with the smoky version. ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:fake_fire"})
	end
})



-- SMOKEY ICE FIRE (TRIGGERS SMOKE ABM)
minetest.register_node("fake_fire:ice_fire", {
    description = "Smoky, Fake, Ice Fire",
	tiles = {
		{name="ice_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	is_ground_content = true,
   	inventory_image = 'ice_fire.png',
	wield_image = {
		{name="ice_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	drawtype = "plantlike",
	 -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
	waving = 1,
	light_source = 14,
	-- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
	-- been disabled for a reason. I don't want griefers lighting players on
	-- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
	--groups = {dig_immediate=3,attached_node=1},
	groups = {
				oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
				not_in_creative_inventory=1
			},
	paramtype = "light",
	walkable = false,
	drop = "",  -- So fire won't return to the inventory. ~ LazyJ
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
		-- This swaps the smoky version with the smokeless version. ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:smokeless_ice_fire"})
	end
})



-- SMOKELESS ICE FIRE (DOES NOT TRIGGER SMOKE ABM)
minetest.register_node("fake_fire:smokeless_ice_fire", {
    description = "Smokeless, Fake, Ice Fire",
	tiles = {
		{name="ice_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	is_ground_content = true,
   	inventory_image = 'ice_fire.png',
	wield_image = {
		{name="ice_fire_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1.5}},
		},
	drawtype = "plantlike",
	 -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
	waving = 1,
	light_source = 14,
	-- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
	-- been disabled for a reason. I don't want griefers lighting players on
	-- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
	--groups = {dig_immediate=3,attached_node=1},
	groups = {
				oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
				not_in_creative_inventory=1
			},
	paramtype = "light",
	walkable = false,
	drop = "",  -- So fire won't return to the inventory. ~ LazyJ
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
		-- This swaps the smokeless version with the smoky version. ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:ice_fire"})
	end
})



-- FLINT and STEEL

minetest.register_tool("fake_fire:flint_and_steel", {
	description = "Flint and steel",
	inventory_image = "flint_and_steel.png",
	liquids_pointable = false,
	stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={flamable = {uses=65, maxlevel=1},
		}
	},
	on_use = function(itemstack, user, pointed_thing)
	-- This next section took me many hours of keyboard bashing to figure out.
	-- The lua documentation and examples for Minetest is terrible.
	-- ~ LazyJ, 2014_06_21
	
		if
			 -- A *node*, not a player or sprite. ~ LazyJ
			pointed_thing.type == "node"
			
			-- These next two "and nots" tell Minetest not to put the red flame
			-- on snow and ice stuff. This "string" bit was the workable
			-- solution that took many hours, over several day, to finally
			-- come around to. It's a search for any node name that contains
			-- whatever is between the double-quotes, ie. "snow" or "ice". I
			-- had been trying to identify the nodes by their group properties
			-- and I couldn't figure out how to do it. The clue for the "string"
			-- came from Blockmen's "Landscape" mod.
			--  ~ LazyJ
			and not
			string.find(minetest.get_node(pointed_thing.under).name, "snow")
			and not
			string.find(minetest.get_node(pointed_thing.under).name, "ice")
			and 
			minetest.get_node(pointed_thing.above).name == "air" then
			minetest.set_node(pointed_thing.above,
			{name="fake_fire:smokeless_fire"})
			end

	-- This next part sets the ice flame.  ~ LazyJ
		
		if
			pointed_thing.type == "node"
			and
			string.find(minetest.get_node(pointed_thing.under).name, "snow")
			or  -- "or" is an important change of requirements. ~ LazyJ
			string.find(minetest.get_node(pointed_thing.under).name, "ice")
			and 
			minetest.get_node(pointed_thing.above).name == "air" then
			minetest.set_node(pointed_thing.above,
			{name="fake_fire:smokeless_ice_fire"})						
		end
			minetest.sound_play("",
			{gain = 1.0, max_hear_distance = 2,})
			itemstack:add_wear(65535/65)
			return itemstack
	end
}) -- Closes the flint and steel tool registration



--[[
	
	SOME LESSONS LEARNED (and keeping this because I'll forget)
	
	flint_and_steel is registered as a tool. Tools do not materialize something
	like placing a block (on_construct) makes that block appear. Tools are
	*used* so "on_use" works but not "on_construct".

	on_rightclick is meant for the code of the thing being clicked on, not the
	code of the thing doing the clicking.
	
	~ LazyJ

--]]



-- ANIMATED, RISING, DISPAPPEARING SMOKE

--[[

	These next two sections of code are a real bonus that I figured out how
	to pull-off. ;)

	The first section creates animated smoke. Trying to figure out how to make
	the animation appear to go upward was a headache.

	The second section places the animated smoke *only* above the fake-fire
	*if* there is nothing but air straight above the fake-fire. I also made
	the smoke skip a space so it looks more like puffs of smoke and made it
	stretch high enough to be used in chimneys. For large builds, a second
	fake-fire will have to be hidden close to the top of the chimney so the
	smoke will be visible. The smoke also emmits a low-level light.

	Yup, I'm proud of this little addition I've made to Semmett9's mod. :D

	~ LazyJ, 2014_03_15

--]]



minetest.register_node("fake_fire:smoke", {
	description = "Smoke",
	drawtype = "plantlike",
	waving = 1,
	light_source = 3, -- Just a little light to glow at night. ~ LazyJ
	tiles = {
		{
			image="fake_fire_smoke_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16,
			length=2.0}
		},
	},
	use_texture_alpha = true,
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	drop = "",  -- So smoke won't return to the inventory ~ LazyJ
	  -- The leafdecay makes the smoke disappear if the flame is removed.
	  -- The catch is, because it depends on the leafdecay ABM, if the smoke is
	  -- next to a tree the smoke won't disappear if the flame is removed.
	  -- Eh, minor issue not worth fretting over.
	  -- ~ LazyJ, 2014_03_16
	groups = {leafdecay=1, dig_immediate=3, not_in_creative_inventory=1},
	--sounds = minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
	--	max_hear_distance = 5,})
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
	end
})



-- EMBERS

minetest.register_node("fake_fire:embers", {
    description = "Glowing Embers",
	tiles = {
		{name="embers_animated.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=2}},
		},
	inventory_image = minetest.inventorycube('fake_fire_embers.png'),
	is_ground_content = true,
	light_source = 9,
	 -- It's almost soft, brittle charcoal. ~ LazyJ
	groups = {choppy=3, crumbly=3, oddly_breakable_by_hand=3},
	paramtype = "light",
	 -- You never know when a creative builder may use the screwdriver or
	 -- position to create a subtle effect that makes their creation just
	 -- that little bit nicer looking. ~ Lazyj
	paramtype2 = "facedir",
	walkable = true,
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
})



-- CHIMNEY TOPS

	-- Stone (cool tone) to go with cool colors.
	-- Sandstone (warm tone) to go with warm colors.

-- CHIMNEY TOP - STONE
minetest.register_node("fake_fire:chimney_top_stone", {
	description = "Chimney Top - Stone",
	tiles = {"chimney_top_stone.png", "default_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
	drop = "fake_fire:smokeless_chimney_top_stone",
	drawtype = "nodebox",
	node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	on_punch = function (pos,node,puncher)
		-- This swaps the smokeless version with the smoky version when punched.
		-- ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:smokeless_chimney_top_stone"})
	end
})



-- CHIMNEY TOP - SANDSTONE
minetest.register_node("fake_fire:chimney_top_sandstone", {
	description = "Chimney Top - Sandstone",
	tiles = {"chimney_top_sandstone.png", "default_sandstone.png"},
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
	drop = "fake_fire:smokeless_chimney_top_sandstone",
	drawtype = "nodebox",
	node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	on_punch = function (pos,node,puncher)
		-- This swaps the smokeless version with the smoky version when punched.
		-- ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:smokeless_chimney_top_sandstone"})
	end
})



-- SMOKELESS CHIMNEY TOPS

	-- Some players may want a chimney top *without* smoke. This is the node
	-- that will be craftable. To get the smoking variety, simply punch the
	-- node. Same approach is used with the smoking and non-smoking flames.
	-- ~ LazyJ
	
-- SMOKELESS CHIMNEY TOP - STONE
minetest.register_node("fake_fire:smokeless_chimney_top_stone", {
	description = "Chimney Top - Stone",
	tiles = {"chimney_top_stone.png", "default_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	on_punch = function (pos,node,puncher)
		-- This swaps the smokeless version with the smoky version when punched.
		-- ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:chimney_top_stone"})
	end
})



-- SMOKELESS CHIMNEY TOP - SANDSTONE
minetest.register_node("fake_fire:smokeless_chimney_top_sandstone", {
	description = "Chimney Top - Sandstone",
	tiles = {"chimney_top_sandstone.png", "default_sandstone.png"},
	is_ground_content = true,
	groups = {cracky=3, oddly_breakable_by_hand=1},
	paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	on_punch = function (pos,node,puncher)
		-- This swaps the smokeless version with the smoky version when punched.
		-- ~ LazyJ
		minetest.set_node(pos, {name = "fake_fire:chimney_top_sandstone"})
	end
})
