local function restack(type, name, stack_size)
    if type and name and stack_size then
        if data.raw[type] then
            if data.raw[type][name] then
                if data.raw[type][name].stack_size then
                    data.raw[type][name].stack_size = stack_size
                end
            end
        end
    end
end

return {
    restack = restack,
}
