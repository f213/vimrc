let macvim_skip_colorscheme = 1

highlight Normal guibg=lightyellow

set gfn=Terminus\ (TTF):h18
set backspace=indent,start,eol
set nocompatible
set nostartofline
set ignorecase
set whichwrap+=>
set whichwrap+=<
set ch=2
set ruler
let c_comment_strings=1
syntax on
set hlsearch
set mousehide

set showmode
set noerrorbells
set visualbell t_vb=

set noeol
set binary

" russian hotkeys
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

filetype plugin indent on
set shiftwidth=4 
set tabstop=4 
set expandtab
set smarttab
set smartindent

set dir=/tmp

" i love wrapping
set wrap
set linebreak
set nolist
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" https://github.com/kien/ctrlp.vim
" do `brew install ag`
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" https://github.com/vim-scripts/perl-support.vim
let g:Perl_InsertFileHeader = 'no'

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

execute pathogen#infect()
