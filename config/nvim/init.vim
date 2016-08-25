let g:airline_powerline_fonts=0

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'bling/vim-airline'
Plug 'elixir-lang/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()
