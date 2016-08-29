call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
Plug 'neomake/neomake'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'elixir-lang/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'vim-ruby/vim-ruby'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()

set background=dark
colorscheme solarized

let g:airline_theme="solarized"
let g:airline_powerline_fonts=1

let mapleader="\<SPACE>"

set shiftwidth=2
set tabstop=2

set expandtab
set number
set showmatch
set splitbelow
set splitright

set hlsearch
set ignorecase
set smartcase
set incsearch
set magic
