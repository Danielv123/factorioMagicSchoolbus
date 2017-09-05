require("util")

data:extend({
	{
		type = "recipe",
		name = "magicschoolbus",
		enabled = true,
		ingredients =
		{
			{"engine-unit", 8},
			{"iron-plate", 20},
			{"steel-plate", 5}
		},
		result = "magicschoolbus"
	},
	{
		type = "item-with-entity-data",
		name = "magicschoolbus",
		icon = "__magicschoolbus__/icon.png",
		icon_size = 512,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "b[personal-transport]-a[car]",
		place_result = "magicschoolbus",
		stack_size = 1
	},
	{
		type = "car",
		name = "magicschoolbus",
		icon = "__magicschoolbus__/icon.png",
		icon_size = 512,
		flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "magicschoolbus"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1000,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		energy_per_hit_point = 1,
		crash_trigger = crash_trigger(),
		resistances =
		{
			{
				type = "fire",
				percent = 50
			},
			{
				type = "impact",
				percent = 80,
				decrease = 50
			}
		},
		collision_box = {{-0.7*1.5, -1*2}, {0.7*1.5, 1*2}},
		selection_box = {{-0.9*1.5, -1.2*2}, {0.9*1.5, 1.2*2}},
		effectivity = 0.8,
		braking_power = "700kW",

		burner =
		{
			fuel_category = "chemical",
			effectivity = 0.6,
			fuel_inventory_size = 4,
			smoke =
			{
				{
					name = "car-smoke",
					deviation = {0.25, 0.25},
					frequency = 200,
					position = {0, 1.5},
					starting_frame = 0,
					starting_frame_deviation = 60
				}
			}
		},
		consumption = "400kW",
		friction = 0.001,
		light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "extra-high",
					flags = { "light" },
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -14},
				size = 2,
				intensity = 0.6,
				color = {r = 0.92, g = 0.77, b = 0.3}
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "extra-high",
					flags = { "light" },
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -14},
				size = 2,
				intensity = 0.6,
				color = {r = 0.92, g = 0.77, b = 0.3}
			}
		},
		render_layer = "object",
		animation =
		{
			layers =
			{
				{
					priority = "low",
					width = 512,
					height = 300,
					frame_count = 1,
					scale = 1,
					direction_count = 256,
					shift = {0, -0.1875},
					animation_speed = 8,
					max_advance = 0.2,
					stripes =
					{
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_0.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_1.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_2.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_3.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_4.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_5.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_6.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_7.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_8.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_9.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
						{
						 filename = "__magicschoolbus__/graphics/magicschoolbus_lr_10.png",
						 width_in_frames = 4,
						 height_in_frames = 6,
						},
					},
					hr_version =
					{
						priority = "low",
						width = 1024,
						height = 600,
						frame_count = 1,
						scale = 0.5,
						direction_count = 256,
						shift = {0, -0.359375},
						animation_speed = 8,
						max_advance = 0.2,
						stripes =
						{
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_0.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_1.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_2.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_3.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_4.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_5.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_6.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_7.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_8.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_9.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
							{
								filename = "__magicschoolbus__/graphics/magicschoolbus_hr_10.png",
								width_in_frames = 4,
								height_in_frames = 6
							},
						}
					}
				},
			}
		},
		turret_rotation_speed = 0.35 / 60,
		sound_no_fuel =
		{
			{
				filename = "__base__/sound/fight/car-no-fuel-1.ogg",
				volume = 0.6
			}
		},
		stop_trigger_speed = 0.2,
		stop_trigger =
		{
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/car-breaks.ogg",
						volume = 0.6
					}
				}
			}
		},
		sound_minimum_speed = 0.2;
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/car-engine.ogg",
				volume = 0.6
			},
			activate_sound =
			{
				filename = "__base__/sound/car-engine-start.ogg",
				volume = 0.6
			},
			deactivate_sound =
			{
				filename = "__base__/sound/car-engine-stop.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		rotation_speed = 0.01,
		weight = 2000,
		guns = {},
		inventory_size = 80
	},
})