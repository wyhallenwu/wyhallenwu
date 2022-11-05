set number
set tabstop=4
set expandtab
set shiftwidth=4
set si
set smarttab
set rnu
syntax on
set termguicolors
set nocompatible
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
" plugs
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'https://github.com/rakr/vim-one.git'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-test/vim-test'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'voldikss/vim-floaterm'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
call plug#end()
set background=dark
colorsche one

let g:ariline_theme='one'
let g:coc_disable_startup_warning = 1

" global settings
let mapleader = "\<space>"
" leaderf settings
"search file
let g:Lf_ShortcutF = "<leader>sf"
" search most recent file
noremap <leader>srf :Leaderf mru <CR>

" vim floaterm settings
nnoremap <silent> <leader>t  :FloatermNew<CR>
nnoremap <silent> <leader>pt :FloatermPrev<CR>
nnoremap <silent> <leader>nt :FloatermNext<CR>
nnoremap <silent> <leader>ct :FloatermToggle<CR>
nnoremap <silent> <leader>ht :FloatermHide<CR>

" nerdtree
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <leader>ls :NERDTree<CR>
nnoremap <leader>cls :NERDTreeToggle<CR>
nnoremap <leader>fls :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" nerdcommenter
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" google codeformat
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END

