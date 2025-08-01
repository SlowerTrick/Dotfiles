-- -- Setup all plugin files
-- Load all plugins dynamically
local plugin_specs = {}
local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/plugins", "*.lua", false, true)
for _, file in ipairs(plugin_files) do
    local module = file:match("lua/(.*)%.lua$"):gsub("/", ".")
    if module ~= "plugins.init" then -- avoid perma loop 
        table.insert(plugin_specs, require(module))
    end
end

require('lazy').setup(plugin_specs)
