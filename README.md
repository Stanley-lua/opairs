# opairs
### [Stanley](https://github.com/Wolf2789/Stanley) package with ordered iterator function.

## Usage:
```lua
local table = {
    key_1 = 1,
    key_2 = 2,
    key_5 = 5,
    key_1000 = 3,
    4,
    'test'
}
local order = { 'key_2', 'key_1', 'key_1000' }

for key, value in opairs(table_variable, ) do
    print(key .. ' = ' .. value)
end
--[[ output will be:
key_2 = 2
key_1 = 1
key_1000 = 3
key_5 = 5
1 = 4
2 = 'test'
]]
```
