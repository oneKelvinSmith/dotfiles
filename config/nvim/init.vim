set shell=bash

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf' "Use fzf binary installed via homebrew

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'dag/vim-fish'
 
call plug#end()

set background=dark
set termguicolors
colorscheme dracula

" tabs vs spaces
set tabstop=2
set expandtab
set smartindent

autocmd FileType make setlocal noexpandtab

" Spacemacs keybindings
" https://github.com/sthysel/vim-spacemacs/blob/master/plugin/spacemacs.vim

let mapleader = "\<Space>"

" buffers
nmap <leader>bb :Buffers<cr>
nmap <leader>bd :bdelete<cr>
nmap <leader>bk :bdelete<cr>
nmap <leader>bK :%bdelete\|edit#<cr>
nmap <leader>bn :bnext<cr>
nmap <leader>bp :bprevious<cr>
nmap <leader>br :edit<cr>

" commenting
nmap <leader>;  <Plug>Commentary
vmap <leader>;  <Plug>Commentary
omap <leader>;  <Plug>Commentary
nmap <leader>;; <Plug>CommentaryLine

" files
nmap <leader>ff :Files<cr>
nmap <leader>fg :GFiles<cr>
nmap <leader>fl :Lines<cr>
nmap <leader>fr :History<cr>

" search
nmap <leader>sp :Rg<space>
nmap <leader>sc :noh<cr>
