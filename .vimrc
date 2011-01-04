set ai " autoindent
set si " smartindent
set cindent " do c-style indenting
set tabstop=2 " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2 " unify
set noexpandtab " real tabs please!
set nowrap " do not wrap lines
set smarttab " use tabs at the start of a line, spaces elsewhere
set number " show line numbers
set incsearch " recherche incrementale
set hlsearch " highlight search
set foldmethod=marker
set t_Co=256 " passage en 256 couleurs
"colorscheme 256_asu1dark " on applique le theme
"colorscheme wombat256 " on applique le theme
colorscheme xoria256 " on applique le theme
syntax on
"set cul " highlight current line
"set cuc " highlight current column
set rulerformat=%l/%L(%p%%),%c " get row / col cursor pos + file %
filetype plugin on
filetype indent on

" Motion training mode
"map <right> <esc>
"map <left> <esc>
"map <up> <esc>
"map <down> <esc>
"imap <right> <esc>
"imap <left> <esc>
"imap <up> <esc>
"imap <down> <esc>

set nocompatible

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
"set ruler
set backspace=indent,eol,start
set laststatus=2

" Ctrl+l turn off the current highlight
nnoremap <silent> <C-l> :nohls<CR><C-l>

" Motion training mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap ; :
nnoremap j gj
nnoremap k gk

" Deplacement entre les fenetres
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap hh <ESC>
inoremap jj <ESC>
inoremap kk <ESC> :w <CR>

" configuration des raccourci clavier pour make 
map <F5> :w <CR> :make <CR> <CR> :cope <CR>
map <F6> :cp <CR>
map <F7> :cn <CR>

map t :tabnew 

" configuration de make (jslint) pour javascript
autocmd FileType javascript set makeprg=cat\ %\ \\\|\ smjs\ ~/.vim/jslint/mylintrun.js\ %
autocmd FileType javascript set errorformat=%f:%l:%c:%m
autocmd FileType javascript set foldmethod=marker

" configuration de make pour php
autocmd FileType php set makeprg=php\ -lq\ %
autocmd FileType php set errorformat=%m\ in\ %f\ on\ line\ %l

au BufWinLeave * mkview
au BufWinEnter * silent loadview

