-- 248k assemblings
local fluid_boxes = {
    {
        production_type = "input",
        pipe_picture = assemblerkpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -2 } } },
        secondary_draw_orders = { north = -1 },
    },
    {
        production_type = "output",
        pipe_picture = assemblerkpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } },
        secondary_draw_orders = { north = -1 },
    },
    off_when_no_fluid_recipe = true,
}

local crafting_categories = {
    "basic-crafting",
    "crafting",
    "advanced-crafting",
    "crafting-with-fluid",
    "smelting-crafting",
}

data.raw["assembling-machine"]["fi_crafter_entity"].fluid_boxes = fluid_boxes
data.raw["assembling-machine"]["gr_crafter_entity"].fluid_boxes = fluid_boxes

data.raw["assembling-machine"]["fi_crafter_entity"].crafting_categories = crafting_categories
data.raw["assembling-machine"]["gr_crafter_entity"].crafting_categories = crafting_categories

data.raw["assembling-machine"]["kr-research-server"].ingredient_count = 20
data.raw["assembling-machine"]["el_purifier_entity"].ingredient_count = 20
data.raw["assembling-machine"]["fu_magnet_entity"].ingredient_count = 3

---Adjust grid size
---@param grid_name string
---@param size int
local function SetGridSize(grid_name, size)
	local grid = data.raw["equipment-grid"][grid_name]
	if grid then
		grid.width = size
		grid.height = size
	end
end

if not mods["Configurable-Armour-Suits"] then
SetGridSize("small-equipment-grid", 5) --modular
SetGridSize("medium-equipment-grid", 10) -- power mk1
SetGridSize("large-equipment-grid", 15) -- power mk2
SetGridSize("mk3-armor-grid", 20)
SetGridSize("mk4-armor-grid", 25)
SetGridSize("se-thruster-suit-grid", 10)
SetGridSize("se-thruster-suit-2-grid", 15)
SetGridSize("se-thruster-suit-3-grid", 20)
SetGridSize("se-thruster-suit-4-grid", 25)
end

--sets all item stack sizes to a max of 200
for _, item in pairs(data.raw.item) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

--248k Science cubes are tools not items, so this is needed for that
for _, item in pairs(data.raw.tool) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

data.raw.item["processing-electronics"].localised_name = "Advanced CPU"
data.raw.item["fu_materials_carbon_fiber"].localised_name = "Graphite fiber"
data.raw.item["fu_materials_KFK"].localised_name = "Graphite fiber reinforced plastic"
data.raw.item["el_lithium_item"].localised_name = "Lithium crystal"
data.raw.fluid["el_dirty_water"].localised_name = "Cloudy water"
data.raw.item["fi_materials_dirty_solution"].localised_name = "Cloudy water container"

local util = require("data-util")
--LDS 248k Recipe fix
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "titanium-plate", 8, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "diamond", 4, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "zirconia", 20, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "carbon-fiber", 20, false)
--Adjust basic electronic components to require more ingredients
util.replace_or_add_ingredient("basic-electronic-components", "copper-cable", "copper-cable", 5, false)
util.replace_or_add_ingredient("basic-electronic-components", "graphite", "graphite", 5, false)
--Adjust Electronic circuits recipies to use less electronic components
util.replace_or_add_ingredient("electronic-circuit", "basic-electronic-components", "basic-electronic-components", 2,
    false)
util.replace_or_add_ingredient("electronic-circuit-silver", "basic-electronic-components", "silver-wire", 4, false)
--Add Mysterious energy crystals to Prod 1
util.replace_or_add_ingredient("productivity-module", "glass", "el_energy_crystal_item", 10, false)
--Adjust Artificial energy crystals to be use more.
util.replace_or_add_ingredient("big-battery-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("se-rtg-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("big-solar-panel-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("productivity-module-2", "glass", "fi_energy_crystal_item", 10, false)
--Adjust Refined Crystals to be used more
util.replace_or_add_ingredient("productivity-module-3", "mlcc", "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-battery-mk2-equipment", nil, "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-imersite-solar-panel-equipment", nil, "fu_materials_refined_crystal", 4, false)
--Adding Neodymium to some recipes
util.replace_or_add_ingredient("se-space-hypercooler", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator-2", nil, "fi_materials_neodym", 15, false)
--Adjust 248k recipes to be better balanced
util.replace_or_add_ingredient("steel-plate", "iron-plate", "iron-plate", 10, false)
util.replace_or_add_ingredient("el_purify_iron_recipe", "iron-ore", "iron-ore", 13, false)
util.replace_or_add_ingredient("el_purify_copper_recipe", "copper-ore", "copper-ore", 13, false)
--Changed quantum processors to use hcp instead of blue curcuits
util.replace_or_add_ingredient("se-quantum-processor","processing-unit","gr_materials_circuit", 4 ,false)
--Disable wooden rails and rail conversions
data.raw.recipe["bi-rail-wood"].hidden = false
data.raw.recipe["bi-rail-wood-to-concrete"].hidden = false
--Change bismuth ammo to output rifle magazines
data.raw.recipe["rifle-magazine-bismuth"].results = { { "rifle-magazine", 1} }
data.raw.recipe["rifle-magazine-bismuth"].main_product = "rifle-magazine"
data.raw.recipe["pistol-magazine-bismuth"].results = { { "firearm-magazine", 1} }
data.raw.recipe["pistol-magazine-bismuth"].main_product = "firearm-magazine"
--change localized name of a few items that have similar names
data.raw.recipe["fu_carbon_fiber_recipe"].localised_name = "Graphite fiber"
data.raw.recipe["fu_KFK_recipe"].localised_name = "Graphite fiber reinforced plastic"
data.raw.recipe["el_lithium_ore_recipe"].localised_name = "Lithium crystal"
data.raw.recipe["el_purify_iron_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_copper_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_aluminum_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_stone_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_unpack_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fu_treat_slag_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_pack_recipe"].localised_name = "Cloudy water container"

for _, train in pairs(data.raw["locomotive"]) do
  if train.burner then
    util.add_fuel_category(train.burner, "vehicle-fuel")
  end
end