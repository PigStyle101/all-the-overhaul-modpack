
---Adjust grid size
---@param grid_name string
---@param size int
local function SetGridSize(grid_name, size)
	local grid = data.raw["equipment-grid"][grid_name]
	if grid then
		grid.width = size
		grid.height = size
	end
end

if not mods["Configurable-Armour-Suits"] then
SetGridSize("small-equipment-grid", 5) --modular
SetGridSize("medium-equipment-grid", 10) -- power mk1
SetGridSize("large-equipment-grid", 15) -- power mk2
SetGridSize("mk3-armor-grid", 20)
SetGridSize("mk4-armor-grid", 25)
SetGridSize("se-thruster-suit-grid", 10)
SetGridSize("se-thruster-suit-2-grid", 15)
SetGridSize("se-thruster-suit-3-grid", 20)
SetGridSize("se-thruster-suit-4-grid", 25)
end