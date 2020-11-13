if has('vim_starting')                              
  set rtp+=~/.vim/plugged/vim-plug
  let &t_SI .= "\e[6 q"                                   
  let &t_EI .= "\e[2 q"                                                               
  let &t_SR .= "\e[4 q"
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end                                                  
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
let g:lightline = {
    \'colorscheme': 'onedark',
    \}

set whichwrap=b,s,h,l,<,>,[,]

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <C>; :

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
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'gabrielelana/vim-markdown'
Plug 'previm/previm'
Plug 'joshdick/onedark.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

colorscheme onedark

let g:previm_open_cmd = 'open -a "Google Chrome"'
let g:vim_markdown_conceal = 0

let g:LanguageClient_serverCommands = {
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'go': ['~/golang/bin/gopls'],
    \ }
let g:deoplete#enable_at_startup = 1
