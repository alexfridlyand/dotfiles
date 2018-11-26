" Use ; for commands
nnoremap ; :

" :W sudo saves the file
command! W w !sudo tee % > /dev/null
" syntax group
nnoremap <Leader>a	:call SyntaxAttr()<CR>
" search highlight
nmap <silent> <BS>  :nohlsearch<CR>
" FZF
nnoremap <C-p> :<C-u>FZF<CR>

" Easy most-recent-buffer switching
nnoremap <Tab> :buffers<CR>:buffer<Space>
