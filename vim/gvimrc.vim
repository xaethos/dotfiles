let g:solarized_termtrans=1
set background=light
colorscheme solarized

set anti
set guioptions+=e
set guioptions+=g
set guioptions+=i
set guioptions+=m
set guioptions+=r
set guioptions+=L
set guioptions-=t
set guioptions+=T
" "egmrLtT"   (MS-Windows),
" "aegimrLtT" (GTK, Motif and Athena))

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" C-# switches to tab
nmap <d-1> 1gt
nmap <d-2> 2gt
nmap <d-3> 3gt
nmap <d-4> 4gt
nmap <d-5> 5gt
nmap <d-6> 6gt
nmap <d-7> 7gt
nmap <d-8> 8gt
nmap <d-9> 9gt
