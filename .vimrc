set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set nolist
set noshowmode

set number
set virtualedit=onemore
set autoindent
set smartindent
set visualbell t_vb=
set showmatch
set laststatus=2
set wildmode=list:longest

set list listchars=tab:\▸\-
set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

syntax on
colorscheme onedark
let g:lightline = {
    \'colorscheme': 'onedark',
    \}

set whichwrap=b,s,h,l,<,>,[,]

nnoremap j gj
nnoremap k gk
nnoremap ; :

map <Esc><Esc> :nohlsearch<CR><Esc>

imap <C-j> <Esc>

nnoremap <S-k> {
nnoremap <S-j> }
nnoremap <S-h> ^
nnoremap <S-h> $

nnoremap wh <C-w>h
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l


" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'

call plug#end()

let g:vim_markdown_folding_disabled = 1
