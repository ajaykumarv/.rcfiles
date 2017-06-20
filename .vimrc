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
set splitright

set path=$PATH/**
set wildmenu
set wildignore+=*.o,*.d,*.a,*.dd,tags
set wildignore+=*/.git/*,*  /.hg/*,*/.svn/*

"ctrlp
let g:ctrlp_clear_cache_on_exit=0

"NerdTree
map <C-n> :NerdTreeToggle<CR>
let NERDTreeRespectWildIgnore = 1
let NERDTreeMouseMode = 3

"a.vim
nmap A :A<CR>

"pathogen
execute pathogen#infect()
