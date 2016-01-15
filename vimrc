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
set noruler
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

let g:vim_markdown_frontmatter      = 1
let g:vim_markdown_folding_disabled = 1
autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *.txt set filetype=markdown

autocmd FileType javascript,css,perl nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,perl inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>
autocmd FileType markdown source ~/.vim/_includes/words.vim

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
