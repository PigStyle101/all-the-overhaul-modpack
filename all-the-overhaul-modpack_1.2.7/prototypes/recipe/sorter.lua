local util = require("data-util")
SubGroups = {}
Blacklist = { "landfill", "matter", "text", "stream", "formatting", "cannon", "machine", "inserter", "alloy" }
WhatToCheckResources = { "tin", "coal", "iron", "copper", "uranium", "rare", "lithium", "bismuth",
    "gold", "lead", "silver", "tungsten", "titanium", "zircon", "titan", "salt", "graphite",
    "biomass", "imersite", "nickel", "zinc", "alumin", "manganese" }

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

---Sets the recipe subgroup name and then group as parent. optional: sets order
---@param name string #recipe name
---@param subgroup string #subgroup name
---@param group string #group name
---@param order any #order
local function SetGroupSubOrder(name, subgroup, group, order)
    CreateSubGroupIfNone(subgroup, group)
    data.raw.recipe[name].subgroup = subgroup
    data.raw.recipe[name].group = group
    data.raw["item-subgroup"][subgroup].order = "[a]"
    if order then
        data.raw.recipe[name].order = order
    end
end

--PrintAllSubGroupsToLog()
--PrintAllRecipesToLog()

---Checks to see if recipe with string in name is in group and subgroup and sets if not
---@param lookatname string #What to look at
---@param lookforgroup string #What group it should be in
---@param lookatname2 any #What to look at extra
local function ChangeSubgroupAndGroup(lookatname, lookforgroup, lookatname2)
    for _, recipe in pairs(data.raw.recipe) do
        --if recipe name matches what we are looking for
        if string.find(string.lower(recipe.name), lookatname) then
            --if there is no group give it one and assign its subgroup
            if string.find(recipe.name, "core") and not InBlackList(recipe.name) then
                --log("PIG core Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[a]]")
            elseif recipe.name == lookatname then
                --log("PIG name Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(recipe.name, "ore") and not InBlackList(recipe.name) then
                --log("PIG ore Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(recipe.name, "raw") and not InBlackList(recipe.name) then
                --log("PIG raw Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
            elseif string.find(recipe.name, "enriched") and not InBlackList(recipe.name) then
                --log("PIG enriched Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[c]]")
            elseif string.find(recipe.name, "filtration") and not InBlackList(recipe.name) then
                --log("PIG filtration Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[d]]")
            elseif string.find(recipe.name, "plate") and not InBlackList(recipe.name) then
                --log("PIG plate Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "metals") and not InBlackList(recipe.name) then
                --log("PIG rare-metals Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "cast") and not InBlackList(recipe.name) then
                --log("PIG cast Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "pure") and not InBlackList(recipe.name) then
                --log("PIG pure Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "ingot") and not InBlackList(recipe.name) then
                --log("PIG ingot Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "molten") and not InBlackList(recipe.name) then
                --log("PIG molten Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "burn") and not InBlackList(recipe.name) then
                --log("PIG burn Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "vulcanite") and not InBlackList(recipe.name) then
                --log("PIG vulcanite Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "1") and not InBlackList(recipe.name) then
                --log("PIG 1 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "2") and not InBlackList(recipe.name) then
                --log("PIG 2 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "vc") and not InBlackList(recipe.name) then
                --log("PIG vc Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "zirconia") and not InBlackList(recipe.name) then
                --log("PIG zirconia Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "alumina") and not InBlackList(recipe.name) then
                --log("PIG alumina Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "purify") and not InBlackList(recipe.name) then
                --log("PIG purify Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            else
                --log("PIG unassigned Found " .. recipe.name)
            end
        elseif lookatname2 then
            if string.find(recipe.name, lookatname) and string.find(recipe.name, lookatname2) then
                --if there is no group give it one and assign its subgroup
                if recipe.name == lookatname .. "-" .. lookatname2 then
                    --log("PIG name Found " .. recipe.name)
                    SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
                else
                    --log("PIG unassigned Found " .. recipe.name)
                end
            end
        elseif recipe.name == "dirty-water-filtration-3" then
            --log("PIG dirty-water-filtration-3 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "rare", "resources", "[[b]]")
        end
    end
end

for _, value in ipairs(WhatToCheckResources) do
    ChangeSubgroupAndGroup(value, "resources")
end