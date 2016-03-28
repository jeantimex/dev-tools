set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'

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

" vim-airline configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

"
" Basic vim setup
"
colorscheme papercolor

set nowrap
set laststatus=2
syntax enable        " enable syntax processing
set tabstop=2        " number of visual spaces per TAB
set softtabstop=2    " number of spaces in tab when editing
set expandtab        " tabs are spaces
set number           " show line numbers
"set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype indent on   " load filetype-specific indent files
set showmatch        " highlight matching [{()}]
set incsearch        " search as characters are entered
set hlsearch         " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" make the left and right movement wrap to previous/next line
set ww+=<,>

" make the backspace work like in most other programs
set backspace=indent,eol,start

" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=vert:│

" FZF stuff
set rtp+=/usr/local/opt/fzf

" Avoid putting comments in front of new lines
au FileType * set fo-=c fo-=r fo-=o

