set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My bundles:
" Syntax and comments.
Bundle 'joonty/vim-phpqa.git'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'vim-scripts/php.vim--Hodge'
" NERDTree
Bundle 'scrooloose/nerdtree'
" Surround
Bundle 'tpope/vim-surround'
" PIV php integration
Bundle 'spf13/PIV'
" CtrlP
Bundle 'kien/ctrlp.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:phpqa_codesniffer_args = "--standard=Drupal"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-b> :call pdv#DocumentCurrentLine()<CR>

" Custom settings
set sw=2
set autoindent
set expandtab
set softtabstop=2
let mapleader=","

" Automaticly open tags file
let FILETAG=expand("./tags")
if filereadable(FILETAG)
  set tags=tags
endif

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPTag'

" Phpqa
" Don't run messdetector on save (default = 1)
 let g:phpqa_messdetector_autorun = 0
"
" " Don't run codesniffer on save (default = 1)
 let g:phpqa_codesniffer_autorun = 0
"
" " Show code coverage on load (default = 0)
" let g:phpqa_codecoverage_autorun = 1
