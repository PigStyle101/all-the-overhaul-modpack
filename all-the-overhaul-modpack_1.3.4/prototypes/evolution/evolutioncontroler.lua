--[[
   Copyright 2018 H8UL

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
--]]

local function recalculateResearchEvolution(eventForce)

    if eventForce.name ~= "player" then
         return
    end

    local evolution = 0

    for _,tech in pairs(eventForce.technologies) do
        if tech.researched and tech.effects then
            for _,effect in pairs(tech.effects) do
                if effect.type == "nothing" and effect.effect_description then

                    if effect.effect_description[1] == "research-causes-evolution-effect" then
                        local value = effect.effect_description[2]
                        evolution = evolution + value
                    end
                end
            end
        end
        for _,force in pairs(game.forces) do
            if force.ai_controllable or force == game.forces.enemy then
                -- force.evolution_factor = evolution / 100.0
                local technologies_evolution = evolution / 100.0
                local current_evolution = force.evolution_factor
                force.evolution_factor = math.max(technologies_evolution, current_evolution)
            end
        end
    end
end

function researchCausesEvolution_on_research_finished(event)
    recalculateResearchEvolution(event.research.force)
end

function researchCausesEvolution_recalcuate()
    for _,force in pairs(game.forces) do
        recalculateResearchEvolution(force)
    end
    if settings.startup["atom-disable-vanilla-evolution"].value then
        game.map_settings.enemy_evolution.enabled = false
    else
        if game.active_mods["RampantFixed"] then
            game.map_settings.enemy_evolution.enabled = true
            game.map_settings.enemy_evolution.time_factor = 0
            game.map_settings.enemy_evolution.pollution_factor = 0.000000000000003
            game.map_settings.enemy_evolution.destroy_factor = 0.00001
            log("PIG time factor = " .. game.map_settings.enemy_evolution.time_factor)
        end
    end
end