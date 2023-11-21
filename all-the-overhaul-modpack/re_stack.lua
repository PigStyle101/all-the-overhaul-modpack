if (settings.startup["Modpack-ReStack-enabled"].value == true) then
    local restack = require("functions/restack.restack")

    local resources_ores = { "coal", "wood", "sulfur", "stone", "raw-rare-metals",
        "flake-graphite", "salt", "zircon" }

    local banned_se_resources = { "vulcanite", "cryonite", "imersite", "beryllium", "holmium", "naquium", "vitamelange",
        "iridium" }

    -- wide chest exception
    local mergablechest
    if mods["WideChests"] then
        for _, data in pairs(MergingChests.MergableChestIdToData) do
            if data.name == settings.startup["mergable-chest-name"].value then
                mergablechest = data.id
            end
        end
    end

    for type, _ in pairs(data.raw) do
        for _, item in pairs(data.raw[type]) do
            local mergableLogicalChest = false
            if mods["WideChestsLogistic"] then
                if item.name == "logistic-chest-passive-provider" then
                    mergableLogicalChest = true
                elseif item.name == "logistic-chest-active-provider" then
                    mergableLogicalChest = true
                elseif item.name == "logistic-chest-storage" then
                    mergableLogicalChest = true
                elseif item.name == "logistic-chest-buffer" then
                    mergableLogicalChest = true
                elseif item.name == "logistic-chest-requester" then
                    mergableLogicalChest = true
                end
            end

            if item.subgroup and item.stack_size and item.name ~= mergablechest and item.stack_size ~= 1 and mergableLogicalChest == false then
                -- production
                if item.subgroup == "energy" then
                    if settings.startup["Modpack-ReStack-energy"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-energy"].value)
                    end
                end
                if item.subgroup == "energy-nuclear" then
                    if settings.startup["Modpack-ReStack-reactors"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-reactors"].value)
                    end
                end
                if item.subgroup == "nuclear" then
                    if settings.startup["Modpack-ReStack-nuclear"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-nuclear"].value)
                    end
                end
                if item.subgroup == "solar-panels" or item.subgroup == "accumulators" then
                    if settings.startup["Modpack-ReStack-solar-panel-accumulator"].value then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-solar-panel-accumulator"].value)
                    end
                end
                if item.subgroup == "extraction-machine" then
                    if settings.startup["Modpack-ReStack-extraction-machines"].value then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-extraction-machines"].value)
                    end
                end
                if item.subgroup == "offshore-pumps" or item.subgroup == "water-pumpjacks" then
                    if settings.startup["Modpack-ReStack-pumps"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-pumps"].value)
                    end
                end
                if item.subgroup == "assembling" or item.subgroup == "smelting-machine" or item.subgroup == "chemistry" or item.subgroup == "bio-chemistry"
                    or item.subgroup == "production-machine" or item.subgroup == "mechanical" or item.subgroup == "plasma" or item.subgroup == "cooling"
                    or item.subgroup == "computation" or item.subgroup == "telescope" or item.subgroup == "beaming" or item.subgroup == "lab" then
                    if settings.startup["Modpack-ReStack-production-machines"].value then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-production-machines"].value)
                    end
                end
                -- transport
                if item.subgroup == "transport-locomotives" or item.subgroup == "transport-wagons" or item.subgroup == "transport-fluid-wagons"
                    or item.subgroup == "transport-artillery-wagons" then
                    if settings.startup["Modpack-ReStack-locomotives-wagons"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-locomotives-wagons"].value)
                    end
                end
                if item.subgroup == "transport-rails" or item.subgroup == "transport-railway-logic" then
                    if settings.startup["Modpack-ReStack-rails-railway-logic"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-rails-railway-logic"].value)
                    end
                end
                if item.subgroup == "transport-drones" and item.name ~= "transport-drone" then
                    if settings.startup["Modpack-ReStack-transport-drones"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-transport-drones"].value)
                    end
                end
                if item.subgroup == "transport-machines" then
                    if settings.startup["Modpack-ReStack-transport-machines"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-transport-machines"].value)
                    end
                end
                -- fluids
                if item.subgroup == "fluid-storages" or item.subgroup == "cust-storage-tank" then
                    if settings.startup["Modpack-ReStack-fluid-storages"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-fluid-storages"].value)
                    end
                end
                if item.subgroup == "fluid-wood-pipes" or item.subgroup == "fluid-iron-pipes" or item.subgroup == "fluid-steel-pipes" or item.subgroup == "fluid-space-pipes" or item.subgroup == "fluid-big-pipes" then
                    if settings.startup["Modpack-ReStack-pipes"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-pipes"].value)
                    end
                end
                if item.subgroup == "barrel" then
                    if settings.startup["Modpack-ReStack-barrels"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-barrels"].value)
                    end
                end
                -- logistics
                if item.subgroup == "container-1" or item.subgroup == "container-2" or item.subgroup == "container-4" or item.subgroup == "container-6" or item.subgroup == "storage" then
                    if settings.startup["Modpack-ReStack-storages"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-storages"].value)
                    end
                end
                if item.subgroup == "belt" or item.subgroup == "transport-belt" or item.subgroup == "underground-belt" or item.subgroup == "splitter" or item.subgroup == "inserter" then
                    if settings.startup["Modpack-ReStack-belts-inserters"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-belts-inserters"].value)
                    end
                end
                if item.subgroup == "energy-pipe-distribution-middle" or item.subgroup == "energy-pipe-distribution-big" or item.subgroup == "energy-pipe-distribution-substation" then
                    if settings.startup["Modpack-ReStack-electic-poles"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-electic-poles"].value)
                    end
                end
                if item.subgroup == "logistic-drones" then
                    if settings.startup["Modpack-ReStack-robots"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-robots"].value)
                    end
                end
                if item.subgroup == "logistic-network" then
                    if settings.startup["Modpack-ReStack-roboports"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-roboports"].value)
                    end
                end
                if item.subgroup == "circuit-network" then
                    if settings.startup["Modpack-ReStack-circuit-network"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-circuit-network"].value)
                    end
                end
                if item.subgroup == "rocket-logistics" then
                    if settings.startup["Modpack-ReStack-rocket-logistics"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-rocket-logistics"].value)
                    end
                end
                if item.subgroup == "spaceship-structure" then
                    if settings.startup["Modpack-ReStack-spaceship-structure"].value then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-spaceship-structure"].value)
                    end
                end
                -- modules
                if item.subgroup == "module-speed" or item.subgroup == "module-productivity" or item.subgroup == "module-effectivity" or item.subgroup == "module-248k" then
                    if settings.startup["Modpack-ReStack-modules"].value then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-modules"].value)
                    end
                end
                if item.subgroup == "beacons" or item.subgroup == "el_item_subgroup_f" or item.subgroup == "fi_item_subgroup_k" or item.subgroup == "fu_item_subgroup_k" then
                    if settings.startup["Modpack-ReStack-beacons-248k-circuit"].value then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-beacons-248k-circuit"].value)
                    end
                end

                -- resources and petrochemestry
                local isItemBannedSe = krastorio_utils.tables.find(banned_se_resources,
                    function(i) return i == item.subgroup end)
                if (data.raw["item-subgroup"][item.subgroup].group == "resources" or data.raw["item-subgroup"][item.subgroup].group == "petrochemistry")
                    and item.subgroup ~= "petrochemistry-fuel"
                    and item.subgroup ~= "petrochemistry-rocket-fuel"
                    and isItemBannedSe == nil then
                    local startPosCoreFragment = string.find(item.name, "core%-fragment")
                    local startPosIngot = string.find(item.name, "ingot")
                    local startPosOre = string.find(item.name, "ore")
                    local isItemOres = krastorio_utils.tables.find(resources_ores, function(i) return i == item.name end)
                    if settings.startup["Modpack-ReStack-resources"].value then
                        if item.subgroup ~= "fuel-cell" and startPosCoreFragment == nil and startPosOre == nil and isItemOres == nil and startPosIngot == nil then
                            restack.restack(type, item.name, settings.startup["Modpack-ReStack-resources"].value)
                        end
                    end
                    if item.subgroup == "fuel-cell" then
                        if settings.startup["Modpack-ReStack-nuclear-fuel"].value then
                            restack.restack(type, item.name, settings.startup["Modpack-ReStack-nuclear-fuel"].value)
                        end
                    end
                    if settings.startup["Modpack-ReStack-ores"].value then
                        if (startPosOre or isItemOres) and startPosCoreFragment == nil and startPosIngot == nil then
                            restack.restack(type, item.name, settings.startup["Modpack-ReStack-ores"].value)
                        end
                    end
                end

                -- intermediate-products
                if settings.startup["Modpack-ReStack-intermediate-products"].value then
                    if data.raw["item-subgroup"][item.subgroup].group == "intermediate-products"
                        and item.subgroup ~= "intermediate-product"
                        and item.subgroup ~= "engine-components"
                        and item.subgroup ~= "gearbox"
                        and item.subgroup ~= "advanced-assembling"
                        and item.subgroup ~= "processor"
                        and item.subgroup ~= "rocket-part"
                        and item.subgroup ~= "intersurface-part"
                        and item.subgroup ~= "canister"
                        and item.subgroup ~= "canister-fill"
                        and item.subgroup ~= "specimen"
                        and item.subgroup ~= "arcosphere"
                    then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-intermediate-products"].value)
                    end
                end
                if settings.startup["Modpack-ReStack-engine-components-gearbox"].value then
                    if item.subgroup == "engine-components" or item.subgroup == "gearbox" then
                        restack.restack(type, item.name,
                            settings.startup["Modpack-ReStack-engine-components-gearbox"].value)
                    end
                end
                if settings.startup["Modpack-ReStack-processor"].value then
                    if item.subgroup == "processor" then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-processor"].value)
                    end
                end
                if settings.startup["Modpack-ReStack-rocket-part"].value then
                    if item.subgroup == "rocket-part"
                        and item.name ~= "se-cargo-rocket-section"
                        and item.name ~= "se-cargo-rocket-section-packed"
                        and item.name ~= "se-rocket-launch-pad-silo-dummy-ingredient-item"
                        and item.name ~= "se-rocket-launch-pad-silo-dummy-result-item"
                    then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-rocket-part"].value)
                    end
                end
                -- combat
                if settings.startup["Modpack-ReStack-turret"].value then
                    if data.raw["item-subgroup"][item.subgroup].group == "combat" then
                        local startPosTurret = string.find(item.name, "turret")
                        local startPosGun = string.find(item.name, "item%-tempant%-arsenal")
                        local startPosAcidCannon = string.find(item.name, "acid%-cannon")
                        if startPosTurret or startPosGun or startPosAcidCannon
                        then
                            restack.restack(type, item.name, settings.startup["Modpack-ReStack-turret"].value)
                        end
                    end
                end
                if settings.startup["Modpack-ReStack-magazine"].value then
                    if data.raw["item-subgroup"][item.subgroup].group == "combat" then
                        local startPosMagazine = string.find(item.name, "magazine")
                        if startPosMagazine then
                            restack.restack(type, item.name, settings.startup["Modpack-ReStack-magazine"].value)
                        end
                    end
                end
                -- terrain
                if settings.startup["Modpack-ReStack-terrain"].value then
                    if data.raw["item-subgroup"][item.subgroup].group == "terrain" then
                        restack.restack(type, item.name, settings.startup["Modpack-ReStack-terrain"].value)
                    end
                end
            end
        end
    end

    local type = "item"

    if settings.startup["Modpack-ReStack-fuel"].value then
        restack.restack(type, "processed-fuel", settings.startup["Modpack-ReStack-fuel"].value)
        restack.restack(type, "solid-fuel", settings.startup["Modpack-ReStack-fuel"].value)
        restack.restack(type, "fuel", settings.startup["Modpack-ReStack-fuel"].value)
        restack.restack(type, "bio-fuel", settings.startup["Modpack-ReStack-fuel"].value)
        restack.restack(type, "advanced-fuel", settings.startup["Modpack-ReStack-fuel"].value)
    end
    if settings.startup["Modpack-ReStack-diesel-fuel"].value then
        restack.restack(type, "el_train_fuel_diesel_item", settings.startup["Modpack-ReStack-diesel-fuel"].value)
        restack.restack(type, "el_train_fuel_diesel_energiized_item", settings.startup
            ["Modpack-ReStack-diesel-fuel"]
            .value)
        restack.restack(type, "fi_fuel_train_crystal_item", settings.startup["Modpack-ReStack-diesel-fuel"].value)
    end
    if settings.startup["Modpack-ReStack-barrels"].value then
        restack.restack(type, "empty_barrel", settings.startup["Modpack-ReStack-barrels"].value)
    end
end
