set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"-----------------
" Code Completion
"-----------------
Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'honza/vim-snippets'
Bundle 'mattn/emmet-vim'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"
"-----------------------
" Surrounding Operation
"-----------------------
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'

"--------------
" Code Reading
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'

"-------------
" Other Utils
" ------------
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/mru.vim'
Bundle 'scrooloose/syntastic'

" bind mouse toggle key to F8
Bundle 'holys/vim-togglemouse'
"Bundle 'nathanaelkane/vim-indent-guides'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
Bundle 'tpope/vim-markdown'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-haml'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'

"Bundle '2072/PHP-Indenting-for-VIm'
Bundle  'lepture/vim-jinja'
Bundle 'digitaltoad/vim-jade'
" Ruby
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'

" Scheme
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"Python checker
Bundle 'nvie/vim-flake8'
Bundle 'vim-scripts/pylint.vim'

" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" Command-T
Bundle 'vim-scripts/Command-T'

filetype plugin indent on     " required!
