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
"----vim airline----
set laststatus=2 "airline always on
set ttimeoutlen=10 "fast leave of insert mode
let g:airline_powerline_fonts = 1
"let g:airline_theme='PaperColor'
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'dark'
"let g:airline_theme = 'base16_isotope'
"let g:airline_theme = 'base16_shapeshifter'

set autoindent
set textwidth=80
set nu
set relativenumber
set showcmd
set lazyredraw
set showmatch       " Highligth matching parenthesis-like chars
"let g:solarized_termcolors=256
"set t_Co=256
"set background=light
"colorscheme solarized
colorscheme lyla
"colorscheme PaperColor
set cursorline      " highligth current line
filetype indent on

" ============ MAP ================
" 's' in kb is 'o' in dvorak-intl layout
:map <C-o> :w <enter>
:map <C-x> :x <enter>
:map <C-e> :q <enter> 
:map <C-h> :q! <enter>
" turn off search highlight
nnoremap <leader><space> :nohlsearch <enter>
nnoremap <leader><Tab> :NERDTree <enter>
" once copied, it can be pasted multiple times
xnoremap p pgvy
execute pathogen#infect()
call pathogen#helptags()
