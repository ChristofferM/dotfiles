inoremap jj <Esc>

set exrc

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

let g:mapleader = "\<Space>"

call plug#begin('~/.config/nvim/plugged')
" Latex
Plug 'lervag/vimtex'
" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Surround motion
Plug 'tpope/vim-surround'
" Status bar
Plug 'vim-airline/vim-airline'
" Color scheme
Plug 'ghifarit53/tokyonight-vim'
" Common configuration of language servers
Plug 'neovim/nvim-lspconfig'

" Auto completion
" Lots of separate plugins for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Also requeres a snip plugin
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
call plug#end()

" nvim-cmp option
set completeopt=menu,menuone,noselect

" Configuration for lsp plugins
luafile ~/.config/nvim/nvim_lua_configs/lspconfig.lua
luafile ~/.config/nvim/nvim_lua_configs/lua-ls.lua
luafile ~/.config/nvim/nvim_lua_configs/nvim-cmp.lua


" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

nnoremap <leader><space> :FZF<CR>
nnoremap <leader>b :buffers<CR>
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>e :e .<CR>

set number relativenumber
set nu rnu
set splitbelow

" Style
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:airline_theme = "tokyonight"

highlight Pmenu guibg=brown gui=bold
