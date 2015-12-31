let macvim_skip_colorscheme = 1

"execute pathogen#infect()
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'altercation/vim-colors-solarized'

" Stuff
Plug 'editorconfig/editorconfig-vim'
Plug 'porqz/KeyboardLayoutSwitcher'

" Operation
Plug 'lfilho/cosco.vim'
Plug 'Raimondi/delimitMate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kien/ctrlp.vim'


" Modes
Plug 'digitaltoad/vim-jade'
Plug 'plasticboy/vim-markdown'
Plug 'wavded/vim-stylus'

call plug#end()


syntax enable
filetype plugin indent on
if has('gui_running')
        set background=light
        set gfn=Terminus\ (TTF):h18
else
        set background=dark
endif
colorscheme solarized

set ch          =2

set noincsearch
set mousehide

set noerrorbells
set visualbell t_vb=

set noeol
set binary

" russian hotkeys
set keymap      =russian-jcukenwin
set iminsert    =0
set imsearch    =0

set expandtab
set smarttab
set tabstop     =4
set shiftwidth  =4
set smartindent
set autoindent

set dir=/tmp

" i love wrapping
set wrap
set linebreak
set nolist
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk




let g:ctrlp_user_command            = 'ag %s -l --nocolor --hidden -g ""'

let g:vim_markdown_frontmatter      = 1
let g:vim_markdown_folding_disabled = 1
autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *.txt set filetype=markdown

autocmd FileType javascript,css,perl nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,perl inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
