syntax on
set tabstop=4
set expandtab
set autoindent
set hlsearch
set incsearch
set ignorecase
set number
set backspace=indent,eol,start
set mouse=a

set path=$PATH/**
set wildmenu
set wildignore+=*.o,*.d,*.a,*.dd
set wildignore+=*/.git/*,*  /.hg/*,*/.svn/*

"ctrlp
let g:ctrlp_clear_cache_on_exit=0

"NerdTree
map <C-n> :NerdTreeToggle<CR>

"pathogen
execute pathogen#infect()
