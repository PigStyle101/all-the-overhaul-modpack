local util = require("data-util")

--Adding new recipies
data:extend({ {
  type = "recipe",
  name = "imersium-wall",
  category = "crafting",
  enabled = false,
  energy_required = 1,
  normal = {
    ingredients =
    {
      { "steel-wall",     1 },
      { "imersium-plate", 5 }
    },
    results = { { type = "item", name = "imersium-wall", amount = 1 } }
  },
  expensive = {
    ingredients =
    {
      { "concrete-wall",  1 },
      { "imersium-plate", 10 }
    },
    results = { { type = "item", name = "imersium-wall", amount = 1 } }
  }
} })

data:extend({ {
  type = "recipe",
  name = "ato-biomass-growing",
  category = "chemistry",
  enabled = true,
  energy_required = 100,
  ingredients = {
    { type = "fluid", name = "petroleum-gas", amount = 1000 },
    { type = "fluid", name = "oxygen",        amount = 1000 },
    {"stone", 100},
    {"wood", 100},
    {"coke", 100},
    {"raw-fish", 5}
  },
  results = {
    { type = "item", name = "biomass", amount = 5 },
  }
} })
