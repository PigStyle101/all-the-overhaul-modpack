local regroup = require("functions/regroup")

regroup.create_subgroup("chemical", "resources", "raw-01")
regroup.create_subgroup("stone", "resources", "raw-02")
regroup.create_subgroup("lithium", "resources", "raw-03")
regroup.create_subgroup("energy-crystal", "resources", "raw-04")
regroup.create_subgroup("glass", "resources", "raw-05")
regroup.create_subgroup("enrichment", "resources", "raw-06")
regroup.create_subgroup("fuel-cell", "resources", "raw-07")
regroup.create_subgroup("salt", "resources", "raw-08")
regroup.create_subgroup("iron", "resources", "raw-09")
regroup.create_subgroup("steel", "resources", "raw-10")
regroup.create_subgroup("alloys", "resources", "raw-11")
regroup.create_subgroup("brass", "resources", "raw-12")
regroup.create_subgroup("invar", "resources", "raw-13")
regroup.create_subgroup("neodym", "resources", "raw-14")
regroup.create_subgroup("nitinol", "resources", "raw-15")
regroup.create_subgroup("copper", "resources", "raw-16")
regroup.create_subgroup("rare-metals", "resources", "raw-17")
regroup.create_subgroup("carbon", "resources", "raw-18")
regroup.create_subgroup("aluminum", "resources", "raw-19")
regroup.create_subgroup("bismuth", "resources", "raw-20")
regroup.create_subgroup("gold", "resources", "raw-21")
regroup.create_subgroup("lead", "resources", "raw-22")
regroup.create_subgroup("silver", "resources", "raw-23")
regroup.create_subgroup("tin", "resources", "raw-24")
regroup.create_subgroup("titanium", "resources", "raw-25")
regroup.create_subgroup("tungsten", "resources", "raw-26")
regroup.create_subgroup("zinc", "resources", "raw-27")
regroup.create_subgroup("nickel", "resources", "raw-28")
regroup.create_subgroup("zirconium", "resources", "raw-29")
regroup.create_subgroup("uranium", "resources", "raw-30")
regroup.create_subgroup("vulcanite", "resources", "raw-31")
regroup.create_subgroup("cryonite", "resources", "raw-32")
regroup.create_subgroup("imersite", "resources", "raw-33")
regroup.create_subgroup("beryllium", "resources", "raw-34")
regroup.create_subgroup("holmium", "resources", "raw-35")
regroup.create_subgroup("iridium", "resources", "raw-36")
regroup.create_subgroup("naquium", "resources", "raw-37")
regroup.create_subgroup("vitamelange", "resources", "raw-38")
regroup.create_subgroup("raw-resource", "resources", "raw-39")
regroup.create_subgroup("raw-material", "resources", "raw-40")
regroup.create_subgroup("stream", "resources", "raw-41")
regroup.create_subgroup("materialisation", "resources", "raw-42")

-- chemical
regroup.set_subgroup_to_prototype("se-core-fragment-omni", "chemical", "01")
regroup.set_subgroup_to_prototype("se-core-fragment-coal", "chemical", "02")
regroup.set_subgroup_to_prototype("se-core-fragment-mineral-water", "chemical", "03")
regroup.set_subgroup_to_prototype("se-core-fragment-gas", "chemical", "04")
regroup.set_subgroup_to_prototype("se-core-fragment-crude-oil", "chemical", "05")
regroup.set_subgroup_to_prototype("coal", "chemical", "06")
regroup.set_subgroup_to_prototype("se-thermodynamics-coal", "chemical", "061")
regroup.set_subgroup_to_prototype("se-vitalic-hydrocarbon-extraction", "chemical", "062")
regroup.set_subgroup_to_prototype("coal-filtration", "chemical", "063")
regroup.set_subgroup_to_prototype("fi_crushed_coal_item", "chemical", "07")
regroup.set_subgroup_to_prototype("fi_crushed_coal_recipe", "chemical", "07")
regroup.set_subgroup_to_prototype("wood", "chemical", "08")
regroup.set_subgroup_to_prototype("kr-grow-wood-with-water", "chemical", "081")
regroup.set_subgroup_to_prototype("kr-grow-wood-with-sand", "chemical", "082")
regroup.set_subgroup_to_prototype("kr-grow-wood-plus", "chemical", "083")
regroup.set_subgroup_to_prototype("bi-woodpulp", "chemical", "09")
regroup.set_subgroup_to_prototype("coke", "chemical", "10")
regroup.set_subgroup_to_prototype("bi-ash", "chemical", "11")
regroup.set_subgroup_to_prototype("wood-charcoal", "chemical", "12")
regroup.set_subgroup_to_prototype("pellet-coke", "chemical", "14")
regroup.set_subgroup_to_prototype("biomass", "chemical", "15")
regroup.set_subgroup_to_prototype("kr-biomass-growing", "chemical", "15")
regroup.set_subgroup_to_prototype("tritium", "chemical", "16")
regroup.set_subgroup_to_prototype("explosives", "chemical", "17")

-- stone
regroup.set_subgroup_to_prototype("se-core-fragment-stone", "stone", "01")
regroup.set_subgroup_to_prototype("stone", "stone", "021")
regroup.set_subgroup_to_prototype("fu_materials_stone", "stone", "022")
regroup.set_subgroup_to_prototype("fu_crush_stone_recipe", "stone", "021")
regroup.set_subgroup_to_prototype("fu_extract_stone_recipe", "stone", "022")
regroup.set_subgroup_to_prototype("fu_mining_recipe", "stone", "023")
regroup.set_subgroup_to_prototype("sand", "stone", "03")
regroup.set_subgroup_to_prototype("sand-from-stone", "stone", "031")
regroup.set_subgroup_to_prototype("fi_crushed_stone_item", "stone", "04")
regroup.set_subgroup_to_prototype("fi_crushed_stone_recipe", "stone", "04")
regroup.set_subgroup_to_prototype("quartz", "stone", "05")
regroup.set_subgroup_to_prototype("silicon", "stone", "06")
regroup.set_subgroup_to_prototype("silicon-vulcanite", "stone", "062")
regroup.set_subgroup_to_prototype("silica", "stone", "07")
regroup.set_subgroup_to_prototype("silicon-wafer", "stone", "08")
regroup.set_subgroup_to_prototype("stone-tablet", "stone", "09")
regroup.set_subgroup_to_prototype("stone-crushed", "stone", "10")
regroup.set_subgroup_to_prototype("el_materials_ceramic", "stone", "11")
regroup.set_subgroup_to_prototype("el_ceramic_1_recipe", "stone", "111")
regroup.set_subgroup_to_prototype("el_ceramic_recipe", "stone", "112")
regroup.set_subgroup_to_prototype("fi_ceramic_recipe", "stone", "113")
regroup.set_subgroup_to_prototype("el_materials_ALK", "stone", "12")
regroup.set_subgroup_to_prototype("el_ALK_recipe", "stone", "12")

-- lithium
regroup.set_subgroup_to_prototype("lithium", "lithium", "01")
regroup.set_subgroup_to_prototype("lithium-chloride", "lithium", "02")
regroup.set_subgroup_to_prototype("lithium-chloride", "lithium", "021")
regroup.set_subgroup_to_prototype("fi_lithium_to_k2", "lithium", "022")
regroup.set_subgroup_to_prototype("el_lithium_item", "lithium", "03")
regroup.set_subgroup_to_prototype("el_lithium_ore_recipe", "lithium", "03")
regroup.set_subgroup_to_prototype("fi_crushed_lithium_item", "lithium", "04")
regroup.set_subgroup_to_prototype("fi_crushed_lithium_recipe", "lithium", "04")

-- energy-crystal
regroup.set_subgroup_to_prototype("el_energy_crystal_item", "energy-crystal", "01")
regroup.set_subgroup_to_prototype("el_purify_stone_acidic_recipe", "energy-crystal", "011")
regroup.set_subgroup_to_prototype("el_grow_energy_crystal_recipe", "energy-crystal", "012")
regroup.set_subgroup_to_prototype("el_energy_crystal_charged_item", "energy-crystal", "02")
regroup.set_subgroup_to_prototype("el_charge_crystal_recipe", "energy-crystal", "02")
regroup.set_subgroup_to_prototype("fi_crushed_crystal_item", "energy-crystal", "03")
regroup.set_subgroup_to_prototype("fi_crushed_crystal_recipe", "energy-crystal", "03")
regroup.set_subgroup_to_prototype("fi_energy_crystal_item", "energy-crystal", "04")
regroup.set_subgroup_to_prototype("fi_energy_crystal_recipe", "energy-crystal", "04")
regroup.set_subgroup_to_prototype("fi_energy_crystal_charged_item", "energy-crystal", "05")
regroup.set_subgroup_to_prototype("fi_charge_crystal_recipe", "energy-crystal", "05")
regroup.set_subgroup_to_prototype("fi_crystal_fluid_recipe", "energy-crystal", "06")

-- glass
regroup.set_subgroup_to_prototype("glass", "glass", "01")
regroup.set_subgroup_to_prototype("se-glass-vulcanite", "glass", "012")
regroup.set_subgroup_to_prototype("fi_materials_glass", "glass", "02")
regroup.set_subgroup_to_prototype("fi_arc_glass_recipe", "glass", "021")
regroup.set_subgroup_to_prototype("fi_cast_glass_recipe", "glass", "022")
regroup.set_subgroup_to_prototype("fi_crushed_glass_item", "glass", "03")
regroup.set_subgroup_to_prototype("fi_crushed_glass_recipe", "glass", "03")

-- enrichment
regroup.set_subgroup_to_prototype("fi_materials_flourite", "enrichment", "01")
regroup.set_subgroup_to_prototype("fi_flourite_recipe", "enrichment", "01")
regroup.set_subgroup_to_prototype("fi_materials_rich_powder", "enrichment", "02")
regroup.set_subgroup_to_prototype("fi_rich_powder_recept", "enrichment", "02")
regroup.set_subgroup_to_prototype("fi_materials_empty_solution", "enrichment", "03")
regroup.set_subgroup_to_prototype("fi_empty_solution_recept", "enrichment", "03")
regroup.set_subgroup_to_prototype("fi_materials_solution", "enrichment", "04")
regroup.set_subgroup_to_prototype("fi_solution_recept", "enrichment", "04")
regroup.set_subgroup_to_prototype("fi_materials_dirty_solution", "enrichment", "05")
regroup.set_subgroup_to_prototype("fi_dirty_solution_pack_recipe", "enrichment", "05")
regroup.set_subgroup_to_prototype("fi_materials_rich_solution", "enrichment", "06")
regroup.set_subgroup_to_prototype("fi_rich_solution_pack_recipe", "enrichment", "06")
regroup.set_subgroup_to_prototype("fi_purify_stone_recipe", "enrichment", "071")
regroup.set_subgroup_to_prototype("fi_extract_rich_powder_recipe", "enrichment", "072")
regroup.set_subgroup_to_prototype("fi_rich_solution_unpack_recipe", "enrichment", "073")
regroup.set_subgroup_to_prototype("fi_strong_acid_recipe", "enrichment", "081")
regroup.set_subgroup_to_prototype("fi_dirty_solution_unpack_recipe", "enrichment", "091")

-- fuel cell
regroup.set_subgroup_to_prototype("uranium-fuel-cell", "fuel-cell", "01")
regroup.set_subgroup_to_prototype("fi_basic_fuel_item", "fuel-cell", "02")
regroup.set_subgroup_to_prototype("fi_basic_fuel_recipe", "fuel-cell", "02")
regroup.set_subgroup_to_prototype("fi_basic_thorium_fuel_item", "fuel-cell", "03")
regroup.set_subgroup_to_prototype("fi_basic_thorium_fuel_recipe", "fuel-cell", "03")
regroup.set_subgroup_to_prototype("fi_advanced_fuel_item", "fuel-cell", "04")
regroup.set_subgroup_to_prototype("fi_advanced_fuel_recipe", "fuel-cell", "04")
regroup.set_subgroup_to_prototype("fi_advanced_thorium_fuel_item", "fuel-cell", "05")
regroup.set_subgroup_to_prototype("fi_advanced_thorium_fuel_recipe", "fuel-cell", "05")
regroup.set_subgroup_to_prototype("fi_pure_fuel_item", "fuel-cell", "06")
regroup.set_subgroup_to_prototype("fi_pure_fuel_recipe", "fuel-cell", "06")
regroup.set_subgroup_to_prototype("used-up-uranium-fuel-cell", "fuel-cell", "07")
regroup.set_subgroup_to_prototype("fi_used_basic_fuel_item", "fuel-cell", "08")
regroup.set_subgroup_to_prototype("fi_used_basic_thorium_fuel_item", "fuel-cell", "09")
regroup.set_subgroup_to_prototype("fi_used__basic_thorium_fuel_recipe", "fuel-cell", "09")
regroup.set_subgroup_to_prototype("fi_used_advanced_fuel_item", "fuel-cell", "10")
regroup.set_subgroup_to_prototype("fi_used_advanced_fuel_recipe", "fuel-cell", "10")
regroup.set_subgroup_to_prototype("fi_used_advanced_thorium_fuel_item", "fuel-cell", "11")
regroup.set_subgroup_to_prototype("fi_used_advanced_thorium_fuel_recipe", "fuel-cell", "11")
regroup.set_subgroup_to_prototype("fi_used_pure_fuel_item", "fuel-cell", "12")
regroup.set_subgroup_to_prototype("fi_used_pure_fuel_recipe", "fuel-cell", "12")
regroup.set_subgroup_to_prototype("fi_materials_waste", "fuel-cell", "13")
regroup.set_subgroup_to_prototype("fi_decay_waste_recipe", "fuel-cell", "13")

-- salt
regroup.set_subgroup_to_prototype("se-core-fragment-salt", "salt", "01")
regroup.set_subgroup_to_prototype("salt", "salt", "02")
regroup.set_subgroup_to_prototype("salt-filtration", "salt", "022")

-- iron
regroup.set_subgroup_to_prototype("se-core-fragment-iron-ore", "iron", "01")
regroup.set_subgroup_to_prototype("iron-ore", "iron", "02")
regroup.set_subgroup_to_prototype("enriched-iron", "iron", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-1", "iron", "032")
regroup.set_subgroup_to_prototype("se-molten-iron", "iron", "033")
regroup.set_subgroup_to_prototype("se-iron-ingot", "iron", "04")
regroup.set_subgroup_to_prototype("iron-plate", "iron", "05")
regroup.set_subgroup_to_prototype("enriched-iron-plate", "iron", "052")
regroup.set_subgroup_to_prototype("se-iron-ingot-to-plate", "iron", "053")
regroup.set_subgroup_to_prototype("el_cast_pure_iron_recipe", "iron", "054")
regroup.set_subgroup_to_prototype("el_materials_pure_iron", "iron", "06")
regroup.set_subgroup_to_prototype("el_purify_iron_recipe", "iron", "061")
regroup.set_subgroup_to_prototype("el_arc_pure_iron_recipe", "iron", "062")
regroup.set_subgroup_to_prototype("el_cast_pure_iron_reecipe", "iron", "063")

-- steel
regroup.set_subgroup_to_prototype("se-steel-ingot", "steel", "01")
regroup.set_subgroup_to_prototype("steel-plate", "steel", "02")
regroup.set_subgroup_to_prototype("se-steel-ingot-to-plate", "steel", "022")
regroup.set_subgroup_to_prototype("el_cast_pure_steel_recipe", "steel", "023")

-- alloys
regroup.set_subgroup_to_prototype("bronze-plate", "alloys", "01")
regroup.set_subgroup_to_prototype("cuw", "alloys", "02")
regroup.set_subgroup_to_prototype("zircaloy-4", "alloys", "03")
regroup.set_subgroup_to_prototype("aluminum-2219", "alloys", "04")
regroup.set_subgroup_to_prototype("aluminum-6061", "alloys", "05")
regroup.set_subgroup_to_prototype("crucible", "alloys", "06")
regroup.set_subgroup_to_prototype("cermet", "alloys", "07")
regroup.set_subgroup_to_prototype("ti-sapphire", "alloys", "08")
regroup.set_subgroup_to_prototype("zirconium-tungstate", "alloys", "09")
regroup.set_subgroup_to_prototype("se-heat-shielding", "alloys", "10")
regroup.set_subgroup_to_prototype("se-heat-shielding-iridium", "alloys", "102")

-- brass
regroup.set_subgroup_to_prototype("brass-ingot", "brass", "01")
regroup.set_subgroup_to_prototype("brass-plate", "brass", "02")
regroup.set_subgroup_to_prototype("brass-plate-foundry", "brass", "022")
regroup.set_subgroup_to_prototype("brass-ingot-to-plate", "brass", "023")

-- invar
regroup.set_subgroup_to_prototype("invar-ingot", "invar", "01")
regroup.set_subgroup_to_prototype("invar-plate", "invar", "02")
regroup.set_subgroup_to_prototype("invar-ingot-to-plate", "invar", "022")

-- neodym
regroup.set_subgroup_to_prototype("fi_materials_pure_neodym", "neodym", "01")
regroup.set_subgroup_to_prototype("fi_pure_neodym_recipe", "neodym", "01")
regroup.set_subgroup_to_prototype("fi_arc_pure_neodym_recipe", "neodym", "02")
regroup.set_subgroup_to_prototype("fi_materials_neodym", "neodym", "03")
regroup.set_subgroup_to_prototype("fi_cast_neodym_recipe", "neodym", "03")
regroup.set_subgroup_to_prototype("fu_materials_neodym_ingot", "neodym", "04")
regroup.set_subgroup_to_prototype("fu_neodym_ingor_recipe", "neodym", "04")
regroup.set_subgroup_to_prototype("fi_materials_neodym", "neodym", "04")
regroup.set_subgroup_to_prototype("fu_neodym_plate_recipe", "neodym", "04")

-- nitinol
regroup.set_subgroup_to_prototype("nitinol-plate", "nitinol", "01")
regroup.set_subgroup_to_prototype("nitinol-plate-space", "nitinol", "012")

-- copper
regroup.set_subgroup_to_prototype("se-core-fragment-copper-ore", "copper", "01")
regroup.set_subgroup_to_prototype("copper-ore", "copper", "02")
regroup.set_subgroup_to_prototype("enriched-copper", "copper", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-2", "copper", "032")
regroup.set_subgroup_to_prototype("se-molten-copper", "copper", "033")
regroup.set_subgroup_to_prototype("se-copper-ingot", "copper", "04")
regroup.set_subgroup_to_prototype("copper-plate", "copper", "05")
regroup.set_subgroup_to_prototype("enriched-copper-plate", "copper", "052")
regroup.set_subgroup_to_prototype("se-copper-ingot-to-plate", "copper", "053")
regroup.set_subgroup_to_prototype("el_cast_pure_cooper_recipe", "copper", "054")
regroup.set_subgroup_to_prototype("el_materials_pure_copper", "copper", "06")
regroup.set_subgroup_to_prototype("el_purify_copper_recipe", "copper", "061")
regroup.set_subgroup_to_prototype("el_arc_pure_copper_recipe", "copper", "062")
regroup.set_subgroup_to_prototype("el_cast_pure_copper_recipe", "copper", "063")

-- rare-metals
regroup.set_subgroup_to_prototype("se-core-fragment-rare-metals", "rare-metals", "01")
regroup.set_subgroup_to_prototype("raw-rare-metals", "rare-metals", "02")
regroup.set_subgroup_to_prototype("enriched-rare-metals", "rare-metals", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-3", "rare-metals", "032")
regroup.set_subgroup_to_prototype("rare-metals", "rare-metals", "04")
regroup.set_subgroup_to_prototype("rare-metals-1", "rare-metals", "042")
regroup.set_subgroup_to_prototype("rare-metals-2", "rare-metals", "043")
regroup.set_subgroup_to_prototype("rare-metals-vulcanite", "rare-metals", "044")

-- carbon
regroup.set_subgroup_to_prototype("se-core-fragment-graphite", "carbon", "01")
regroup.set_subgroup_to_prototype("flake-graphite", "carbon", "02")
regroup.set_subgroup_to_prototype("graphite", "carbon", "03")
regroup.set_subgroup_to_prototype("enriched-graphite", "carbon", "032")
regroup.set_subgroup_to_prototype("dirty-water-filtration-graphite", "carbon", "033")
regroup.set_subgroup_to_prototype("diamond", "carbon", "04")
regroup.set_subgroup_to_prototype("syntheric-diamond", "carbon", "041")
regroup.set_subgroup_to_prototype("diamond-synthesis-vulcanite", "carbon", "041")
regroup.set_subgroup_to_prototype("fullerenes", "carbon", "05")
regroup.set_subgroup_to_prototype("graphene", "carbon", "06")
regroup.set_subgroup_to_prototype("nanotubes", "carbon", "07")

-- aluminum
regroup.set_subgroup_to_prototype("se-core-fragment-aluminum-ore", "aluminum", "01")
regroup.set_subgroup_to_prototype("aluminum-ore", "aluminum", "02")
regroup.set_subgroup_to_prototype("enriched-aluminum", "aluminum", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-aluminum", "aluminum", "032")
regroup.set_subgroup_to_prototype("molten-aluminum", "aluminum", "033")
regroup.set_subgroup_to_prototype("alumina", "aluminum", "04")
regroup.set_subgroup_to_prototype("enriched-alumina", "aluminum", "042")
regroup.set_subgroup_to_prototype("aluminum-ingot", "aluminum", "05")
regroup.set_subgroup_to_prototype("aluminum-plate", "aluminum", "06")
regroup.set_subgroup_to_prototype("aluminum-plate", "aluminum", "061")
regroup.set_subgroup_to_prototype("aluminum-ingot-to-plate", "aluminum", "062")
regroup.set_subgroup_to_prototype("el_cast_pure_aluminum_recipe", "aluminum", "063")
regroup.set_subgroup_to_prototype("el_materials_pure_aluminum", "aluminum", "07")
regroup.set_subgroup_to_prototype("el_purify_stone_recipe", "aluminum", "071")
regroup.set_subgroup_to_prototype("el_purify_aluminum_recipe", "aluminum", "072")
regroup.set_subgroup_to_prototype("el_arc_pure_aluminum_recipe", "aluminum", "073")

-- bismuth
regroup.set_subgroup_to_prototype("se-core-fragment-bismuth-ore", "bismuth", "01")
regroup.set_subgroup_to_prototype("bismuth-ore", "bismuth", "02")
regroup.set_subgroup_to_prototype("enriched-bismuth", "bismuth", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-bismuth", "bismuth", "032")
regroup.set_subgroup_to_prototype("molten-bismuth", "bismuth", "033")
regroup.set_subgroup_to_prototype("bismuth-ingot", "bismuth", "04")
regroup.set_subgroup_to_prototype("bismuth-plate", "bismuth", "05")
regroup.set_subgroup_to_prototype("enriched-bismuth-plate", "bismuth", "052")
regroup.set_subgroup_to_prototype("bismuth-ingot-to-plate", "bismuth", "053")
regroup.set_subgroup_to_prototype("bismuth-glass", "bismuth", "06")
regroup.set_subgroup_to_prototype("se-bismuth-glass", "bismuth", "062")

-- gold
regroup.set_subgroup_to_prototype("se-core-fragment-gold-ore", "gold", "01")
regroup.set_subgroup_to_prototype("gold-ore", "gold", "02")
regroup.set_subgroup_to_prototype("enriched-gold", "gold", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-gold", "gold", "032")
regroup.set_subgroup_to_prototype("molten-gold", "gold", "033")
regroup.set_subgroup_to_prototype("gold-ingot", "gold", "04")
regroup.set_subgroup_to_prototype("enriched-gold-ingot", "gold", "042")
regroup.set_subgroup_to_prototype("gold-ignot-casting", "gold", "043")
regroup.set_subgroup_to_prototype("fu_gold_ingot_recipe", "gold", "044")
regroup.set_subgroup_to_prototype("fi_materials_gold", "gold", "05")
regroup.set_subgroup_to_prototype("fi_cast_gold_recipe", "gold", "051")
regroup.set_subgroup_to_prototype("fu_gold_plate_recipe", "gold", "052")
regroup.set_subgroup_to_prototype("palladium-powder", "gold", "06")
regroup.set_subgroup_to_prototype("palladium-ingot", "gold", "07")
regroup.set_subgroup_to_prototype("palladium-ingot", "gold", "07")
regroup.set_subgroup_to_prototype("platinum-powder", "gold", "08")
regroup.set_subgroup_to_prototype("platinum-ingot", "gold", "09")
regroup.set_subgroup_to_prototype("platinum-ingot", "gold", "09")
regroup.set_subgroup_to_prototype("fi_materials_pure_gold", "gold", "10")
regroup.set_subgroup_to_prototype("fi_pure_gold_recipe", "gold", "10")
regroup.set_subgroup_to_prototype("fi_arc_pure_gold_recipe", "gold", "11")
regroup.set_subgroup_to_prototype("fг_gold_ingot_recipe", "gold", "12")
regroup.set_subgroup_to_prototype("fi_cast_gold_recipe", "gold", "13")
regroup.set_subgroup_to_prototype("fu_gold_plate_recipe", "gold", "14")

--lead
regroup.set_subgroup_to_prototype("se-core-fragment-lead-ore", "lead", "01")
regroup.set_subgroup_to_prototype("lead-ore", "lead", "02")
regroup.set_subgroup_to_prototype("enriched-lead", "lead", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-lead", "lead", "032")
regroup.set_subgroup_to_prototype("molten-lead", "lead", "033")
regroup.set_subgroup_to_prototype("lead-ingot", "lead", "04")
regroup.set_subgroup_to_prototype("lead-plate", "lead", "05")
regroup.set_subgroup_to_prototype("enriched-lead-plate", "lead", "052")
regroup.set_subgroup_to_prototype("lead-ingot-to-plate", "lead", "053")
regroup.set_subgroup_to_prototype("fu_lead_recipe", "lead", "054")

-- silver
regroup.set_subgroup_to_prototype("silver-ore", "silver", "02")
regroup.set_subgroup_to_prototype("enriched-silver", "silver", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-silver", "silver", "032")
regroup.set_subgroup_to_prototype("molten-silver", "silver", "033")
regroup.set_subgroup_to_prototype("silver-ingot", "silver", "04")
regroup.set_subgroup_to_prototype("silver-plate", "silver", "05")
regroup.set_subgroup_to_prototype("enriched-silver-plate", "silver", "052")
regroup.set_subgroup_to_prototype("silver-ingot-to-plate", "silver", "053")
regroup.set_subgroup_to_prototype("silver-brazing-alloy", "silver", "06")

-- tin
regroup.set_subgroup_to_prototype("se-core-fragment-tin-ore", "tin", "01")
regroup.set_subgroup_to_prototype("tin-ore", "tin", "02")
regroup.set_subgroup_to_prototype("enriched-tin", "tin", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-tin", "tin", "032")
regroup.set_subgroup_to_prototype("molten-tin", "tin", "033")
regroup.set_subgroup_to_prototype("tin-ingot", "tin", "04")
regroup.set_subgroup_to_prototype("tin-plate", "tin", "051")
regroup.set_subgroup_to_prototype("enriched-tin-plate", "tin", "052")
regroup.set_subgroup_to_prototype("tin-ingot-to-plate", "tin", "053")

-- titanium
regroup.set_subgroup_to_prototype("se-core-fragment-titanium-ore", "titanium", "01")
regroup.set_subgroup_to_prototype("titanium-ore", "titanium", "02")
regroup.set_subgroup_to_prototype("enriched-titanium", "titanium", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-titanium", "titanium", "032")
regroup.set_subgroup_to_prototype("molten-titanium", "titanium", "033")
regroup.set_subgroup_to_prototype("titanium-ingot", "titanium", "04")
regroup.set_subgroup_to_prototype("titanium-plate", "titanium", "05")
regroup.set_subgroup_to_prototype("enriched-titanium-plate", "titanium", "052")
regroup.set_subgroup_to_prototype("titanium-ingot-to-plate", "titanium", "053")
regroup.set_subgroup_to_prototype("fi_cast_titan_recipe", "titanium", "054")
regroup.set_subgroup_to_prototype("fi_materials_pure_titan", "titanium", "06")
regroup.set_subgroup_to_prototype("fi_pure_titan_recipe", "titanium", "06")
regroup.set_subgroup_to_prototype("fi_arc_pure_titan_recipe", "titanium", "07")
regroup.set_subgroup_to_prototype("fu_titan_plate_recipe", "titanium", "08")
regroup.set_subgroup_to_prototype("fu_materials_titan_ingor", "titanium", "09")
regroup.set_subgroup_to_prototype("fu_titan_ingot_recipe", "titanium", "09")

-- tungsten
regroup.set_subgroup_to_prototype("se-core-fragment-tungsten-ore", "tungsten", "01")
regroup.set_subgroup_to_prototype("tungsten-ore", "tungsten", "02")
regroup.set_subgroup_to_prototype("enriched-tungsten", "tungsten", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-tungsten", "tungsten", "032")
regroup.set_subgroup_to_prototype("tungsten-ingot", "tungsten", "04")
regroup.set_subgroup_to_prototype("tungsten-plate", "tungsten", "05")
regroup.set_subgroup_to_prototype("enriched-tungsten-plate", "tungsten", "052")
regroup.set_subgroup_to_prototype("tungsten-ingot-to-plate", "tungsten", "053")
regroup.set_subgroup_to_prototype("tungsten-carbide", "tungsten", "06")
regroup.set_subgroup_to_prototype("tungsten-carbide-casting", "tungsten", "062")

-- zinc
regroup.set_subgroup_to_prototype("se-core-fragment-zinc-ore", "zinc", "01")
regroup.set_subgroup_to_prototype("zinc-ore", "zinc", "02")
regroup.set_subgroup_to_prototype("enriched-zinc", "zinc", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-zinc", "zinc", "032")
regroup.set_subgroup_to_prototype("molten-zinc", "zinc", "033")
regroup.set_subgroup_to_prototype("zinc-ingot", "zinc", "04")
regroup.set_subgroup_to_prototype("zinc-plate", "zinc", "05")
regroup.set_subgroup_to_prototype("enriched-zinc-plate", "zinc", "052")
regroup.set_subgroup_to_prototype("zinc-ingot-to-plate", "zinc", "053")

-- nickel
regroup.set_subgroup_to_prototype("se-core-fragment-nickel-ore", "nickel", "01")
regroup.set_subgroup_to_prototype("nickel-ore", "nickel", "02")
regroup.set_subgroup_to_prototype("enriched-nickel", "nickel", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-nickel", "nickel", "032")
regroup.set_subgroup_to_prototype("molten-nickel", "nickel", "033")
regroup.set_subgroup_to_prototype("nickel-ingot", "nickel", "04")
regroup.set_subgroup_to_prototype("nickel-plate", "nickel", "05")
regroup.set_subgroup_to_prototype("enriched-nickel-plate", "nickel", "052")
regroup.set_subgroup_to_prototype("nickel-ingot-to-plate", "nickel", "053")

-- zirconium
regroup.set_subgroup_to_prototype("se-core-fragment-zircon", "zirconium", "01")
regroup.set_subgroup_to_prototype("zircon", "zirconium", "02")
regroup.set_subgroup_to_prototype("enriched-zircon", "zirconium", "03")
regroup.set_subgroup_to_prototype("dirty-water-filtration-zircon", "zirconium", "032")
regroup.set_subgroup_to_prototype("molten-zirconium", "zirconium", "033")
regroup.set_subgroup_to_prototype("zirconium-ingot", "zirconium", "04")
regroup.set_subgroup_to_prototype("zirconia", "zirconium", "05")
regroup.set_subgroup_to_prototype("enriched-zirconia-smelting", "zirconium", "052")
regroup.set_subgroup_to_prototype("zirconium-plate", "zirconium", "06")
regroup.set_subgroup_to_prototype("zirconium-ingot-to-plate", "zirconium", "062")

-- uranium
regroup.set_subgroup_to_prototype("se-core-fragment-uranium-ore", "uranium", "01")
regroup.set_subgroup_to_prototype("uranium-ore", "uranium", "02")
regroup.set_subgroup_to_prototype("uranium-238", "uranium", "03")
regroup.set_subgroup_to_prototype("uranium-processing", "uranium", "031")
regroup.set_subgroup_to_prototype("fi_advanced_fuel_recycle_recipe", "uranium", "032")
regroup.set_subgroup_to_prototype("fi_advanced_thorium_fuel_recycle_recipe", "uranium", "033")
regroup.set_subgroup_to_prototype("fi_pure_fuel_recycle_recipe", "uranium", "034")
regroup.set_subgroup_to_prototype("fi_purify_copper_recipe", "uranium", "035")
regroup.set_subgroup_to_prototype("uranium-235", "uranium", "04")
regroup.set_subgroup_to_prototype("kovarex-enrichment-process", "uranium", "041")
regroup.set_subgroup_to_prototype("fi_uranium233_item", "uranium", "05")
regroup.set_subgroup_to_prototype("fi_uranium233_recipe", "uranium", "051")
regroup.set_subgroup_to_prototype("fi_purify_uranium_recipe", "uranium", "052")
regroup.set_subgroup_to_prototype("fi_thorium232_item", "uranium", "06")
regroup.set_subgroup_to_prototype("fi_purify_iron_recipe", "uranium", "061")
regroup.set_subgroup_to_prototype("fi_plutonium239_item", "uranium", "07")
regroup.set_subgroup_to_prototype("fi_plutonium239_recipe", "uranium", "071")

-- vulcanite
regroup.set_subgroup_to_prototype("se-core-fragment-vulcanite-ore", "vulcanite", "01")
regroup.set_subgroup_to_prototype("vulcanite-ore", "vulcanite", "02")
regroup.set_subgroup_to_prototype("se-vulcanite-enriched", "vulcanite", "03")
regroup.set_subgroup_to_prototype("se-vulcanite-crushed", "vulcanite", "04")
regroup.set_subgroup_to_prototype("se-vulcanite-block", "vulcanite", "05")
regroup.set_subgroup_to_prototype("se-vulcanite-ion-exchange-beads", "vulcanite", "06")
regroup.set_subgroup_to_prototype("se-pyroflux", "vulcanite", "07")
regroup.set_subgroup_to_prototype("se-pyroflux-steam", "vulcanite", "072")

-- cryonite
regroup.set_subgroup_to_prototype("se-core-fragment-se-cryonite", "cryonite", "01")
regroup.set_subgroup_to_prototype("se-cryonite", "cryonite", "02")
regroup.set_subgroup_to_prototype("se-cryonite-crushed", "cryonite", "03")
regroup.set_subgroup_to_prototype("se-cryonite-crystal", "cryonite", "04")
regroup.set_subgroup_to_prototype("se-cryonite-ion-exchange-beads", "cryonite", "05")
regroup.set_subgroup_to_prototype("se-cryonite-rod", "cryonite", "06")
regroup.set_subgroup_to_prototype("se-cryonite-slush", "cryonite", "07")

-- imersite
regroup.set_subgroup_to_prototype("se-core-fragment-imersite", "imersite", "01")
regroup.set_subgroup_to_prototype("raw-imersite", "imersite", "02")
regroup.set_subgroup_to_prototype("imersite-powder", "imersite", "03")
regroup.set_subgroup_to_prototype("se-kr-fine-imersite-powder", "imersite", "04")
regroup.set_subgroup_to_prototype("imersite-crystal", "imersite", "05")
regroup.set_subgroup_to_prototype("imersium-plate", "imersite", "06")
regroup.set_subgroup_to_prototype("imersium-plate-nanotubes", "imersite", "061")
regroup.set_subgroup_to_prototype("se-kr-imersium-sulfide", "imersite", "07")

-- beryllium
regroup.set_subgroup_to_prototype("se-core-fragment-se-beryllium-ore", "beryllium", "01")
regroup.set_subgroup_to_prototype("se-beryllium-ore", "beryllium", "02")
regroup.set_subgroup_to_prototype("se-beryllium-powder", "beryllium", "03")
regroup.set_subgroup_to_prototype("se-beryllium-sulfate", "beryllium", "04")
regroup.set_subgroup_to_prototype("se-beryllium-ingot", "beryllium", "05")
regroup.set_subgroup_to_prototype("se-molten-beryllium", "beryllium", "051")
regroup.set_subgroup_to_prototype("se-beryllium-ingot", "beryllium", "052")
regroup.set_subgroup_to_prototype("se-beryllium-no-vulcanite", "beryllium", "053")
regroup.set_subgroup_to_prototype("se-beryllium-plate", "beryllium", "06")
regroup.set_subgroup_to_prototype("se-beryllium-ingot-to-plate", "beryllium", "06")
regroup.set_subgroup_to_prototype("se-beryllium-hydroxide", "beryllium", "07")

-- holmium
regroup.set_subgroup_to_prototype("se-core-fragment-se-holmium-ore", "holmium", "01")
regroup.set_subgroup_to_prototype("se-holmium-ore", "holmium", "02")
regroup.set_subgroup_to_prototype("se-dirty-water-filtration-holmium", "holmium", "021")
regroup.set_subgroup_to_prototype("se-holmium-powder", "holmium", "03")
regroup.set_subgroup_to_prototype("se-holmium-ore-crushed", "holmium", "04")
regroup.set_subgroup_to_prototype("se-holmium-chloride", "holmium", "05")
regroup.set_subgroup_to_prototype("se-holmium-ingot", "holmium", "06")
regroup.set_subgroup_to_prototype("se-molten-holmium", "holmium", "061")
regroup.set_subgroup_to_prototype("se-holmium-no-vulcanite", "holmium", "063")
regroup.set_subgroup_to_prototype("se-holmium-plate", "holmium", "07")
regroup.set_subgroup_to_prototype("se-holmium-ingot-to-plate", "holmium", "07")
regroup.set_subgroup_to_prototype("se-beryllium-hydroxide", "holmium", "08")

-- iridium
regroup.set_subgroup_to_prototype("se-core-fragment-se-iridium-ore", "iridium", "01")
regroup.set_subgroup_to_prototype("se-iridium-ore", "iridium", "02")
regroup.set_subgroup_to_prototype("se-dirty-water-filtration-iridium", "iridium", "021")
regroup.set_subgroup_to_prototype("se-iridium-powder", "iridium", "03")
regroup.set_subgroup_to_prototype("se-iridium-ore-crushed", "iridium", "04")
regroup.set_subgroup_to_prototype("se-iridium-blastcake", "iridium", "05")
regroup.set_subgroup_to_prototype("se-iridium-ingot", "iridium", "06")
regroup.set_subgroup_to_prototype("se-iridium-plate", "iridium", "07")
regroup.set_subgroup_to_prototype("se-iridium-ingot-to-plate", "iridium", "07")

-- naquium
regroup.set_subgroup_to_prototype("se-naquium-ore", "naquium", "01")
regroup.set_subgroup_to_prototype("se-naquium-powder", "naquium", "02")
regroup.set_subgroup_to_prototype("se-naquium-ore-crushed", "naquium", "03")
regroup.set_subgroup_to_prototype("se-naquium-refined", "naquium", "04")
regroup.set_subgroup_to_prototype("se-naquium-crystal", "naquium", "05")
regroup.set_subgroup_to_prototype("se-naquium-ingot", "naquium", "06")
regroup.set_subgroup_to_prototype("se-naquium-plate", "naquium", "07")
regroup.set_subgroup_to_prototype("se-naquium-ingot-to-plate", "naquium", "07")

-- vitamelange
regroup.set_subgroup_to_prototype("se-core-fragment-se-vitamelange", "vitamelange", "01")
regroup.set_subgroup_to_prototype("se-vitamelange", "vitamelange", "02")
regroup.set_subgroup_to_prototype("se-vitamelange-nugget", "vitamelange", "03")
regroup.set_subgroup_to_prototype("se-vitamelange-bloom", "vitamelange", "04")
regroup.set_subgroup_to_prototype("se-iridium-blastcake", "vitamelange", "05")
regroup.set_subgroup_to_prototype("se-vitamelange-spice", "vitamelange", "06")
regroup.set_subgroup_to_prototype("se-vitamelange-extract", "vitamelange", "07")
regroup.set_subgroup_to_prototype("se-vitalic-reagent", "vitamelange", "08")
regroup.set_subgroup_to_prototype("se-vitalic-epoxy", "vitamelange", "09")
regroup.set_subgroup_to_prototype("se-self-sealing-gel", "vitamelange", "10")