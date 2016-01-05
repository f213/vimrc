call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

" Stuff
Plug 'editorconfig/editorconfig-vim'
Plug 'porqz/KeyboardLayoutSwitcher'

" Operation
Plug 'lfilho/cosco.vim'
Plug 'Raimondi/delimitMate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'

" Modes
Plug 'digitaltoad/vim-jade'
Plug 'plasticboy/vim-markdown'
Plug 'wavded/vim-stylus'
Plug 'stephpy/vim-yaml' " Faster and more robust yaml highlighter

call plug#end()

source ~/.vim/boilerplate.vim

if has('gui_running')
        set background=light
        set gfn=Consolas:h16
else
        set background=dark
endif
colorscheme solarized

" russian hotkeys
set keymap      =russian-jcukenwin
set iminsert    =0
set imsearch    =0

" spaces instead of tabs
set expandtab
set smarttab
set tabstop     =4
set shiftwidth  =4
set smartindent
set autoindent

" i love wrapping
set wrap
set linebreak
set nolist
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk


" ui options (i dont love distraction)
set noruler
set noshowmode

" search options
set noincsearch
set ignorecase


" plugin configuration
let g:ctrlp_user_command            = 'ag %s -l --nocolor --hidden -g ""'

let g:vim_markdown_frontmatter      = 1
let g:vim_markdown_folding_disabled = 1
autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *.txt set filetype=markdown

autocmd FileType javascript,css,perl nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,perl inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
