local util = require("data-util")

--Adjust technologies that did not have a prerequisite
log("Adjusting Tech PIG")
data.raw.technology["industrial-furnace"].prerequisites = { "space-science-pack" }
data.raw.technology["automation-3"].prerequisites = { "space-science-pack" }
data.raw.technology["logistics-3"].prerequisites = { "space-science-pack" }
data.raw.technology["jetpack-2"].prerequisites = { "space-science-pack" }
data.raw.technology["se-condenser-turbine"].prerequisites = { "space-science-pack" }
data.raw.technology["se-fuel-refining"].prerequisites = { "space-science-pack" }
data.raw.technology["se-processing-beryllium"].prerequisites = { "space-science-pack" }
data.raw.technology["se-processing-holmium"].prerequisites = { "space-science-pack" }
data.raw.technology["se-processing-water-ice"].prerequisites = { "space-science-pack" }
data.raw.technology["se-processing-methane-ice"].prerequisites = { "space-science-pack" }
data.raw.technology["se-space-capsule-navigation"].prerequisites = { "space-science-pack" }
data.raw.technology["se-space-manufactory"].prerequisites = { "space-science-pack" }
data.raw.technology["nuclear-fuel-reprocessing"].prerequisites = { "space-science-pack" }
--lock techs that use Aluminium ceramic behind it.
util.tech_add_prerequisites("mechanical-engineering", "el_ALK_tech")
util.tech_add_prerequisites("kr-fluids-chemistry", "el_ALK_tech")
--lock tech that uses pcb solder behind it.
util.tech_add_prerequisites("fast-inserter", "pcb-solder")
--Remove gas boiler from gas extraction tech
local gas = data.raw.technology["gas-extraction"].effects
util.remove_recipe_from_effects(gas, "gas-boiler")

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
