if &compatible
  set nocompatible
endif
set runtimepath^=~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

call dein#begin('~/.config/nvim/plugins')

call dein#add('Shougo/dein.vim')

" Utilities
call dein#add('Lokaltog/vim-easymotion')
call dein#add('Shougo/deoplete.nvim')
call dein#add('kien/ctrlp.vim')
call dein#add('nelstrom/vim-visual-star-search')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')
call dein#add('skalnik/vim-vroom')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')

" Go
call dein#add("fatih/vim-go")
call dein#add("nsf/gocode")
call dein#add('zchee/deoplete-go')

" Typescript
"call dein#add('leafgarland/typescript-vim')
call dein#add('HerringtonDarkholme/yats.vim')
"call dein#add('Shougo/vimproc.vim', {'build': 'make'}) 
"call dein#add('Quramy/tsuquyomi') 
"call dein#add('mhartington/deoplete-typescript')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
colorscheme solarized
set background=dark

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " no tabs, thank you
set formatoptions+=n       " support for numbered/bullet lists
set textwidth=80           " wrap at 80 chars by default
set colorcolumn=+0
set virtualedit=block      " allow virtual edit in visual block ..


" ----------------------------------------------------------------------------
"  Keymapping
" ----------------------------------------------------------------------------

nnoremap gt :NERDTreeToggle<CR>
nnoremap g<c-t> :NERDTreeFind<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>


" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

set ruler                  " show the cursor position all the time
set nolazyredraw           " turn off lazy redraw
set number                 " line numbers
set wildmenu               " turn on wild menu
set wildmode=longest:full,full
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling
