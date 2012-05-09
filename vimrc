call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Setup color scheme
set background=dark
colorscheme jellybeans_joshbenham
syntax enable
set cursorline

" Ignore case for search but enable smart search
set ignorecase
set smartcase

" Make search more visual
set incsearch
set hlsearch

set smartindent
set scrolloff=3
set number
set nowrap
set mouse=a

" Tab settings
vnoremap < <gv
vnoremap > >gv
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType css setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 expandtab

" Always show the status line
set laststatus=2

" Leader of '\' is too far from home row.
let mapleader = ","
let g:mapleader = ","

" ctrlp.vim
let g:ctrlp_max_height = 16
let g:ctrlp_lazy_update = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/env/*,*.pyc

" nerdtree
map <leader>e :NERDTreeToggle<CR>
map <leader>ge :NERDTreeFind<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Change where the tmp directory is
set backupdir=~/tmp,/tmp
set directory=~/tmp,/var/tmp,/tmp

" Paste Toggle
set pastetoggle=<F6>

" Function key shortcuts
noremap <F1> :set nonumber!<CR>
noremap <F2> :set mouse=<CR>
noremap <F3> :set mouse=a<CR>
nmap <F5> :source ~/.vimrc<CR>

noremap <leader>p :CtrlP<CR>
noremap <leader>o :CtrlPBuffer<CR>

noremap <leader>s :SyntasticCheck<CR>
