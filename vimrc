for i in split(glob('~/.vim/_includes/*.vim'), '\n')
    exe 'source' i
endfor

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'editorconfig/editorconfig-vim'
Plug 'f213/KeyboardLayoutSwitcher'

Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'joshdick/onedark.vim'

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

" plugin configuration
let g:ctrlp_user_command            = 'ag %s -l --nocolor --hidden -g ""'

let g:kls_mappings                  = 0 "disable switching layout, when pressing ':'

autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *.txt set filetype=markdown

source ~/.vim/prose.vim

syntax on
colorscheme onedark

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

