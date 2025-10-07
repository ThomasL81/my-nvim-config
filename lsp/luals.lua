-- luals.lua
return {
    cmd = { 'lua-language-server', },
    root_markers = { '.luarc.json', '.luarc.jsonc', },
    filetypes = { 'lua', },
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true)
            }
        }
    },
}
