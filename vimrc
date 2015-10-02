set nocompatible      
filetype off
set shell=/bin/bash
"set vundle for plugin management

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
Plugin 'gmarik/Vundle.vim' 
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'git://github.com/digitaltoad/vim-jade.git'
Plugin 'tpope/vim-fugitive'
Plugin 'wookiehangover/jshint.vim'
Plugin 'https://github.com/marijnh/tern_for_vim.git'
Plugin 'https://github.com/ddollar/nerdcommenter.git'
Plugin 'https://github.com/vim-scripts/ZoomWin.git'
Plugin 'pangloss/vim-javascript'
Plugin 'https://github.com/rking/ag.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'Rip-Rip/clang_complete'
Plugin 'Shougo/neocomplete.vim'
Plugin 'https://github.com/godlygeek/csapprox.git'
"All of your Plugins must be added before the following line
call vundle#end()            " required

filetype indent on
filetype plugin on

" turn off auto cooment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"for javascript

set omnifunc=syntaxcomplete#Complete

autocmd FileType javascript setlocal omnifunc=tern#Complete
"you complete me configs
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_disable_for_files_larger_than_kb = 10000


" Needed for syntax highlighting and stuff
syntax enable	     "enable syntax higlighting
set ruler	     " Always show current positions along the bottom
set showcmd	     " show the command being typed
set cursorline
set noswapfile
set wildmenu         " for tab completion
set mouse=a	       " Enable mouse support in console
set smartcase
let g:clipbrdDefaultReg = '+'
set nohidden "remove the buffer on cloasing the tab
set showmode            "shows the current mode
set nobackup		" no *~ backup files
set autoread  "set to autoread when a file is changed from autside
set showmatch  "show matching brackets when text indicator is over them
set mat=2   "no of seconds to blink when matching brackets
set foldcolumn=1  "add a bit extar margin to the left
set laststatus=2 " always show
set number        "show line numbers
set relativenumber   "make the line numbers relative to current position
set so=12            " Avoid cursor getting to bottom/top
set wildignore=*.o,*~,*.pyc

"ignore case when working
set ignorecase

"while searching highlight the search
set hlsearch
set incsearch 

"height of the command bar
set cmdheight=2

" auto indent
set autoindent
set smartindent 
set wrap
" This shows what you are typing as a command.  I love this!
set showcmd

set expandtab "use spaces instead of tabs
set smarttab 
set shiftwidth=3  "1 tab = 3 spaces
set tabstop=3

set lbr "linebreak on 500 characters
set tw=500

"current time 
map! <F2> :echo 'Current time is ' . strftime('%c')<CR>

"disable highlight when // is pressed
nmap // :noh<cr>

"for php
autocmd FileType php setlocal makeprg=zca\ %<.php
autocmd FileType php setlocal errorformat=%f(line\ %l):\ %m



" key mapping
let g:mapleader=","


" ,f to find in nerd tree
map <leader>f :NERDTreeFind<CR>

" ,' to toggle in nerd tree
map <leader>' :NERDTreeToggle<CR>

"write
map <F8> : w <CR>  
"compile in c++
map <F9> : !g++ % && ./a.out <CR>

"default code for c++
autocmd BufNewFile *.cpp r ~/.vim/default.cpp 

colorscheme mustang


" spell check
"set spell spellang=en_us
