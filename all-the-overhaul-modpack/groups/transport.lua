local regroup = require("functions/regroup")

data:extend {
    {
        type = "item-group",
        name = "transport",
        icon = "__248k__/ressources/electronic/el_diesel_train/el_diesel_train_entity_icon.png",
        icon_size = 64,
        icon_mipmaps = 1,
    },
}

regroup.create_subgroup("transport-locomotives", "transport", "raw-01")
regroup.create_subgroup("transport-wagons", "transport", "raw-02")
regroup.create_subgroup("transport-fluid-wagons", "transport", "raw-03")
regroup.create_subgroup("transport-artillery-wagons", "transport", "raw-04")
regroup.create_subgroup("transport-rails", "transport", "raw-05")
regroup.create_subgroup("transport-railway-logic", "transport", "raw-06")
regroup.create_subgroup("transport-drones", "transport", "raw-07")
regroup.create_subgroup("transport-machines", "transport", "raw-08")

-- transport-locomotives
regroup.set_subgroup_to_prototype("locomotive", "transport-locomotives", "01")
regroup.set_subgroup_to_prototype("kr-nuclear-locomotive", "transport-locomotives", "02")
regroup.set_subgroup_to_prototype("nuclear-train-vehicle-rampant-arsenal", "transport-locomotives", "03")
regroup.set_subgroup_to_prototype("el_diesel_train_item", "transport-locomotives", "04")
regroup.set_subgroup_to_prototype("el_diesel_train_recipe", "transport-locomotives", "04")
regroup.set_subgroup_to_prototype("space-locomotive", "transport-locomotives", "05")
regroup.set_subgroup_to_prototype("recipe-space-locomotive", "transport-locomotives", "05")
regroup.set_subgroup_to_prototype("gr_magnet_train_pre_item", "transport-locomotives", "06")
regroup.set_subgroup_to_prototype("gr_magnet_train_pre_recipe", "transport-locomotives", "06")
regroup.set_subgroup_to_prototype("gr_magnet_train_item", "transport-locomotives", "07")
regroup.set_subgroup_to_prototype("gr_magnet_train_recipe", "transport-locomotives", "07")

-- transport-wagons
regroup.set_subgroup_to_prototype("cargo-wagon", "transport-wagons", "01")
regroup.set_subgroup_to_prototype("space-cargo-wagon", "transport-wagons", "02")
regroup.set_subgroup_to_prototype("recipe-space-cargo-wagon", "transport-wagons", "02")
regroup.set_subgroup_to_prototype("gr_magnet_wagon_pre_item", "transport-wagons", "03")
regroup.set_subgroup_to_prototype("gr_magnet_wagon_pre_recipe", "transport-wagons", "03")
regroup.set_subgroup_to_prototype("gr_magnet_wagon_item", "transport-wagons", "04")
regroup.set_subgroup_to_prototype("gr_magnet_wagon_recipe", "transport-wagons", "04")

-- transport-fluid-wagons
regroup.set_subgroup_to_prototype("fluid-wagon", "transport-fluid-wagons", "01")
regroup.set_subgroup_to_prototype("space-fluid-wagon", "transport-fluid-wagons", "02")
regroup.set_subgroup_to_prototype("recipe-space-fluid-wagon", "transport-fluid-wagons", "02")
regroup.set_subgroup_to_prototype("gr_magnet_tanker_pre_item", "transport-fluid-wagons", "03")
regroup.set_subgroup_to_prototype("gr_magnet_tanker_pre_recipe", "transport-fluid-wagons", "03")
regroup.set_subgroup_to_prototype("gr_magnet_tanker_item", "transport-fluid-wagons", "04")
regroup.set_subgroup_to_prototype("gr_magnet_tanker_recipe", "transport-fluid-wagons", "04")

-- transport-artillery-wagons
regroup.set_subgroup_to_prototype("artillery-wagon", "transport-artillery-wagons", "01")

-- transport-rails
--regroup.set_subgroup_to_prototype("bi-rail-wood", "transport-rails", "01")
regroup.set_subgroup_to_prototype("rail", "transport-rails", "01")
--regroup.set_subgroup_to_prototype("bi-rail-wood-to-concrete", "transport-rails", "02")
--regroup.set_subgroup_to_prototype("bi-rail-wood-bridge", "transport-rails", "03")
regroup.set_subgroup_to_prototype("bi-rail-power", "transport-rails", "02")
regroup.set_subgroup_to_prototype("bi-power-to-rail-pole", "transport-rails", "03")
regroup.set_subgroup_to_prototype("se-space-rail", "transport-rails", "04")

-- transport-railway-logic
regroup.set_subgroup_to_prototype("train-stop", "transport-railway-logic", "01")
regroup.set_subgroup_to_prototype("logistic-train-stop", "transport-railway-logic", "02")
regroup.set_subgroup_to_prototype("rail-signal", "transport-railway-logic", "03")
regroup.set_subgroup_to_prototype("rail-chain-signal", "transport-railway-logic", "04")

-- transport-machines
regroup.set_subgroup_to_prototype("car", "transport-machines", "01")
regroup.set_subgroup_to_prototype("advanced-car-vehicle-rampant-arsenal", "transport-machines", "02")
regroup.set_subgroup_to_prototype("nuclear-car-vehicle-rampant-arsenal", "transport-machines", "03")
regroup.set_subgroup_to_prototype("tank", "transport-machines", "04")
regroup.set_subgroup_to_prototype("advanced-tank-vehicle-rampant-arsenal", "transport-machines", "05")
regroup.set_subgroup_to_prototype("nuclear-tank-vehicle-rampant-arsenal", "transport-machines", "06")
regroup.set_subgroup_to_prototype("kr-advanced-tank", "transport-machines", "07")
regroup.set_subgroup_to_prototype("spidertron", "transport-machines", "08")
regroup.set_subgroup_to_prototype("spidertron-remote", "transport-machines", "09")
regroup.set_subgroup_to_prototype("ss-space-spidertron", "transport-machines", "10")
regroup.set_subgroup_to_prototype("sd-spidertron-dock-interface", "transport-machines", "11")
regroup.set_subgroup_to_prototype("ss-spidertron-dock", "transport-machines", "12")
