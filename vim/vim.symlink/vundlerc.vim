set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle manages Vundle
" required!
Bundle 'gmarik/vundle'

" Utilities
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skalnik/vim-vroom'
Bundle 'scrooloose/syntastic'

" Languages / filetypes
Bundle 'kchmck/vim-coffee-script'
Bundle 'helino/vim-json'
Bundle 'hallison/vim-markdown'
Bundle 'othree/xml.vim'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
