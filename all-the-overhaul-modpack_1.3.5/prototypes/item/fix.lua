local util = require("data-util")

--sets all item stack sizes to a max of 200
for _, item in pairs(data.raw.item) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

--248k Science cubes are tools not items, so this is needed for that
for _, item in pairs(data.raw.tool) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

data.raw.item["processing-electronics"].localised_name = "Advanced CPU"
data.raw.item["fu_materials_carbon_fiber"].localised_name = "Graphite fiber"
data.raw.item["fu_materials_KFK"].localised_name = "Graphite fiber reinforced plastic"
data.raw.item["el_lithium_item"].localised_name = "Lithium crystal"
data.raw.fluid["el_dirty_water"].localised_name = "Cloudy water"
data.raw.item["fi_materials_dirty_solution"].localised_name = "Cloudy water container"