local util = require("data-util")

--Take a copy of stone walls
local imersium = table.deepcopy(data.raw.wall["stone-wall"])
--adjust properties of new item to what we are trying to make
imersium.name = "imersium-wall"
imersium.minable.result = "imersium-wall"
imersium.icon = data.raw.item["imersium-wall"].icon
imersium.icon_size = data.raw.item["imersium-wall"].icon_size
imersium.icon_mipmaps = data.raw.item["imersium-wall"].icon_mipmaps
util.replace_filenames_recursive(imersium.pictures, "__aai-industry__", "__all-the-overhaul-modpack__")
--util.replace_filenames_recursive(imersium.pictures, "entity/wall", "entity/stone-wall")
util.replace_filenames_recursive(imersium.pictures, "stone-wall", "imersium-wall")
imersium.max_health = 2000
imersium.next_upgrade = nil
imersium.hide_resistances = false
imersium.resistances = {
    {
        decrease = 20,
        percent = 90,
        type = "physical"
    },
    {
        decrease = 45,
        percent = 90,
        type = "impact"
    },
    {
        decrease = 100,
        percent = 90,
        type = "explosion"
    },
    {
        percent = 100,
        type = "fire"
    },
    {
        percent = 80,
        type = "acid"
    },
    {
        percent = 80,
        type = "laser"
    },
    {
        percent = 80,
        type = "poison"
    }
}

imersium.mined_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
imersium.vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 }
data:extend({ imersium })
