set number
set tabstop=4
set expandtab
set shiftwidth=4
set si
set smarttab
syntax on

call plug#begin('~/.vim/plugged')
" plugs
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/rakr/vim-one.git'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-test/vim-test'
Plug 'prettier/vim-prettier', {
   \ 'do': 'yarn install --frozen-lockfile --production',
   \ 'branch': 'release/0.x'
   \ }
call plug#end()
set background=dark
colorscheme one

let g:ariline_theme='one'
let g:coc_disable_startup_warning = 1
