-- clangd.lua
return {
    cmd = { 'clangd', '-header-insertion=never' },
    root_markers = { 'compile_commands.json', '.clangd' },
    filetypes = { 'c', 'cpp', },
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
        })
    end
}

