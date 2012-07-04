call pathogen#infect()
call pathogen#helptags()

filetype plugin on

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

" Enable line numbering
set number

" Disable line wrapping
set nowrap

" Allow mouse click to change cursor position
set mouse=a

" Bind escape to jj in insert mode
inoremap jj <esc>

" Bind shift[<,>] to tab multiple lines
vnoremap < <gv
vnoremap > >gv

" Set a default of 4 spaces, no expanded tab otherwise we override it
setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

" Always show the status line
set laststatus=2

" Leader of '\' is too far from home row.
let mapleader = ","
let g:mapleader = ","

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

"------------------------------------------------------------
" CtrlP
"------------------------------------------------------------

" Set the max files
let g:ctrlp_max_files = 10000

" Set the max height
let g:ctrlp_max_height = 16

" Set ctrlp to lazy update
let g:ctrlp_lazy_update = 1

" Ignore certain directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/env/*,*.pyc

" Bind keys to trigger CtrlP
noremap <leader>p :CtrlP<CR>
noremap <leader>o :CtrlPBuffer<CR>

" Optimize file searching
if has("unix")
    let g:ctrlp_user_command = {
		\   'types': {
		\       1: ['.git/', 'cd %s && git ls-files']
		\   },
		\   'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
		\ }
endif

"------------------------------------------------------------
" Nerdtree
"------------------------------------------------------------

" Set the max files
let g:ctrlp_max_files = 10000

" Bind keys to trigger Nerdtree
map <leader>e :NERDTreeToggle<CR>
map <leader>ge :NERDTreeFind<CR>

" Give nerd tree minimal UI
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"------------------------------------------------------------
" Syntastic
"------------------------------------------------------------

" Create a list window showing errors
let g:syntastic_auto_loc_list=1      

" Auto jump to the first error
let g:syntastic_auto_jump=1   

" Bind keys to trigger Syntastic
noremap <leader>s :SyntasticCheck<CR>
