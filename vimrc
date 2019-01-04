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

" Make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" Automatically use system clipboard
set clipboard=unnamed

filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'https://github.com/kien/ctrlp.vim.git'
" Ignore the following directories in ctrlp:
" Let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|public/assets\|vendor/'

" FZF file searcher
Plugin 'https://github.com/junegunn/fzf.git'
Plugin 'https://github.com/junegunn/fzf.vim.git'
map <C-p> :Files <CR>

Plugin 'https://github.com/scrooloose/nerdtree.git'
map <silent> <C-b> :NERDTreeToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Change cursor based on insert/normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
