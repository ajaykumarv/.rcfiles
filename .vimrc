set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'townk/vim-autoclose'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"YouCompleMe
let g:clang_library_path='/home/ajay/.vim/bundle/YouCompleteMe/third_party/ycmd/libclang.so.3.9' 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"ack/ag
let g:ackprg = "ag --nogroup --nocolor --column"
noremap <leader>s :Ack! "<cword>"<cr>

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
