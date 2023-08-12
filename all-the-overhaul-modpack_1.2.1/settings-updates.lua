--- Changes settings of other mods if value is not already the same, also adjust max and default if needed.
---@param setting_type  #What type of setting
---@param setting_name  #The name of that setting
---@param value  #What to change it to
local function overwrite_settings(setting_type, setting_name, value)
  local setting = data.raw[setting_type][setting_name]
  if setting then
    if setting.default_value ~= value then
      if setting_type == "bool-setting" then
        setting.forced_value = value
      end
      if setting_type == "int-setting" then
        if setting.maximum_value ~= nil then
          setting.maximum_value = value
          setting.minimum = value
          setting.allowed_values = { value }
        else
          setting.allowed_values = { value }
        end
      end
      if setting_type == "double-setting" then
        if setting.maximum_value ~= nil then
          setting.maximum_value = value
          setting.minimum = value
          setting.allowed_values = { value }
        else
          setting.allowed_values = { value }
        end
      end
      if setting_type == "string-setting" then
        setting.allowed_values = { value }
      end
      setting.default_value = value
    end
    setting.hidden = true
  end
end

--248k
if mods["248k"] then
  overwrite_settings("string-setting", "el_solar_power_output", "80kW (normal)")
  overwrite_settings("string-setting", "el_burner_power_output", "1.2MW (low)")
  overwrite_settings("string-setting", "el_water_generator_power_output", "3MW (low)")
  overwrite_settings("bool-setting", "el_ki_core_productivity", false)
  overwrite_settings("string-setting", "el_ki_core_energy_usage", "very high")
  overwrite_settings("bool-setting", "override_krastorio_endgame", true)
  overwrite_settings("bool-setting", "overhaul_mode", true)
  overwrite_settings("bool-setting", "retexture_science", false)
  overwrite_settings("bool-setting", "overhaul_science", false)
end
--aai-containers
if mods["aai-containers"] then
  overwrite_settings("string-setting", "aai-containers-progression", "Smooth")
end
--aai-industries
if mods["aai-industry"] then
  overwrite_settings("bool-setting", "start-with-basic-logistics", false)
  overwrite_settings("bool-setting", "aai-fast-motor-crafting", false)
end
--artillary-shell-stack
if mods["ArtilleryShellStack"] then
  overwrite_settings("int-setting", "artillery-shell-stack-size", 50)
  overwrite_settings("int-setting", "artillery-turret-ammo-stack-limit", 50)
  overwrite_settings("int-setting", "artillery-wagon-ammo-stack-limit", 50)
end
--balanced-waterfill
if mods["balanced-waterfill"] then
  overwrite_settings("string-setting", "balanced-waterfill-recipe-cost-setting", "Consumes Barrels")
  overwrite_settings("string-setting", "balanced-waterfill-collision-setting", "Walkable")
  overwrite_settings("bool-setting", "balanced-waterfill-biterspeed-setting", false)
end
--BrassTacks
if mods["BrassTacks"] then
  overwrite_settings("bool-setting", "brasstacks-experimental-intermediates", true)
  overwrite_settings("bool-setting", "brasstacks-starting-items", true)
end
--bismuth
if mods["bismuth"] then
  overwrite_settings("string-setting", "bismuth-reduce-pcb-solder", "Default (reccomended)")
  overwrite_settings("bool-setting", "bismuth-disable-bismuthinite-ore", false)
  overwrite_settings("bool-setting", "bismuth-disable-bismuth-as-smelting-byproduct", false)
  overwrite_settings("int-setting", "bismuth-contain-bismuth", 8129)
  overwrite_settings("int-setting", "bismuth-contain-sulfur", 1871)
end
--bzcarbon
if mods["bzcarbon"] then
  overwrite_settings("string-setting", "bzcarbon-enable-fullerenes", "yes")
  overwrite_settings("string-setting", "bzcarbon-enable-carbon-black", "no")
  overwrite_settings("string-setting", "bzcarbon-enable-rough-diamond", "no")
  overwrite_settings("string-setting", "bzcarbon-enable-flake-graphite", "yes")
  overwrite_settings("string-setting", "bzcarbon-reuse", "yes")
  overwrite_settings("string-setting", "bzcarbon-enable-carbon-fiber", "yes")
end
--bzchlorine
if mods["bzchlorine"] then
  overwrite_settings("bool-setting", "bzchlorine-salt", true)
  overwrite_settings("string-setting", "bzchlorine-early-salt", "both")
  overwrite_settings("string-setting", "bzchlorine-more-intermediates", "yes")
end
--bzfoundry
if mods["bzfoundry"] then
  overwrite_settings("bool-setting", "bzfoundry-minimal", true)
end
--bzgas
if mods["bzgas"] then
  overwrite_settings("string-setting", "bzgas-more-intermediates", "phenol")
  overwrite_settings("bool-setting", "bzgas-handcraft", true)
end
--bzgold
if mods["bzgold"] then
  overwrite_settings("bool-setting", "bzgold-byproduct", true)
  overwrite_settings("bool-setting", "bzgold-platinum", true)
  overwrite_settings("bool-setting", "bzgold-silver", true)
  overwrite_settings("bool-setting", "bzgold-palladium", true)
  overwrite_settings("bool-setting", "bzgold-catalysis", true)
end
--bzlead
if mods["bzlead"] then
  overwrite_settings("bool-setting", "bzlead-byproduct", true)
  overwrite_settings("string-setting", "bzlead-more-entities", "no")
  overwrite_settings("string-setting", "bzlead-more-ammo", "no")
end
--bzlead
if mods["bzlead"] then
  overwrite_settings("bool-setting", "bzlead-byproduct", true)
  overwrite_settings("string-setting", "bzlead-more-entities", "no")
  overwrite_settings("string-setting", "bzlead-more-ammo", "no")
end
--bzsilicon
if mods["bzsilicon"] then
  overwrite_settings("string-setting", "bzsilicon-more-intermediates", "no")
end
--bztin
if mods["bztin"] then
  overwrite_settings("string-setting", "bztin-more-intermediates", "cable")
end
--bztitanium
if mods["bztitanium"] then
  overwrite_settings("string-setting", "bztitanium-mining-fluid", "lubricant")
  overwrite_settings("int-setting", "bztitanium-mining-fluid-amount", 3)
end
--bztungsten
if mods["bztungsten"] then
  overwrite_settings("string-setting", "bztungsten-more-intermediates", "no")
  overwrite_settings("string-setting", "bztungsten-avoid-military", "yes")
  overwrite_settings("bool-setting", "bztungsten-se-sintering", true)
  overwrite_settings("string-setting", "bztungsten-mining-fluid-k2", "mineral-water")
  overwrite_settings("int-setting", "bztungsten-mining-fluid-amount-k2", 1)
end
--bzzirconium
if mods["bzzirconium"] then
  overwrite_settings("bool-setting", "bzzirconium-byproduct", true)
  overwrite_settings("string-setting", "bzzirconium-enable-intermediates", "yes")
  overwrite_settings("bool-setting", "bzzirconium-early", true)
  overwrite_settings("bool-setting", "bzzirconium-ammo", true)
  overwrite_settings("bool-setting", "bzzirconium-enable-sorting", false)
end
--cargo-ships
if mods["cargo-ships"] then
  overwrite_settings("bool-setting", "deep_oil", true)
  overwrite_settings("string-setting", "oil_richness", "regular")
  overwrite_settings("int-setting", "oil_rig_capacity", 100)
  overwrite_settings("bool-setting", "no_shallow_oil", true)
  overwrite_settings("double-setting", "speed_modifier", 1)
  overwrite_settings("double-setting", "fuel_modifier", 1)
  overwrite_settings("double-setting", "tanker_capacity", 250)
  overwrite_settings("bool-setting", "no_catching_fish", true)
end
--combat-overhaul
if mods["combat-mechanics-overhaul"] then
  overwrite_settings("bool-setting", "spitter-spit-blockable", true)
  overwrite_settings("bool-setting", "worm-spit-blockable", true)
  overwrite_settings("bool-setting", "rockets-blockable", true)
  overwrite_settings("bool-setting", "pools-affect-structures", false)
  overwrite_settings("bool-setting", "pools-affect-flying", false)
  overwrite_settings("bool-setting", "shotguns-hit-friendly", true)
  overwrite_settings("int-setting", "unit-speed", 120)
  overwrite_settings("int-setting", "unit-health", 150)
  overwrite_settings("int-setting", "unit-range", 105)
  overwrite_settings("int-setting", "worm-health", 150)
  overwrite_settings("int-setting", "worm-range", 110)
  overwrite_settings("int-setting", "spawner-health", 110)
end
--companion drones rebalanced
if mods["companion-drones-rebalanced"] then
  overwrite_settings("bool-setting", "start-with-companions", true)
  overwrite_settings("string-setting", "equipment-laser-mode", "enabled-start-without")
  overwrite_settings("bool-setting", "start-companions-has-shield", false)
end
--IfNickel
if mods["IfNickel"] then
  overwrite_settings("bool-setting", "ifnickel-experimental-intermediates", true)
end
--k2
if mods["Krastorio2"] then
  overwrite_settings("string-setting", "kr-stack-size", "No changes")
  overwrite_settings("int-setting", "kr-long-hands", 1)
  overwrite_settings("int-setting", "kr-bonus-inventory", 0)
  overwrite_settings("int-setting", "kr-cargo-wagon-bonus", 0)
  overwrite_settings("bool-setting", "kr-bonus-items", true)
  overwrite_settings("bool-setting", "kr-loaders", true)
  overwrite_settings("bool-setting", "kr-containers", false)
  overwrite_settings("bool-setting", "kr-tech-multiplier-everywhere", false)
  overwrite_settings("string-setting", "kr-automation-science-pack-recipe", "Krastorio 2")
  overwrite_settings("string-setting", "kr-logistic-science-pack-recipe", "Krastorio 2")
  overwrite_settings("string-setting", "kr-military-science-pack-recipe", "Krastorio 2")
  overwrite_settings("string-setting", "kr-chemical-science-pack-recipe", "Krastorio 2")
  overwrite_settings("string-setting", "kr-production-science-pack-recipe", "Krastorio 2")
  overwrite_settings("string-setting", "kr-utility-science-pack-recipe", "Krastorio 2")
  overwrite_settings("bool-setting", "kr-rebalance-vehicles&fuels", true)
  overwrite_settings("bool-setting", "kr-rebalance-radar", true)
  overwrite_settings("bool-setting", "kr-rebalance-fuels", true)
  overwrite_settings("bool-setting", "kr-electric-poles-changes", true)
  overwrite_settings("bool-setting", "kr-damage-and-ammo", true)
  overwrite_settings("bool-setting", "kr-pipes-and-belts-changes", true)
  overwrite_settings("bool-setting", "kr-more-realistic-weapon", true)
  overwrite_settings("bool-setting", "kr-finite-oil", true)
  overwrite_settings("bool-setting", "kr-peaceful-mode", false)
  overwrite_settings("bool-setting", "kr-infinite-technology", true)
  overwrite_settings("bool-setting", "kr-spidertron-exoskeleton", false)
end
--wide chest
if mods["WideChests"] then
  overwrite_settings("int-setting", "max-chest-width", 27)
  overwrite_settings("int-setting", "max-chest-height", 27)
  overwrite_settings("int-setting", "max-chest-area", 27)
  overwrite_settings("double-setting", "inventory-size-multiplier", 1.0)
  overwrite_settings("int-setting", "inventory-size-limit", 500)
end
--rampant fixed
if mods["RampantFixed"] then
  overwrite_settings("bool-setting", "rampantFixed--agressiveStart", true)
  overwrite_settings("bool-setting", "rampantFixed--disableCollidingProjectiles", true)
  overwrite_settings("bool-setting", "rampantFixed--useDumbProjectiles", true)
  overwrite_settings("bool-setting", "rampantFixed--useBlockableSteamAttacks", true)
  overwrite_settings("int-setting", "rampantFixed--attackWaveMaxSize", 75)
  overwrite_settings("int-setting", "rampantFixed--attackWaveMaxSizeEvoPercent", 100)
  overwrite_settings("int-setting", "rampantFixed--maxNumberOfSquads", 10)
  overwrite_settings("int-setting", "rampantFixed--maxNumberOfBuilders", 10)
  overwrite_settings("int-setting", "rampantFixed--unitAndSpawnerFadeTime", 10)
  overwrite_settings("bool-setting", "rampantFixed--enableSwarme", true)
  overwrite_settings("bool-setting", "rampantFixed--enableShrinkNestsAndWorms", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-curvedRail", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-straightRail", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-bigElectricPole", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-railSignals", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-railChainSignals", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-trainStops", true)
  overwrite_settings("bool-setting", "rampantFixed--safeBuildings-lamps", false)
  overwrite_settings("bool-setting", "rampantFixed--addWallResistanceAcid", true)
  overwrite_settings("bool-setting", "rampantFixed--allowOtherEnemies", false)
  overwrite_settings("bool-setting", "rampantFixed--newEnemiesSide", "MIXED")
  overwrite_settings("int-setting", "rampantFixed--newEnemyVariations", 1)
  --how strong biters can get, mostly affects health
  overwrite_settings("int-setting", "rampantFixed--tierStart", 1)
  --how strong biters can get, mostly affects health
  overwrite_settings("int-setting", "rampantFixed--tierEnd", 5)
  overwrite_settings("double-setting", "rampantFixed--aiPointsScaler", 1.0)
  overwrite_settings("string-setting", "rampantFixed--aiDifficulty", "Hard")
  overwrite_settings("bool-setting", "rampantFixed--allowLongRangeImmunity", true)
  overwrite_settings("int-setting", "rampantFixed--longRangeImmunity_efficiency", 95)
  overwrite_settings("bool-setting", "rampantFixed--allowOneshotProtection", true)
  overwrite_settings("int-setting", "rampantFixed--oneshotProtection_efficiency", 90)
  overwrite_settings("bool-setting", "rampantFixed--acidEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--laserEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--electricEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--suicideEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--fastEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--waspEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--spawnerEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--trollEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--energyThiefEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--fireEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--ArachnidsEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--physicalEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--infernoEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--poisonEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--nuclearEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--JuggernautEnemy", true)
  overwrite_settings("bool-setting", "rampantFixed--unitSpawnerBreath", true)
  overwrite_settings("bool-setting", "rampantFixed--enableMigration", true)
  overwrite_settings("bool-setting", "rampantFixed--peacefulAIToggle", false)
  overwrite_settings("bool-setting", "rampantFixed--peacePeriod", 20)
  overwrite_settings("bool-setting", "rampantFixed--raidAIToggle", true)
  overwrite_settings("bool-setting", "rampantFixed--siegeAIToggle", true)
  overwrite_settings("bool-setting", "rampantFixed--undergroundAttack", false)
  overwrite_settings("double-setting", "rampantFixed--undergroundAttackProbability", 0.15)
  overwrite_settings("bool-setting", "rampantFixed--permanentNocturnal", false)
  overwrite_settings("bool-setting", "rampantFixed--allowDaytimePlayerHunting", true)
  overwrite_settings("bool-setting", "rampantFixed--allowDaytimeNonRampantActions", true)
  overwrite_settings("bool-setting", "rampantFixed--aiDifficulty", "Hard")
  overwrite_settings("bool-setting", "rampantFixed--showDisableNewEnemiesButton", false)
  overwrite_settings("double-setting", "rampantFixed--settlementsProbability", 0.400)
  overwrite_settings("double-setting", "rampantFixed--vengenceProbabilityPercent", 0.04)
  overwrite_settings("double-setting", "rampantFixed--chainVengenceCoefficient", 0.6)
  overwrite_settings("bool-setting", "rampantFixed--removeBloodParticles", true)
  overwrite_settings("bool-setting", "rampantFixed--fireSafety-flamethrower", true)
  overwrite_settings("bool-setting", "rampantFixed--rampantArsenalRebalance", true)
  overwrite_settings("bool-setting", "rampantFixed--unkillableLogisticRobots", false)
  overwrite_settings("bool-setting", "rampantFixed--unkillableConstructionRobots", false)
  overwrite_settings("double-setting", "rampantFixed--unitBiterHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitBiterHealingScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitBiterSpeedScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitBiterDamageScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitBiterRangeScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpitterHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpitterHealingScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpitterSpeedScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpitterDamageScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpitterRangeScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitDroneHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitDroneHealingScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitDroneSpeedScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitDroneDamageScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitDroneRangeScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitWormHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitWormHealingScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitWormDamageScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitWormRangeScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpawnerHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpawnerHealingScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpawnerOwnedScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpawnerSpawnScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitSpawnerRespawnScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitHiveRespawnScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitHiveHealthScaler", 1.0)
  overwrite_settings("double-setting", "rampantFixed--unitHiveHealingScaler", 1.0)
  overwrite_settings("bool-setting", "rampantFixed--attackWaveGenerationUsePlayerProximity", true)
  overwrite_settings("double-setting", "rampantFixed--attackPlayerThreshold", 20)
  overwrite_settings("bool-setting", "rampantFixed--newEnemies", true)
end
--robot-attrition
if mods["robot_attrition"] then
  overwrite_settings("double-setting", "robot-attrition-factor", 1)
  overwrite_settings("string-setting", "robot-attrition-repair", "Disabled")
end
--rpg-system
if mods["RPGsystem"] then
  overwrite_settings("bool-setting", "charxpmod_enable_damage_attribs", true)
  overwrite_settings("int-setting", "charxpmod_LV_Health_Bonus", 30)
  overwrite_settings("double-setting", "charxpmod_LV_Armor_Bonus", 2)
  overwrite_settings("int-setting", "charxpmod_LV_Run_Speed", 10)
  overwrite_settings("int-setting", "charxpmod_LV_Damage_Bonus", 4)
  overwrite_settings("double-setting", "charxpmod_LV_Damage_Critical", 0.5)
  overwrite_settings("int-setting", "charxpmod_LV_Magic", 1)
  overwrite_settings("int-setting", "charxpmod_LV_Craft_Speed", 15)
  overwrite_settings("int-setting", "charxpmod_LV_Mining_Speed", 10)
  overwrite_settings("int-setting", "charxpmod_LV_Reach_Dist", 1)
  overwrite_settings("int-setting", "charxpmod_LV_Inv_Bonus", 5)
  overwrite_settings("int-setting", "charxpmod_LV_InvTrash_Bonus", 5)
  overwrite_settings("int-setting", "charxpmod_LV_Robot_Bonus", 5)
  overwrite_settings("int-setting", "charxpmod_xp_maxlevel", 50)
  overwrite_settings("int-setting", "charxpmod_xp_maxlevel_ability", 20)
  overwrite_settings("int-setting", "charxpmod_xpinilevel", 600)
  overwrite_settings("double-setting", "charxpmod_xpmult", 1.61)
  overwrite_settings("double-setting", "charxpmod_xp_mp_reductor", 0.023)
  overwrite_settings("double-setting", "charxpmod_xp_multiplier_bonus", 1)
  overwrite_settings("bool-setting", "charxpmod_allow_xp_by_tech", true)
  overwrite_settings("bool-setting", "charxpmod_allow_xp_by_kill", true)
  overwrite_settings("bool-setting", "charxpmod_allow_xp_by_rocket", true)
  overwrite_settings("bool-setting", "charxpmod_allow_xp_by_mining", true)
  overwrite_settings("bool-setting", "charxpmod_enable_potion_loot", false)
  overwrite_settings("int-setting", "charxpmod_death_penal", 20)
  overwrite_settings("int-setting", "charxpmod_afk", 15)
  overwrite_settings("bool-setting", "charxpmod_time_ratio_xp", true)
  overwrite_settings("bool-setting", "charxpmod_print_critical", true)
end
--se
if mods["space-exploration"] then
  overwrite_settings("int-setting", "se-space-pipe-capacity", 100)
  overwrite_settings("int-setting", "se-deep-space-belt-speed-2", 90)
  overwrite_settings("bool-setting", "se-spawn-small-resources", true)
  overwrite_settings("int-setting", "se-meteor-interval", 30)
  overwrite_settings("int-setting", "se-cmes-max-frequency", 36)
  overwrite_settings("bool-setting", "shotguns-hit-friendly", false)
end
