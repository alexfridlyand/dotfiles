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

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" Easy most-recent-buffer switching
nnoremap <Tab> :buffers<CR>:buffer<Space>
