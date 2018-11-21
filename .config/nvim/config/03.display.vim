set termguicolors
set background=dark
" colorscheme base16-tomorrow-night
let g:airline_theme='base16_tomorrow'

" Show both relative line numbers and the current line number (hybrid mode).
" This way it's easier to move around and do motions.
set number
set relativenumber
" cursor line
set cursorline
" Always draw the signcolumn.
set signcolumn=yes
" Show lines of context around the cursor.
set scrolloff=10
set sidescrolloff=10
" mode information is displayed in the statusline<Paste>
set noshowmode
" Only redraw when necessary so that the editor takes less resources.
set lazyredraw
