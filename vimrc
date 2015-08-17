set nocompatible      
filetype off
"set vundle for plugin management

 "set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'gmarik/Vundle.vim'  "let vundle manage vundle
 Plugin 'https://github.com/scrooloose/nerdtree.git'
 Plugin 'Valloric/YouCompleteMe'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

 "All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Needed for syntax highlighting and stuff
syntax enable
filetype plugin on
set ruler	     " Always show current positions along the bottom
set showcmd		   " show the command being typed
set cursorline
set noswapfile
filetype indent on
" yank to the system register by default
set clipboard=unnamed
"shows the current mode
set showmode
set nobackup		" no *~ backup files
"current time 
map! <F2> :echo 'Current time is ' . strftime('%c')<CR>

"for php
autocmd FileType php setlocal makeprg=zca\ %<.php
autocmd FileType php setlocal errorformat=%f(line\ %l):\ %m


"write
map <F8> : w <CR>  
"compile in c++
map <F9> : !g++ % && ./a.out <CR>

"default code for c++
autocmd BufNewFile *.cpp r ~/.vim/default.cpp 

"height of the command bar
set cmdheight=2

"ignore case when working
set ignorecase

"while searching highlight the search
set hlsearch

"add a extra margin to the left
set foldcolumn=1

try
   colorscheme desert
catch
endtry


set background=dark


" auto indent
set autoindent

" This shows what you are typing as a command.  I love this!
set showcmd

" Who wants an 8 character tab?  Not me!
set shiftwidth=3
set softtabstop=3

" Enable mouse support in console
set mouse=a

" spell check
"set spell spellang=en_us

