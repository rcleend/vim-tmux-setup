set nocompatible              " be iMproved, required
set number

" Indenting configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" Automatically use system clipboard
set clipboard=unnamed

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/kien/ctrlp.vim.git'
" Ignore the following directories in ctrlp:
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|public/assets\|vendor/'

Plugin 'https://github.com/scrooloose/nerdtree.git'
map <silent> <C-b> :NERDTreeToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Change cursor based on insert/normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
