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
nnoremap <S-o> <C-o>

let mapleader = "\<Space>"

nmap <silent> @ <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'previm/previm'
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'arcticicestudio/nord-vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/vim-goimports'
Plug 'rust-lang/rust.vim'

call plug#end()


syntax on

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme nord
hi VertSplit guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
set fillchars=vert:\ 

au FileType markdown nnoremap <Leader>ft :TableFormat<CR>
nnoremap <Leader>fz :FZF<CR>
nnoremap <Leader>fx :Defx<CR>

let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'active': {
	\ 	'left': [ [ 'mode', 'paste' ],
	\ 			  [ 'gitbranchwithmark', 'readonly', 'filename', 'modified' ] ]
    \ },
	\ 'component_function': {
	\ 	'gitbranchwithmark': 'LightlineGitbranchWithMark'
    \ },
	\ }
function LightlineGitbranchWithMark()
	let branch = FugitiveHead()
	return branch == '' ? branch : ' '.branch
endfunction

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
	nnoremap <silent><buffer><expr> <CR>
			\ defx#do_action('open')
	nnoremap <silent><buffer><expr> l
			\ defx#do_action('open')
	nnoremap <silent><buffer><expr> P
			\ defx#do_action('preview')
	nnoremap <silent><buffer><expr> h
			\ defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> q
			\ defx#do_action('quit')
endfunction

let g:previm_open_cmd = 'open -a "Google Chrome"'
let g:vim_markdown_conceal = 0

let g:LanguageClient_serverCommands = {
	\ 'c': ['ccls', '--log-file=/tmp/cc.log'],
	\ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
	\ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ 'go': ['gopls'],
    \ }
let g:LanguageClient_autoStart = 1
let g:goimports = 1
let g:rustfmt_autosave = 1
let g:deoplete#enable_at_startup = 1

let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit'
	\}
let g:fzf_colors = {
	\ 'fg':      ['fg', 'Normal'],
	\ 'bg':      ['bg', 'Normal'],
	\ 'hl':      ['fg', 'Comment'],
	\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+':     ['fg', 'Statement'],
	\ 'info':    ['fg', 'PreProc'],
	\ 'prompt':  ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker':  ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header':  ['fg', 'Comment']
\}

" treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}
EOF
