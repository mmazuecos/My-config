"=========== TABS ===============
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"=========== SEARCH ==============
set incsearch
set hlsearch

"===========PLUGINS ==============
"----NERDTree----
"NERDTree on startup if no filename is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set autoindent
set textwidth=80
set number
set showcmd
set lazyredraw
set showmatch       " Highligth matching parenthesis-like chars
colorscheme lyla
set cursorline      " highligth current line
filetype indent on

" ============ MAP ================
" 's' in kb is 'o' in dvorak-intl layout
:map <C-o> :w <enter>
:map <C-x> :x <enter>
:map <C-e> :q <enter>
" turn off search highlight
nnoremap <leader><space> :nohlsearch <enter>
execute pathogen#infect()
call pathogen#helptags()
