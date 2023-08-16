local util = require("data-util")
--Adjust evolution stuff
script.on_init
(
    function()
        if game.active_mods["RampantFixed"] then
            game.map_settings.enemy_evolution.time_factor = 0
            game.map_settings.enemy_evolution.pollution_factor = 0.000000000000003
            game.map_settings.enemy_evolution.destroy_factor = 0.001
            log("PIG time factor = " .. game.map_settings.enemy_evolution.time_factor)
        end
    end
)

--- Used with on_player_created to get the player and then adjust the companion drones.
---@param event  #The event that was triggered
function PlayerCreated(event)
    local player_index = event.player_index
    local player = game.get_player(player_index)
    if not player then return end
    local companions = player.surface.find_entities_filtered { position = player.position, radius = 300, name =
    "companion" }
    -- for each drone remove sheilds and add robo ports
    for i, companion in pairs(companions) do
        for j, equipment in ipairs(companion.grid.equipment) do
            if not equipment.valid then return end
            if equipment.name == "companion-shield-equipment" then
                companion.grid.take { equipment = equipment }
            end
            companion.grid.put { name = "companion-roboport-equipment", position = { 2, 0 }, by_payer = true }
            companion.grid.put { name = "companion-roboport-equipment", position = { 4, 0 }, by_payer = true }
            companion.grid.put { name = "companion-roboport-equipment", position = { 8, 0 }, by_payer = true }
        end
    end
end

script.on_event(defines.events.on_player_created, PlayerCreated)
