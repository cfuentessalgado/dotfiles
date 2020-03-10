set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'leafgarland/typescript-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jwalton512/vim-blade'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'posva/vim-vue'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'mattn/emmet-vim'
Plugin 'iamcco/coc-tailwindcss'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required
