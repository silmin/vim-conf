if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  let &t_SI .= "\e[6 q"
  let &t_EI .= "\e[2 q"
  let &t_SR .= "\e[4 q"
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  endif
endif 

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

"set list listchars=tab:\▸\-
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set inccommand=split

set completeopt=menuone

syntax on

set whichwrap=b,s,h,l,<,>,[,]

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <C>; :

map <Esc><Esc> :nohlsearch<CR><Esc>

imap <C-j> <Esc>

map <S-k> {
map <S-j> }
map <S-h> ^
map <S-l> $

nnoremap wh <C-w>h
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wn :tabn<CR>
nnoremap wp :tabp<CR>
nnoremap wt :tabnew<CR>
nnoremap <S-o> :b #<CR>

let mapleader = "\<Space>"

nmap <silent> @ <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)

au FileType markdown nnoremap <Leader>ft :TableFormat<CR>

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'previm/previm'
Plug 'joshdick/onedark.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'arcticicestudio/nord-vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'mattn/vim-goimports'
Plug 'rust-lang/rust.vim'

call plug#end()

set fillchars=vert:\ 

colorscheme nord
"set termguicolors
hi VertSplit guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE

let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'active': {
	\ 	'left': [ [ 'mode', 'paste' ],
	\ 			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
	\ 'component_function': {
	\ 	'gitbranch': 'FugitiveHead'
    \ },
	\ }
let g:previm_open_cmd = 'open -a "Google Chrome"'
let g:vim_markdown_conceal = 0

let g:LanguageClient_serverCommands = {
	\ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ 'go': ['gopls'],
    \ }
let g:LanguageClient_autoStart = 1
let g:goimports = 1
let g:rustfmt_autosave = 1
let g:deoplete#enable_at_startup = 1

" treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}
EOF
