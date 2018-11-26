set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')

  " behaviour
  call dein#add('lambdalisue/suda.vim')

  " indentation
  call dein#add('editorconfig/editorconfig-vim')

  " navigation
  call dein#add('airblade/vim-rooter')
  call dein#add('farmergreg/vim-lastplace')

  " editing
  call dein#add('scrooloose/nerdcommenter')

  " colorscheme
  call dein#add('chriskempson/base16-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-scripts/SyntaxAttr.vim')
  call dein#add('lilydjwg/colorizer')

  " git
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

  " FZF
  call dein#add('junegunn/fzf')
  call dein#add('junegunn/fzf.vim')

  call dein#end()
  call dein#save_state()

endif
