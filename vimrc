execute pathogen#infect()

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax on

let mapleader=" "

set hidden
set number
set history=100
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cindent
set smarttab
set smartindent
set autoindent
set copyindent
set nostartofline
set hlsearch
set showmatch
set laststatus=2
set shortmess+=F
set noshowmode
set updatetime=100
set incsearch
set ignorecase
set smartcase
set infercase
set backspace=indent,eol,start
set scrolloff=4
set splitbelow
set wildmenu
set wildmode=longest:full,list:full
set completeopt=longest,menuone,preview
set completeopt-=preview
set nobackup
set noswapfile
set pumheight=15

autocmd BufWritePre * :%s/\s\+$//e
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-t> :NERDTreeToggle<CR>

nnoremap <Leader><Leader> :e#<CR>

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
