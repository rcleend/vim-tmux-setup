set nocompatible              " be iMproved, required
" Set line numbers
set number

" Disable line wrap
:set nowrap

" Indenting configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Change cursor based on insert/normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" FZF file searcher
Plugin 'https://github.com/junegunn/fzf.git'
Plugin 'https://github.com/junegunn/fzf.vim.git'
map <C-p> :Files <CR>
map <C-f> :Ag <CR>

" NERDTree
Plugin 'https://github.com/scrooloose/nerdtree.git'
map <silent> <C-b> :NERDTreeToggle<CR>

" Airline StatusLine
Plugin 'https://github.com/vim-airline/vim-airline.git'

" Enable noshowmode for airline
:set noshowmode

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
