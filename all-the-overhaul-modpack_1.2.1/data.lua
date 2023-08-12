--this is example of function setup with comments, learn to use comments people

--- Checks if true
---@param check  #What to check
local function Test(check)
    if check then
        log("True PIG")
    else
        log("false PIG")
    end
end

Test(true)

--call all needed scripts
require("prototypes/item/add")
require("prototypes/recipe/add")
require("prototypes/technology/technology")
require("prototypes/entity/imersium-wall")
