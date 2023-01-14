local null_ls = require("null-ls")
null_ls.setup({
    sources = {
--        null_ls.builtins.formatting.stylua,
--        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.vsnip,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.hover.dictionary,
        null_ls.builtins.formatting.clang_format,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format()
                end,
            })
        end
    end,
})
