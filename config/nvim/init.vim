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
 
call plug#end()

set background=dark
set termguicolors
colorscheme dracula
