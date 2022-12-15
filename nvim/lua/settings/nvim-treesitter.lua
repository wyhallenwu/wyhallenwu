require 'nvim-treesitter.configs'.setup{
    ensure_installed = {"c", "cpp", "cmake", "lua", "python", "go"},
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
    },
}
