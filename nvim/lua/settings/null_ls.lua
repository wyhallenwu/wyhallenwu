local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.vsnip,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.hover.dictionary,
        null_ls.builtins.formatting.clang_format,
    },
})
