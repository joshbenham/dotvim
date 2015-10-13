call plug#begin('~/.vim/plugged')

    " Themes
    Plug 'chriskempson/base16-vim'
    Plug 'ajh17/Spacegray.vim'
    Plug 'altercation/vim-colors-solarized'

    " Always loaded plugins
    Plug 'bling/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/syntastic'

    " Set up fzf
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
    Plug 'junegunn/fzf.vim'

    " Only call when NERDTreeToggle has been called
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

    " Only call when editing Vala
    Plug 'rainux/vim-vala', { 'for': 'vala' }

    " Only call when editing Blade
    Plug 'xsbeats/vim-blade', { 'for': 'blade' }

    " Only call when editing Less
    Plug 'groenewege/vim-less', { 'for': 'less' }

    " Only call when editing Twig
    Plug 'beyondwords/vim-twig', { 'for': 'twig' }

    " Only call when editing Markdown
    Plug 'tpope/vim-markdown', { 'for': 'markdown' }

call plug#end()

filetype plugin on

" Setup color scheme
set t_Co=256
set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256
" colorscheme spacegray
colorscheme base16-ocean
let base16colorspace=256
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

" Set up the default mouse events and drawings
set ttymouse=xterm2
set ttyfast

" Set backspace to work for indent,eol,start
set backspace=2

" Bind escape to jj in insert mode
inoremap jj <esc>

" Bind shift[<,>] to tab multiple lines
vnoremap < <gv
vnoremap > >gv

" Set a default of 4 spaces, no expanded tab otherwise we override it
setlocal ts=4 sts=4 sw=4 expandtab
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

" Split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>q <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Handle whitespace
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

" Add rules (7.3+)
if exists('+colorcolumn')
	set colorcolumn=72,79
endif

" Popup menu
set completeopt+=menuone
set completeopt+=longest

set pumheight=12

" Ignore certain directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/env/*,*.pyc

"------------------------------------------------------------
" FZF
"------------------------------------------------------------

nnoremap <silent> <Leader>p        :Files<CR>
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>

"------------------------------------------------------------
" Airline
"------------------------------------------------------------

let g:airline_theme='base16'

"------------------------------------------------------------
" Nerdtree
"------------------------------------------------------------

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
