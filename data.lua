-- The magic school bus is the base game car with its own sprites and stats, so it keeps up with the car's sounds,
-- triggers and new fields between Factorio versions.

local stripes = {}
for i = 0, 10 do
	stripes[#stripes + 1] = {
		filename = "__magicschoolbus__/graphics/magicschoolbus_hr_" .. i .. ".png",
		width_in_frames = 4,
		height_in_frames = 6,
	}
end

local item = table.deepcopy(data.raw["item-with-entity-data"]["car"])
item.name = "magicschoolbus"
item.icon = "__magicschoolbus__/icon.png"
item.icon_size = 512
item.order = "b[personal-transport]-a[car]-b[magicschoolbus]"
item.place_result = "magicschoolbus"

local car = table.deepcopy(data.raw["car"]["car"])
car.name = "magicschoolbus"
car.icon = "__magicschoolbus__/icon.png"
car.icon_size = 512
car.flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"}
car.minable = {mining_time = 1, result = "magicschoolbus"}
car.max_health = 1000
car.resistances = {
	{type = "fire", percent = 50},
	{type = "impact", percent = 80, decrease = 50},
}
car.collision_box = {{-1.05, -2}, {1.05, 2}}
car.selection_box = {{-1.35, -2.4}, {1.35, 2.4}}
car.effectivity = 0.8
car.braking_force = (700 * 1000) / 60
car.energy_source.effectivity = 0.6
car.energy_source.fuel_inventory_size = 4
car.consumption = "400kW"
car.friction_force = 0.001
car.animation = {
	layers = {
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
			stripes = stripes,
		},
	},
}
-- the car's own light, turret, gun and reflection sprites don't fit the bus
car.light_animation = nil
car.turret_animation = nil
car.water_reflection = nil
car.guns = {}
car.rotation_speed = 0.01
car.weight = 2000

data:extend({
	{
		type = "recipe",
		name = "magicschoolbus",
		enabled = true,
		energy_required = 2,
		ingredients = {
			{type = "item", name = "engine-unit", amount = 8},
			{type = "item", name = "iron-plate", amount = 20},
			{type = "item", name = "steel-plate", amount = 5},
		},
		results = {{type = "item", name = "magicschoolbus", amount = 1}},
	},
	item,
	car,
})
