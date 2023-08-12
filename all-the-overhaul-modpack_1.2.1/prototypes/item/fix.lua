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