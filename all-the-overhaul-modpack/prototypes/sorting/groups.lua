local util = require("data-util")

data:extend(
    {
        {
            type = "item-group",
            name = "ammo",
            icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "z"
        },
        {
            type = "item-group",
            name = "fluid",
            icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-2.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "a"
        },
        {
            type = "item-group",
            name = "petrochemistry",
            icon = "__248k__/ressources/fission/fi_refinery/fi_refinery_icon.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "c",
            order = "a"
        },
        {
            type = "item-group",
            name = "module",
            icon = "__248k__/ressources/fission/fi_modules/fi_modules_productivity_6.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "z",
            order = "a"
        },
        {
            type = "item-group",
            name = "power",
            icon = "__base__/graphics/icons/solar-panel.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "e"
        },
        {
            type = "item-group",
            name = "transport",
            icon = "__base__/graphics/icons/rail.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "space",
            icon = "__base__/graphics/icons/rocket-silo.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "terrain",
            icon = "__base__/graphics/icons/landfill.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "h"
        },
        {
            type = "item-group",
            name = "module",
            icon = "__248k__/ressources/fission/fi_modules/fi_modules_productivity_6.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "c",
            order = "d"
        },
        {
            type = "item-group",
            name = "beacons",
            icon = "__base__/graphics/icons/beacon.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "tiles",
            icon = "__base__/graphics/icons/concrete.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "fluids",
            icon = "__base__/graphics/icons/chemical-plant.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "f",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248kextra",
            group = "production",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248klead",
            group = "production",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248kstar",
            group = "production",
            order = "z"
        },
    }
)
