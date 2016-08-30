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

let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:deoplete#enable_at_startup = 1

set shiftwidth=2
set tabstop=2

set autoread
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

let mapleader="\<SPACE>"

imap fd <ESC>

inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

nnoremap <LEADER>qq :qa<CR>
nnoremap <LEADER>qQ :qa!<CR>
nnoremap <LEADER>qs :xa<CR>

nnoremap <LEADER>fF :Files<CR>
nnoremap <LEADER>ff :GitFiles<CR>
nnoremap <LEADER>fg :GitFiles?<CR>
nnoremap <LEADER>fr :History<CR>
nnoremap <LEADER>fs :w<CR>
nnoremap <LEADER>fS :wa<CR>

nnoremap <LEADER>fed :e $MYVIMRC<CR>
nnoremap <LEADER>feR :source $MYVIMRC<CR>

nnoremap <LEADER>bb :buffers<CR>
nnoremap <LEADER>bd :bdelete<CR>
nnoremap <LEADER>bn :bn<CR>
nnoremap <LEADER>bp :bp<CR>
nnoremap <LEADER>bR :e<CR>

nmap <LEADER><TAB> <C-^>

nmap <LEADER>w- :sp<CR>
nmap <LEADER>w/ :vsp<CR>
nmap <LEADER>w= <C-W>=
nmap <LEADER>wc :q<CR>
nmap <LEADER>wh <C-W>h
nmap <LEADER>wj <C-W>j
nmap <LEADER>wk <C-W>k
nmap <LEADER>wl <C-W>l
nmap <LEADER>ws <C-W>s
nmap <LEADER>wv <C-W>v
nmap <LEADER>wm :MaximizerToggle<CR>
nmap <LEADER>ww <C-W><C-W>

nnoremap <LEADER>sa :Ag<CR>
nnoremap <LEADER>sc :noh<CR>

nmap <LEADER>;  <Plug>Commentary
vmap <LEADER>;  <Plug>Commentary
omap <LEADER>;  <Plug>Commentary
nmap <LEADER>;; <Plug>CommentaryLine

nnoremap <LEADER>gb :Gblame<CR>
nnoremap <LEADER>gd :Gdiff<CR>
nnoremap <LEADER>gs :Gstatus<CR>
nnoremap <LEADER>gw :Gwrite<CR>
nnoremap <LEADER>gp :Git push<CR>
nnoremap <LEADER>gc :Gcommit<CR>
nnoremap <LEADER>gt :GitGutterToggle<CR>
