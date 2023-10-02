local util = require("data-util")

--Adjust technologie prerequisites
log("Adjusting Tech PIG")
util.tech_add_prerequisites("industrial-furnace","space-science-pack")
util.tech_add_prerequisites("automation-3","space-science-pack")
util.tech_add_prerequisites("logistics-3","space-science-pack")
util.tech_add_prerequisites("jetpack-2","space-science-pack")
util.tech_add_prerequisites("se-condenser-turbine","space-science-pack")
util.tech_add_prerequisites("se-fuel-refining","space-science-pack")
util.tech_add_prerequisites("se-processing-beryllium","space-science-pack")
util.tech_add_prerequisites("se-processing-holmium","space-science-pack")
util.tech_add_prerequisites("se-processing-water-ice","space-science-pack")
util.tech_add_prerequisites("se-processing-methane-ice","space-science-pack")
util.tech_add_prerequisites("se-space-capsule-navigation","space-science-pack")
util.tech_add_prerequisites("se-space-manufactory","space-science-pack")
util.tech_add_prerequisites("nuclear-fuel-reprocessing","space-science-pack")

util.tech_add_prerequisites("basic-chemistry","automation-science-pack")
util.tech_add_prerequisites("long-inserters-1","automation-science-pack")
util.tech_add_prerequisites("near-inserters","automation-science-pack")
util.tech_add_prerequisites("graphite-processing","automation-science-pack")
util.tech_add_prerequisites("kr-greenhouse","automation-science-pack")
util.tech_add_prerequisites("tinned-cable","automation-science-pack")
util.tech_add_prerequisites("electric-mining","automation-science-pack")

util.tech_remove_prerequisites("manganese-smelting",{"automation-science-pack"})
util.tech_remove_prerequisites("steel-processing",{"manganese-smelting"})
util.tech_remove_prerequisites("electricity",{"bismanol"})

util.tech_add_prerequisites("steel-processing", "automation-science-pack")
util.tech_add_prerequisites("manganese-smelting", "bismanol")
util.tech_add_prerequisites("electricity", "manganese-smelting")

util.tech_remove_ingredients("manganese-smelting","automation-science-pack")

--lock techs that use Aluminium ceramic behind it.
util.tech_add_prerequisites("mechanical-engineering", "el_ALK_tech")
util.tech_add_prerequisites("kr-fluids-chemistry", "el_ALK_tech")
--lock tech that uses pcb solder behind it.
util.tech_add_prerequisites("fast-inserter", "pcb-solder")
--Remove gas boiler from gas extraction tech
local gas = data.raw.technology["gas-extraction"].effects
util.remove_recipe_from_effects(gas, "gas-boiler")
--change 248k energy tech prerequisite to energy 1 science, as it is needed to unlock ki2 cubes, witch are needed for energy 2 science
data.raw.technology["fu_energy_tech"].prerequisites = {"se-energy-science-pack-1"}

--Add new technologys
data:extend {
    {
        type = "technology",
        name = "imersium-walls",
        icon = "__base__/graphics/technology/stone-wall.png",
        icon_size = 256,
        order = "a",
        prerequisites = { "steel-walls", "military-science-pack" },
        unit = {
            count = 400,
            ingredients = {
                { "space-science-pack",         1 },
                { "se-material-science-pack-1", 1 },
                { "military-science-pack",      1 },
            },
            time = 40
        }
    }
}

--Lock recipies behind tech
util.tech_lock_recipes("imersium-walls", { "imersium-wall" })

util.tech_lock_recipes("military-science-pack", { "ato-biomass-growing" })

util.tech_lock_recipes("optics", { "light-buoy" })

if data.raw.recipe["laser-turret"] then util.tech_lock_recipes("laser-turret", { "sw-electric-turret" }) end