" search
set ignorecase " ignore case in searches
set smartcase  " use case sensitive if capital letter present or \C
" Use magic for regular expressions
set magic
" turn backup/swap off
set nobackup
set nowb
set noswapfile
" use persistent history
call mkdir("/tmp/.vim-undo-dir", "p", 0700)
set undodir=/tmp/.vim-undo-dir
set undofile
" split panes
set splitbelow
set splitright
" Required for operations modifying multiple buffers like rename.
set hidden
" Copies using system clipboard
set clipboard+=unnamedplus
" enable mouse support
set mouse=a mousemodel=popup

" editorconfig
let g:EditorConfig_max_line_indicator = "exceeding"
let g:EditorConfig_preserve_formatoptions = "1"
autocmd FileType * setlocal formatoptions-=t
                          \ formatoptions-=c
                          \ formatoptions-=r
                          \ formatoptions-=o

" NERD commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
