local util = require("data-util")
SubGroups = {}
Blacklist = { "landfill", "matter", "text", "stream", "formatting", "cannon", "machine", "inserter", "alloy", "barrel" }
WhatToCheckResources = { "tin", "coal", "iron", "copper", "uranium", "rare", "lithium", "bismuth",
    "gold", "lead", "silver", "tungsten", "titanium", "zircon", "titan", "salt", "graphite",
    "biomass", "imersite", "nickel", "zinc", "alumin" }

--CheckNames("plate")

---Returns true if item is in blacklist
---@param name string # item to check
---@return boolean # true means it was found
local function InBlackList(name)
    for _, value in ipairs(Blacklist) do
        if (string.find(name, value)) then
            return true
        end
    end
    return false
end

---Checks if there is subgroup, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
local function CreateSubGroupIfNone(name, group)
    if not util.table_contains(data.raw["item-subgroup"], name) then
        data:extend({
            {
                type = "item-subgroup",
                name = name,
                group = group,
                order = name
            }
        })
    end
end

---Sets the item subgroup name and then group as parent. optional: sets order
---@param name string #item name
---@param subgroup string #subgroup name
---@param group string #group name
---@param order any #order
local function SetGroupSubOrder(name, subgroup, group, order)
    CreateSubGroupIfNone(subgroup, group)
    data.raw.item[name].subgroup = subgroup
    data.raw.item[name].group = group
    data.raw["item-subgroup"][subgroup].order = "[a]"
    if order then
        data.raw.item[name].order = order
    end
end

--PrintAllSubGroupsToLog()
--PrintAllitemsToLog()

---Checks to see if item with string in name is in group and subgroup and sets if not
---@param lookatname string #What to look at
---@param lookforgroup string #What group it should be in
---@param lookatname2 any #What to look at extra
local function ChangeSubgroupAndGroup(lookatname, lookforgroup, lookatname2)
    for _, item in pairs(data.raw.item) do
        --if item name matches what we are looking for
        if string.find(string.lower(item.name), lookatname) then
            --if there is no group give it one and assign its subgroup
            if string.find(item.name, "core") and not InBlackList(item.name) then
                --log("PIG core Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[a]]")
            elseif item.name == lookatname then
                --log("PIG name Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(item.name, "ore") and not InBlackList(item.name) then
                --log("PIG ore Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(item.name, "flak") and not InBlackList(item.name) then
                --log("PIG flak Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(item.name, "raw") and not InBlackList(item.name) then
                --log("PIG raw Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(item.name, "enriched") and not InBlackList(item.name) then
                --log("PIG enriched Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[c]]")
            elseif string.find(item.name, "filtration") and not InBlackList(item.name) then
                --log("PIG filtration Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[d]]")
            elseif string.find(item.name, "plate") and not InBlackList(item.name) then
                --log("PIG plate Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "metals") and not InBlackList(item.name) then
                --log("PIG rare-metals Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "cast") and not InBlackList(item.name) then
                --log("PIG cast Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "pure") and not InBlackList(item.name) then
                --log("PIG pure Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "ingot") and not InBlackList(item.name) then
                --log("PIG ingot Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "molten") and not InBlackList(item.name) then
                --log("PIG molten Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "burn") and not InBlackList(item.name) then
                --log("PIG burn Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "vulcanite") and not InBlackList(item.name) then
                --log("PIG vulcanite Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "1") and not InBlackList(item.name) then
                --log("PIG 1 Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "2") and not InBlackList(item.name) then
                --log("PIG 2 Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "vc") and not InBlackList(item.name) then
                --log("PIG vc Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "zirconia") and not InBlackList(item.name) then
                --log("PIG zirconia Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "alumina") and not InBlackList(item.name) then
                --log("PIG alumina Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(item.name, "purify") and not InBlackList(item.name) then
                --log("PIG purify Found " .. item.name)
                SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[e]]")
            else
                --log("PIG unassigned Found " .. item.name)
            end
        elseif lookatname2 then
            if string.find(item.name, lookatname) and string.find(item.name, lookatname2) then
                --if there is no group give it one and assign its subgroup
                if item.name == lookatname .. "-" .. lookatname2 then
                    --log("PIG name Found " .. item.name)
                    SetGroupSubOrder(item.name, lookatname, lookforgroup, "[[b]]")
                else
                    --log("PIG unassigned Found " .. item.name)
                end
            end
        elseif item.name == "dirty-water-filtration-3" then
            --log("PIG dirty-water-filtration-3 Found " .. item.name)
            SetGroupSubOrder(item.name, "rare", "resources", "[[b]]")
        end
    end
end

for _, value in ipairs(WhatToCheckResources) do
    ChangeSubgroupAndGroup(value, "resources")
end