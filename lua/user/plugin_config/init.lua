-- Loop lua/user/plugin_config/ and require files/dirs
-- depth is 1
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/user/plugin_config/')) do
    -- skip this file
    if file == "init.lua" then
        goto continue
    end

    -- remove file extension if found
    if file:match("(.+)%..+$") then
        file = file:match("(.+)%..+$")
    end

    require('user.plugin_config.'..file)

    ::continue::
end

