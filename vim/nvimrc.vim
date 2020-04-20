if &compatible
  set nocompatible               " Be iMproved
endif

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

"dein Scripts-----------------------------
let b:dein_cache = $HOME . '/.cache/dein'
let b:dein_plugin = b:dein_cache . '/repos/github.com/Shougo/dein.vim'

" Required:
execute 'set runtimepath+=' . b:dein_plugin

" Required:
if dein#load_state(b:dein_cache)
  call dein#begin(b:dein_plugin)

  " Let dein manage dein
  " Required:
  call dein#add(b:dein_plugin)

  " Colorschemes
  call dein#add('fenetikm/falcon')
  call dein#add('joshdick/onedark.vim')
  call dein#add('challenger-deep-theme/vim')

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
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/vim-lsp')

  " Go
  call dein#add("fatih/vim-go")
  call dein#add("nsf/gocode")
  call dein#add('zchee/deoplete-go')

  " Typescript
  call dein#add('HerringtonDarkholme/yats.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------

filetype plugin indent on
syntax enable

" Install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

if (has("termguicolors"))
  set termguicolors
endif
colorscheme onedark
"set background=dark

" Use deoplete?
let g:deoplete#enable_at_startup = 0

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
