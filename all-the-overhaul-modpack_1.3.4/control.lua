local util = require("data-util")
require("prototypes/evolution/evolutioncontroler")

--Adjust evolution stuff
function EvoController()
    local techEvo = settings.startup["atom-disable-vanilla-evolution"].value
    if techEvo then
        game.map_settings.enemy_evolution.enabled = false
    else
        if game.active_mods["RampantFixed"] then
            game.map_settings.enemy_evolution.enabled = true
            game.map_settings.enemy_evolution.time_factor = 0
            game.map_settings.enemy_evolution.pollution_factor = 0.000000000000003
            game.map_settings.enemy_evolution.destroy_factor = 0.00001
        end
    end
end

--- Used with on_player_created to get the player and then adjust the starting items if easy start is on.
---@param event  #The event that was triggered
function PlayerCreated(event)
    local player_index = event.player_index
    local player = game.get_player(player_index)

    if settings.startup["atom-easy-military-start"].value then
        for _, item in pairs(EASY_MILITARY) do
            if game.item_prototypes[item[1]] ~= nul then
                player.insert { name = item[1], count = item[2] }
                player.print("Added item \"" .. item[1])
            else
                player.print("Unable to add \"" .. item[1] .. "\" to inventory, please check spelling.")
            end
        end
    end
    if settings.startup["atom-easy-automation-start"].value then
        for _, item in pairs(EASY_AUTOMATION) do
            if game.item_prototypes[item[1]] ~= nul then
                player.insert { name = item[1], count = item[2] }
                player.print("Added item \"" .. item[1])
            else
                player.print("Unable to add \"" .. item[1] .. "\" to inventory, please check spelling.")
            end
        end
    end
end

script.on_event(defines.events.on_cutscene_cancelled, PlayerCreated)

EASY_MILITARY = {
    { "armor-piercing-rifle-magazine", 4000 },
    { "gun-turret",                    20 },
    { "concrete-wall",                 1000 }
}

EASY_AUTOMATION = {
    { "assembling-machine-1",  20 },
    { "electric-mining-drill", 20 },
    { "solar-panel",           100 },
    { "accumulator",           100 },
    { "substation",            20 },
    { "inserter",              50 },
    { "transport-belt",        200 },
    { "underground-belt",      50 },
    { "splitter",              50 }
}

script.on_event(defines.events.on_research_finished, researchCausesEvolution_on_research_finished)
script.on_init(EvoController)
script.on_configuration_changed(researchCausesEvolution_recalcuate)
