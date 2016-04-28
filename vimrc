for i in split(glob('~/.vim/_includes/*.vim'), '\n')
    exe 'source' i
endfor

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
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Modes
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'stephpy/vim-yaml' " Faster and more robust yaml highlighter
"Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
Plug 'ervandew/supertab'

" Python
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

call plug#end()


if has('gui_running')
        set background=light
        set gfn=Consolas:h16
        "source ~/.vim/_includes/wrapping.vim
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
setlocal nonumber

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
"autocmd FileType markdown source ~/.vim/_includes/markdown.vim
"autocmd FileType perl source ~/.vim/_includes/perlbrew.vim
"autocmd FileType python source ~/.vim/_includes/python.vim

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

