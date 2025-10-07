-- ts_ls.lua
return {
    cmd = { 'typescript-language-server', '--stdio' },
    root_markers = { 'tsconfig.json', 'package.json' },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
        })
    end
}

