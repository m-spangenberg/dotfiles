set encoding=utf8
set number
set relativenumber
set autoindent
set smartindent
set wrap
set tabstop=4
set ts=4
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set lbr
set tw=500
set mouse=a
set history=500
set showmatch
set ruler
set cmdheight=1
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=1
syntax enable
set nobackup
set nowb
set noswapfile
set laststatus=2
set cursorline
filetype plugin indent on

"""""""""
" Theme "
"""""""""

" Dracula Theme
" https://draculatheme.com/vim
packadd! dracula
syntax enable
colorscheme dracula

""""""
" UI "
""""""

" turn on line numbering
set number

" highlight matching brackets, parenthesis and braces.
set showmatch

" automatically load changed files
set autoread

" auto-reload vimrc
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" show the filename in the window titlebar
set title

" set encoding
set encoding=utf-8

" mouse support
set mouse=a

" copy, cut and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" wrapping stuff
set textwidth=80
set colorcolumn=80

" ignore whitespace in diff mode
set diffopt+=iwhite

" Status bar
set laststatus=2

" enable completion
set ofu=syntaxcomplete#Complete

""""""""""""
" Searching "
"""""""""""""

set hlsearch "when there is a previous search pattern, highlight all its matches
set incsearch "while typing a search command, show immediately where the so far typed pattern matches
set ignorecase "ignore case in search patterns
set smartcase "override the 'ignorecase' option if the search pattern contains uppercase characters
set gdefault "imply global for new searches

"""""""""""""
" Indenting "
"""""""""""""

" enable tab indenting
nmap <Tab> >>
nmap <S-tab> <<

" When auto-indenting, use the indenting format of the previous line
set copyindent

" When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
" 'tabstop' is used in other places. A <BS> will delete a 'shiftwidth' worth of
" space at the start of the line.
set smarttab

" Copy indent from current line when starting a new line (typing <CR> in Insert
set autoindent

" Automatically inserts one extra level of indentation in some cases, and works
" for C-like files
set smartindent

""""""""
" GVim "
""""""""

"disable cursor blinking
set gcr=n:blinkon0

"remove menu bar
set guioptions-=m

"""""""""""""""""""""
" Language-Specific "
"""""""""""""""""""""

" tab width rules
set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" load the plugin and indent settings for the detected filetype
filetype on
filetype plugin indent on

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.html.erb set ft=eruby

" Add json syntax highlighting
au BufNewFile,BufRead *.json set ft=json syntax=javascript
