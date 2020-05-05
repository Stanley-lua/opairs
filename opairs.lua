--[[ Iterate over table in specified order and return it's items
Usage:
    for key, value in opairs(table_variable, {'key_2', 'key_1', 'key_1000'}) do
        ...
    end
]]
return function(tab, order)
    if type(tab) ~= 'table' then
        tab = {}
    end
    if type(order) ~= 'table' then
        order = {}
    end

    local keys = {}
    for key in pairs(tab) do
        keys[#keys+1] = key
    end
    table.sort(keys)
    for i,key in ipairs(keys) do
        local found = false
        for j,key2 in ipairs(order) do
            if key == key2 then
                found = true
                break
            end
        end
        if not found then
            table.insert(order, key)
        end
    end

    local index = 0
    return function()
        while index <= #order do
            index = index + 1
            if tab[ order[index] ] then
                return order[index], tab[ order[index] ]
            end
        end
    end
end
