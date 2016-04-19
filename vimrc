call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

" Stuff
Plug 'editorconfig/editorconfig-vim'
Plug 'f213/KeyboardLayoutSwitcher'

" Operation
Plug 'lfilho/cosco.vim'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab', { 'for': 'php' }
Plug 'scrooloose/nerdcommenter'

" Modes
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'stephpy/vim-yaml' " Faster and more robust yaml highlighter
"Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }

call plug#end()

source ~/.vim/_includes/boilerplate.vim

if has('gui_running')
        set background=light
        set gfn=Consolas:h16
        source ~/.vim/_includes/wrapping.vim
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

" ui options (i dont love distraction)
set noshowmode

" search options
set noincsearch
set ignorecase

" create undo points at puncuation when writing prose
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u

" plugin configuration
let g:ctrlp_user_command            = 'ag %s -l --nocolor --hidden -g ""'

let g:kls_mappings                  = 0 "disable switching layout, when pressing ':'

autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *.txt set filetype=markdown

nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>
autocmd FileType markdown source ~/.vim/_includes/markdown.vim
autocmd FileType perl source ~/.vim/_includes/perlbrew.vim

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
