vim.cmd([[
colorscheme tokyonight

augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
