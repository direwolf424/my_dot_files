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
"Plugin 'git://github.com/digitaltoad/vim-jade.git'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/marijnh/tern_for_vim.git'
Plugin 'wookiehangover/jshint.vim'
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
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/moll/vim-node.git'
Plugin 'https://github.com/godlygeek/tabular.git'
Plugin 'plasticboy/vim-markdown'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'https://github.com/Valloric/MatchTagAlways.git'
"Plugin 'SirVer/ultisnips'

"All of your Plugins must be added before the following line
call vundle#end()            " required

filetype indent on
filetype plugin on

" turn off auto cooment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"for javascript

"you complete me configs
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_disable_for_files_larger_than_kb = 10000


" Needed for syntax highlighting and stuff
set history=700 " how many lines vim has to remember 
syntax enable	     "enable syntax higlighting
set ruler	     " Always show current positions along the bottom
set showcmd	     " show the command being typed
set cursorline
set noswapfile
set wildmenu         " for tab completion
set mouse=a	       " Enable mouse support in console
set smartcase
"let g:clipbrdDefaultReg = '+'
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
set lazyredraw "dont redraw while executing macros (increases performance)
set magic "for regular expressions turn magic on
set encoding=utf8
set ffs=unix,dos,mac
set nowb

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


"disable highlight when // is pressed
nmap // :noh<cr>

"for php
autocmd FileType php setlocal makeprg=zca\ %<.php
autocmd FileType php setlocal errorformat=%f(line\ %l):\ %m

"tern configs
"omnifunc=tern#Complete
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

"with mapneader we can do extra key combination
let g:mapleader=","

" fast saving using map leader
nmap <leader>w :w!<cr>

" ,f to find in nerd tree
map <leader>f :NERDTreeFind<CR>

" ,' to toggle in nerd tree
map <leader>' :NERDTreeToggle<CR>


map <leader>; :NERDTreeFocus<CR>

"compile in c++
map <F9> : !g++ % && ./a.out <CR>

"default code for c++
"autocmd BufNewFile *.cpp r ~/.vim/default.cpp 

colorscheme muon
"colorscheme sexybitch

" copy to clipboard
vnoremap <leader>y "+y
" Paste from clipboard
vnoremap <leader>p "+p
" Copy whole code to clipboard
nnoremap <leader>cc ggvG"+y``



" semicolon is comma :P
nnoremap ; :

"useful mappings for managing tabs
map <leader>nt :tabnew<CR>
map <leader>m :tabnext<CR>
map <leader>n :tabprevious<CR>
map <leader>q :tabclose<CR>

" Open .vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :so $MYVIMRC<cr>


"Automatically reload vimrc when it's saved "{{{
augroup VimrcSo
   au!
   autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
"}}}


"map 0 ^ "remap VIM 0 to first non-blank character


" Open at the previous cursor position
autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif

" Remove stray ^M
noremap <leader>mm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" move between viewports
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

"configs for supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checker_args='--ignore=E501,E225'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'"
let g:airline_powerline_fonts = 1

" configs for neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
   let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
   " For no inserting <CR> key.
   return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-k>  pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
"set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
   let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#enable_auto_close_preview = 1

" clang_complete + neovim
if !exists('g:neocomplete#force_omni_input_patterns')
   let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.c =
         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
        \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_default_keymappings = 0
let g:clang_use_library = 1

