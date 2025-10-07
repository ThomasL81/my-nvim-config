-- sap_cds.lua
return {
    cmd = { 'npx', 'cds-lsp', '--stdio' },
    root_markers = { 'package.json' },
    filetypes = { 'cds' },
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
        })
    end,
    settings = {
        cds = {
            validate = true
        }
    }
}
