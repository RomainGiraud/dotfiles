"" My vimrc!

" disable vi compatibility
set nocompatible
 
" disable blinks and beeps
set noerrorbells
 
" enable mouse
if has('mouse')
  set mouse=a
endif
 
" display line numbers
set nu
set relativenumber
 
" define keys <backspace> and <del>
" remove: indent, eol, start
"   - 0 => none
"   - 1 => indent,eol
"   - 2 => indent,eol,start
set bs=2
 
" smart indent
set smartindent
 
" load indent and plugins depending of filetype
filetype plugin indent on
 
" syntax highlighting
syntax on

" force fileformats
set fileformats=unix
 
" display status bar
" 'set rulerformat=[...]'
set laststatus=2
set ruler
 
" display incomplete commands in status bar
set showcmd
 
" replace tab by spaces
set expandtab
 
" auto-indent size (+ >> and <<)
set shiftwidth=4
 
" size indent <tab> and <backspace>
set softtabstop=4
 
" size indent for <tab> without 'expandtab'
set tabstop=4
 
" loop search
set wrapscan
 
" incremental search
set incsearch
 
" enable color highlighting of search
set hlsearch

" ignore case search
set ignorecase
set smartcase

" jump to matching bracket
set showmatch
 
" disable backups (~file)
set nobackup

" underline current line
set cursorline

" scroll lines around
set scrolloff=10

" refresh file if updated
set autoread
 
" black background
set background=dark
 
 
" indent param for some filetypes
au FileType html set softtabstop=2
au FileType html set shiftwidth=2
au FileType html set tabstop=2
 
au FileType xml set softtabstop=2
au FileType xml set shiftwidth=2
au FileType xml set tabstop=2
 
au FileType ant set softtabstop=2
au FileType ant set shiftwidth=2
au FileType ant set tabstop=2
 
au FileType php set softtabstop=2
au FileType php set shiftwidth=2
au FileType php set tabstop=2
 
au FileType yaml set softtabstop=2
au FileType yaml set shiftwidth=2
au FileType yaml set tabstop=2
 
au FileType javascript set softtabstop=2
au FileType javascript set shiftwidth=2
au FileType javascript set tabstop=2
 
au FileType ruby set softtabstop=2
au FileType ruby set shiftwidth=2
au FileType ruby set tabstop=2
 
au FileType eruby set softtabstop=2
au FileType eruby set shiftwidth=2
au FileType eruby set tabstop=2
 

" file templates
"autocmd BufNewFile main.cpp 0r $HOME/.vim/templates/main.cpp.tpl
"autocmd BufNewFile Makefile 0r $HOME/.vim/templates/Makefile.tpl


" Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" base16 scheme
Plugin 'chriskempson/base16-vim'

Plugin 'AnsiEsc.vim'

Plugin 'altercation/vim-colors-solarized'

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


" color scheme

" number of colors
"let base16colorspace="256"
"let g:solarized_termcolors=256
"set t_Co=256

" dark background
set background=dark

" theme
colorscheme solarized

" correct diff
highlight DiffAdd cterm=none ctermfg=white ctermbg=Blue gui=none guifg=white guibg=Blue
highlight DiffDelete cterm=none ctermfg=white ctermbg=Blue gui=none guifg=white guibg=Blue
highlight DiffChange cterm=none ctermfg=white ctermbg=Blue gui=none guifg=white guibg=Blue
highlight DiffText cterm=none ctermfg=black ctermbg=White gui=none guifg=black guibg=White

