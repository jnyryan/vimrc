set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
"Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

syntax on

filetype plugin indent on

syntax enable

set mouse=a
set laststatus=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set hlsearch
set wildmenu

set ruler
set cursorline
set number

" Run Pathogen
call pathogen#infect()

" Solarized stuff
let g:solarized_termtrans = 1
set background=light
colorscheme solarized
map <F2> :NERDTreeToggle<CR>

" numbers
nnoremap <F3> :NumbersToggle<CR>

" powerline
let g:Powerline_symbols = 'unicode'
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\


"bind K to grep word under cursor
noremap K :Ag! --ignore-dir node_modules "\b<C-R><C-W>\b"<CR>:cw<CR>

