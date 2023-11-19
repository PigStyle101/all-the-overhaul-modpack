local regroup = require("functions/regroup")

regroup.create_subgroup("intermediate-product", "intermediate-products", "raw-01")
regroup.create_subgroup("cable", "intermediate-products", "raw-02")
regroup.create_subgroup("battery", "intermediate-products", "raw-03")
regroup.create_subgroup("gear-wheel", "intermediate-products", "raw-04")
regroup.create_subgroup("frame-components", "intermediate-products", "raw-05")
regroup.create_subgroup("gearbox", "intermediate-products", "raw-06")
regroup.create_subgroup("plumbing-components", "intermediate-products", "raw-07")
regroup.create_subgroup("articulated-components", "intermediate-products", "raw-08")
regroup.create_subgroup("rotary-components", "intermediate-products", "raw-09")
regroup.create_subgroup("engine-components", "intermediate-products", "raw-10")
regroup.create_subgroup("electronic", "intermediate-products", "raw-11")
regroup.create_subgroup("specialist-assembling", "intermediate-products", "raw-12")
regroup.create_subgroup("advanced-assembling", "intermediate-products", "raw-13")
regroup.create_subgroup("electronic-components", "intermediate-products", "raw-14")
regroup.create_subgroup("processor", "intermediate-products", "raw-15")
regroup.create_subgroup("rocket-part", "intermediate-products", "raw-16")
regroup.create_subgroup("intersurface-part", "intermediate-products", "raw-17")
regroup.create_subgroup("canister", "intermediate-products", "raw-18")
regroup.create_subgroup("canister-fill", "intermediate-products", "raw-19")
regroup.create_subgroup("observation-frame", "intermediate-products", "raw-20")
regroup.create_subgroup("thermofluid", "intermediate-products", "raw-21")
regroup.create_subgroup("specimen", "intermediate-products", "raw-22")
regroup.create_subgroup("arcosphere", "intermediate-products", "raw-23")
regroup.create_subgroup("arcosphere-folding", "intermediate-products", "raw-24")
regroup.create_subgroup("recycling", "intermediate-products", "raw-25")
regroup.create_subgroup("advanced-particle-stream", "intermediate-products", "raw-26")

-- intermediate-product
regroup.set_subgroup_to_prototype("fi_modules_base_item", "intermediate-product", "a-1")
regroup.set_subgroup_to_prototype("fi_modules_base_recipe", "intermediate-product", "a-1")
regroup.set_subgroup_to_prototype("fi_modules_core_item", "intermediate-product", "a-2")
regroup.set_subgroup_to_prototype("fi_modules_core_recipe", "intermediate-product", "a-2")

-- cable
regroup.set_subgroup_to_prototype("copper-cable", "cable", "01")
regroup.set_subgroup_to_prototype("aluminum-cable", "cable", "02")
regroup.set_subgroup_to_prototype("siver-wire", "cable", "03")
regroup.set_subgroup_to_prototype("tinned-cable", "cable", "04")
regroup.set_subgroup_to_prototype("optical-fiber", "cable", "05")
regroup.set_subgroup_to_prototype("acsr-cable", "cable", "06")
regroup.set_subgroup_to_prototype("se-holmium-cable", "cable", "07")
regroup.set_subgroup_to_prototype("se-superconductive-cable", "cable", "08")

-- battery
regroup.set_subgroup_to_prototype("battery", "battery", "01")
regroup.set_subgroup_to_prototype("el_lithium_basic_battery_recipe", "battery", "012")
regroup.set_subgroup_to_prototype("el_lithium_battery", "battery", "02")
regroup.set_subgroup_to_prototype("el_lithium_battery_recipe", "battery", "02")
regroup.set_subgroup_to_prototype("solar-cell", "battery", "03")
regroup.set_subgroup_to_prototype("lithium-sulfur-battery", "battery", "04")

-- gear-wheel
regroup.set_subgroup_to_prototype("iron-gear-wheel", "gear-wheel", "01")
regroup.set_subgroup_to_prototype("steel-gear-wheel", "gear-wheel", "02")
regroup.set_subgroup_to_prototype("imersium-gear-wheel", "gear-wheel", "03")

-- frame-components
regroup.set_subgroup_to_prototype("iron-stick", "frame-components", "01")
regroup.set_subgroup_to_prototype("iron-beam", "frame-components", "02")
regroup.set_subgroup_to_prototype("steel-beam", "frame-components", "03")
regroup.set_subgroup_to_prototype("galvanized-steel-plate", "frame-components", "04")
regroup.set_subgroup_to_prototype("imersium-beam", "frame-components", "05")
regroup.set_subgroup_to_prototype("hardened-hull", "frame-components", "06")
regroup.set_subgroup_to_prototype("hardened-hull-iridium", "frame-components", "07")

-- gearbox
regroup.set_subgroup_to_prototype("gearbox", "gearbox", "01")
regroup.set_subgroup_to_prototype("advanced-gearbox", "gearbox", "02")
regroup.set_subgroup_to_prototype("elite-gearbox", "gearbox", "03")
regroup.set_subgroup_to_prototype("gearbox-iridium", "gearbox", "04")

-- articulated-components
regroup.set_subgroup_to_prototype("ai-core", "articulated-components", "c-1")
regroup.set_subgroup_to_prototype("fu_miner_fuel_item", "articulated-components", "p")
regroup.set_subgroup_to_prototype("fu_drill_recipe", "articulated-components", "p")

-- rocket-part
regroup.set_subgroup_to_prototype("low-density-structure", "rocket-part", "01")
regroup.set_subgroup_to_prototype("low-density-structure-nanotubes", "rocket-part", "012")
regroup.set_subgroup_to_prototype("se-low-density-structure-beryllium", "rocket-part", "013")
regroup.set_subgroup_to_prototype("fi_low-density-structure_recipe", "rocket-part", "014")

-- electronic-components
regroup.set_subgroup_to_prototype("electronic-components", "electronic-components", "01")
regroup.set_subgroup_to_prototype("electronic-components-lithium", "electronic-components", "011")
regroup.set_subgroup_to_prototype("solder", "electronic-components", "02")
regroup.set_subgroup_to_prototype("pcb-solder", "electronic-components", "03")
regroup.set_subgroup_to_prototype("insulated-cable", "electronic-components", "04")
regroup.set_subgroup_to_prototype("basic-electronic-components", "electronic-components", "05")
regroup.set_subgroup_to_prototype("BOBMD-electronic-components", "electronic-components", "06")
regroup.set_subgroup_to_prototype("intergrated-electronics", "electronic-components", "07")
regroup.set_subgroup_to_prototype("processing-electronics", "electronic-components", "08")
regroup.set_subgroup_to_prototype("phenolic-board", "electronic-components", "09")
regroup.set_subgroup_to_prototype("phenolic-board-stone", "electronic-components", "092")
regroup.set_subgroup_to_prototype("fibreglass-board", "electronic-components", "10")
regroup.set_subgroup_to_prototype("basic-circuit-board", "electronic-components", "11")
regroup.set_subgroup_to_prototype("circuit-board", "electronic-components", "12")
regroup.set_subgroup_to_prototype("superior-circuit-board", "electronic-components", "13")
regroup.set_subgroup_to_prototype("multi-layer-circuit-board", "electronic-components", "14")
regroup.set_subgroup_to_prototype("pcb-substrate", "electronic-components", "15")
regroup.set_subgroup_to_prototype("mainboard", "electronic-components", "16")
regroup.set_subgroup_to_prototype("mainboard-holmium", "electronic-components", "162")
regroup.set_subgroup_to_prototype("mlcc", "electronic-components", "17")
regroup.set_subgroup_to_prototype("temperature-sensor", "electronic-components", "18")
regroup.set_subgroup_to_prototype("cpu", "electronic-components", "19")
regroup.set_subgroup_to_prototype("cpu-holmium", "electronic-components", "191")

-- processor
regroup.set_subgroup_to_prototype("electronic-circuit", "processor", "01")
regroup.set_subgroup_to_prototype("electronic-circuit-silver", "processor", "012")
regroup.set_subgroup_to_prototype("advanced-circuit", "processor", "02")
regroup.set_subgroup_to_prototype("processing-unit", "processor", "03")
regroup.set_subgroup_to_prototype("advanced-processing-unit", "processor", "03")

-- canister
regroup.set_subgroup_to_prototype("empty-barrel", "canister", "z-00")

-- advanced-particle-stream
regroup.set_subgroup_to_prototype("se-kr-experimental-matter-processing", "advanced-particle-stream")

-- empty-magazine
regroup.set_subgroup_to_prototype("empty-magazine", "empty-magazine", "01")
regroup.set_subgroup_to_prototype("empty-recipe", "empty-magazine", "01")
regroup.set_subgroup_to_prototype("empty-shotgun-shell", "empty-magazine", "02")
regroup.set_subgroup_to_prototype("empty-shotgun-recipe", "empty-magazine", "02")
regroup.set_subgroup_to_prototype("empty-high-capacity-magazine", "empty-magazine", "03")
regroup.set_subgroup_to_prototype("empty-high-capacity-recipe", "empty-magazine", "03")
regroup.set_subgroup_to_prototype("empty-high-capacity-shotgun-shell", "empty-magazine", "04")
regroup.set_subgroup_to_prototype("empty-high-capacity-shotgun-recipe", "empty-magazine", "04")
regroup.set_subgroup_to_prototype("advanced-magazine", "empty-magazine", "05")
regroup.set_subgroup_to_prototype("advanced-recipe", "empty-magazine", "05")
regroup.set_subgroup_to_prototype("advanced-high-capacity-magazine", "empty-magazine", "06")
regroup.set_subgroup_to_prototype("advanced-high-capacity-recipe", "empty-magazine", "06")
