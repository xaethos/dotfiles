" ----------------------------------------------------------------------------
"  Initialize plugins
" ----------------------------------------------------------------------------

source ~/.vim/vundlerc.vim


" ----------------------------------------------------------------------------
"  Autosave instead of swapfile
" ----------------------------------------------------------------------------

"noswapfile set
"autocmd BufLeave,FocusLost * silent! :write


" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
set nowrap                 " do not wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set textwidth=80           " wrap at 80 chars by default
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
"set backspace=2            " allow backspacing over everything in insert mode
"set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling


" ----------------------------------------------------------------------------
"  Solarized
" ----------------------------------------------------------------------------

" option name               default     optional
" ------------------------------------------------
" g:solarized_termcolors=   16      |   256
" g:solarized_termtrans =   0       |   1
" g:solarized_degrade   =   0       |   1
" g:solarized_bold      =   1       |   0
" g:solarized_underline =   1       |   0
" g:solarized_italic    =   1       |   0
" g:solarized_contrast  =   "normal"|   "high" or "low"
" g:solarized_visibility=   "normal"|   "high" or "low"
" ------------------------------------------------

let g:solarized_termtrans=1
set background=dark
colorscheme solarized


" ----------------------------------------------------------------------------
" Visual Cues
" ----------------------------------------------------------------------------


set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set hlsearch               " highlight searches


" ---------------------------------------------------------------------------
"  Open current file in Chrome
" ---------------------------------------------------------------------------

command Chrome :!open -a "Google Chrome" "%"


" ---------------------------------------------------------------------------
"  Extra whitespace
" ---------------------------------------------------------------------------

set list listchars=tab:»\ ,trail:·

function! StripWhitespace ()
    exec ':%s/\s\+$//gc'
endfunction
nnoremap <Leader>s :call StripWhitespace ()<CR>


" ---------------------------------------------------------------------------
"  Syntax highlighting
" ---------------------------------------------------------------------------

syntax on
filetype plugin indent on
" set omnifunc=syntaxcomplete#Complete


" ---------------------------------------------------------------------------
"  Project configuration
" ---------------------------------------------------------------------------

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" ---------------------------------------------------------------------------
"  CtrlP
" ---------------------------------------------------------------------------

let g:ctrlp_working_path_mode = 'a'
