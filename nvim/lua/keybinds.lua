local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- leader key
keymap("", "<Space>","<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.fileencoding = "utf-8"
vim.wo.number = true
vim.wo.cursorline = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.shiftround = true
vim.o.termguicolors = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- nerd tree
keymap("n", "<leader>ls", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>cls", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>fls", ":NvimTreeFindFile<CR>", opts)
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.wildmenu = true
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- buffer switch
keymap("n", "<leader>[", ":bn<CR>", opts)
keymap("n", "<leader>]", ":bp<CR>", opts)

-- leaderF
keymap("n", "<leader>srf", ":Leaderf mru<CR>", opts)


-- window splits
keymap("n", "<leader>-", ":vsplit<CR>", opts)
keymap("n", "<leader>=", ":sp<CR>", opts)
keymap("n", "<leader>>", ":vertical resize +5<CR>", opts)
keymap("n", "<leader><", ":vertical resize -5<CR>", opts)

--terminals
keymap("n", "<leader>term", ":below terminal ++rows=13<CR>", opts)
keymap("n", "<leader>rterm", ":rightb vert term<CR>", opts)
keymap("n", "<leader>lterm", ":vert term<CR>", opts)

