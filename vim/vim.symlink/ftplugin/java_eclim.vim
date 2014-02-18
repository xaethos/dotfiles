" Import the class under the cursor
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>

" Organize imports
nnoremap <silent> <buffer> <leader>I :JavaImportOrganize<cr>

" Format code
nnoremap <silent> <buffer> <leader>f :JavaFormat<cr>
vnoremap <silent> <buffer> <leader>f :JavaFormat<cr>
nnoremap <silent> <buffer> <leader>F :%JavaFormat<cr>

" Search for the javadocs of the element under the cursor
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
