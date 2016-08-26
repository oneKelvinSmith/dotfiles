let g:airline_powerline_fonts=1

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'bling/vim-airline'
Plug 'matze/vim-move'
Plug 'neomake/neomake'
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

let g:airline_powerline_fonts=1

