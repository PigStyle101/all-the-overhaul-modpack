local regroup = require("functions/regroup")

data:extend {
    {
        type = "item-group",
        name = "module",
        icon = "__248k__/ressources/fission/fi_modules/fi_modules_productivity_6.png",
        icon_size = 64,
        icon_mipmaps = 1,
    },
}

regroup.create_subgroup("module-speed", "module", "raw-01")
regroup.create_subgroup("module-productivity", "module", "raw-02")
regroup.create_subgroup("module-effectivity", "module", "raw-03")
regroup.create_subgroup("module-248k", "module", "raw-04")
regroup.create_subgroup("beacons", "module", "raw-05")
regroup.create_subgroup("el_item_subgroup_f", "module", "raw-06")
regroup.create_subgroup("fi_item_subgroup_k", "module", "raw-07")
regroup.create_subgroup("fu_item_subgroup_k", "module", "raw-08")
regroup.create_subgroup("ki_cpu_fluid", "module", "raw-09")
regroup.create_subgroup("ki_memory_fluid", "module", "raw-10")
regroup.create_subgroup("ki_circuit_fluid", "module", "raw-11")
regroup.create_subgroup("ki_circuit_fluid_2", "module", "raw-12")
regroup.create_subgroup("ki_circuit_fluid_3", "module", "raw-13")

-- module-248k
regroup.set_subgroup_to_prototype("fi_modules_productivity_1_item", "module-248k", "01")
regroup.set_subgroup_to_prototype("fi_modules_productivity_1_recipe", "module-248k", "01")
regroup.set_subgroup_to_prototype("fi_modules_productivity_2_item", "module-248k", "02")
regroup.set_subgroup_to_prototype("fi_modules_productivity_2_recipe", "module-248k", "02")
regroup.set_subgroup_to_prototype("fi_modules_productivity_3_item", "module-248k", "03")
regroup.set_subgroup_to_prototype("fi_modules_productivity_3_recipe", "module-248k", "03")
regroup.set_subgroup_to_prototype("fi_modules_productivity_4_item", "module-248k", "04")
regroup.set_subgroup_to_prototype("fi_modules_productivity_4_recipe", "module-248k", "04")
regroup.set_subgroup_to_prototype("fi_modules_productivity_5_item", "module-248k", "05")
regroup.set_subgroup_to_prototype("fi_modules_productivity_5_recipe", "module-248k", "05")
regroup.set_subgroup_to_prototype("fi_modules_productivity_6_item", "module-248k", "06")
regroup.set_subgroup_to_prototype("fi_modules_productivity_6_recipe", "module-248k", "06")

-- beacons
regroup.set_subgroup_to_prototype("beacon", "beacons", "01")
regroup.set_subgroup_to_prototype("kr-singularity-beacon", "beacons", "02")
regroup.set_subgroup_to_prototype("se-compact-beacon", "beacons", "02")
regroup.set_subgroup_to_prototype("se-compact-beacon-2", "beacons", "03")
regroup.set_subgroup_to_prototype("se-wide-beacon", "beacons", "04")
regroup.set_subgroup_to_prototype("se-wide-beacon-2", "beacons", "05")
regroup.set_subgroup_to_prototype("el_ki_beacon_item", "beacons", "06")
regroup.set_subgroup_to_prototype("el_ki_beacon_recipe", "beacons", "06")
regroup.set_subgroup_to_prototype("fi_ki_beacon_item", "beacons", "07")
regroup.set_subgroup_to_prototype("fi_ki_beacon_recipe", "beacons", "07")
regroup.set_subgroup_to_prototype("fu_ki_beacon_item", "beacons", "08")
regroup.set_subgroup_to_prototype("fu_ki_beacon_recipe", "beacons", "08")

-- ki_cpu_fluid
regroup.set_subgroup_to_prototype("el_ki_cpu_fluid_recipe", "ki_cpu_fluid", "01")
regroup.set_subgroup_to_prototype("el_ki_cpu_fluid_recipe_1", "ki_cpu_fluid", "02")
regroup.set_subgroup_to_prototype("el_ki_cpu_fluid_recipe_2", "ki_cpu_fluid", "03")
regroup.set_subgroup_to_prototype("el_ki_cpu_fluid_recipe_3", "ki_cpu_fluid", "04")

-- ki_memory_fluid
regroup.set_subgroup_to_prototype("el_ki_memory_fluid_recipe", "ki_memory_fluid", "01")
regroup.set_subgroup_to_prototype("el_ki_memory_fluid_recipe_1", "ki_memory_fluid", "02")
regroup.set_subgroup_to_prototype("el_ki_memory_fluid_recipe_2", "ki_memory_fluid", "03")
regroup.set_subgroup_to_prototype("el_ki_memory_fluid_recipe_3", "ki_memory_fluid", "04")

-- ki_circuit_fluid
regroup.set_subgroup_to_prototype("el_ki_circuit_fluid_recipe", "ki_circuit_fluid", "01")
regroup.set_subgroup_to_prototype("el_ki_circuit_fluid_recipe_1", "ki_circuit_fluid", "02")
regroup.set_subgroup_to_prototype("el_ki_circuit_fluid_recipe_2", "ki_circuit_fluid", "03")
regroup.set_subgroup_to_prototype("el_ki_circuit_fluid_recipe_3", "ki_circuit_fluid", "04")

-- ki_circuit_fluid_2
regroup.set_subgroup_to_prototype("fi_ki_circuit_fluid_recipe", "ki_circuit_fluid_2", "01")
regroup.set_subgroup_to_prototype("fi_ki_circuit_fluid_recipe_1", "ki_circuit_fluid_2", "02")
regroup.set_subgroup_to_prototype("fi_ki_circuit_fluid_recipe_2", "ki_circuit_fluid_2", "03")
regroup.set_subgroup_to_prototype("fi_ki_circuit_fluid_recipe_3", "ki_circuit_fluid_2", "04")

-- ki_circuit_fluid_3
regroup.set_subgroup_to_prototype("fu_ki_circuit_fluid_recipe", "ki_circuit_fluid_3", "01")
regroup.set_subgroup_to_prototype("fu_ki_circuit_fluid_recipe_1", "ki_circuit_fluid_3", "02")
regroup.set_subgroup_to_prototype("fu_ki_circuit_fluid_recipe_2", "ki_circuit_fluid_3", "03")
regroup.set_subgroup_to_prototype("fu_ki_circuit_fluid_recipe_3", "ki_circuit_fluid_3", "04")
