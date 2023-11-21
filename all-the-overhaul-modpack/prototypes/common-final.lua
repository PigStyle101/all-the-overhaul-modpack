local util = require("data-util")

bobmods.lib.recipe.add_ingredient("fast-road", { "road", 10 })

bobmods.lib.recipe.add_ingredient("rail", { "concrete", 2 })

if mods["big_power_poles_patched"] then
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "acsr-cable", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "iron-stick", 16 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "galvanized-steel-plate", 8 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "lead-plate", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "concrete", 2 })
end

-- wagons
data.raw["cargo-wagon"]["space-cargo-wagon"].inventory_size = 50
data.raw["cargo-wagon"]["gr_magnet_wagon_pre_entity"].inventory_size = 60
data.raw["cargo-wagon"]["gr_magnet_wagon_entity"].inventory_size = 70

data.raw["fluid-wagon"]["space-fluid-wagon"].capacity = 50000
data.raw["fluid-wagon"]["gr_magnet_tanker_pre_entity"].capacity = 75000
data.raw["fluid-wagon"]["gr_magnet_tanker_entity"].capacity = 100000

-- repairs pack
local _durability = 300
local _stack_size = 200
data.raw["repair-tool"]["copper-repair-pack"].durability = _durability
data.raw["repair-tool"]["copper-repair-pack"].speed = 3
data.raw["repair-tool"]["copper-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["steel-repair-pack"].durability = _durability
data.raw["repair-tool"]["steel-repair-pack"].speed = 4
data.raw["repair-tool"]["steel-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["field-repair-pack"].durability = _durability
data.raw["repair-tool"]["field-repair-pack"].speed = 5
data.raw["repair-tool"]["field-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["multitool-repair-pack"].durability = _durability
data.raw["repair-tool"]["multitool-repair-pack"].speed = 6
data.raw["repair-tool"]["multitool-repair-pack"].stack_size = _stack_size

-- bz foundry
local allowed_effects = { "speed", "productivity", "consumption", "pollution" }
local module_specification = {
    module_info_icon_shift = {
        0,
        0.8
    },
    module_slots = 2
}

-- 1 tech ki
krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "fi_ki_eff_1_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "el_ki_eff_1_tech")
krastorio.technologies.addPrerequisite("el_ki_sup_1_tech", "fi_ki_tech")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "production-science-pack")
krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack", 1)
krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "se-rocket-science-pack", 1)
krastorio.technologies.setResearchUnitCount("el_ki_sup_1_tech", 2000)
-- 2 tech ki
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fu_ki_eff_1_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fi_ki_eff_2_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "el_ki_eff_2_tech")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "production-science-pack")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-energy-science-pack-1")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-material-science-pack-3")
krastorio.technologies.setResearchUnitCount("el_ki_sup_2_tech", 2000)

for _, train in pairs(data.raw["locomotive"]) do
  if train.burner then
    util.add_fuel_category(train.burner, "vehicle-fuel")
  end
end
