:set number
" :set wrap
:set autoindent
:set tabstop=4 expandtab
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ignorecase
:set incsearch
:set nohlsearch
:set cursorline
:set showmode
:set wildmenu
:set wildmode=full
:colorscheme gruvbox
" :colorscheme PaperColor
" :colorscheme jellybeans
" :%retab
:set sb
:set spr

:set listchars=tab:>-
:set list

" Set completeopt to have a better completion experience
:set completeopt=menuone,longest

" Avoid showing message extra message when using completion
:set shortmess+=c

call plug#begin("/home/ss/.config/nvim/plugged")

Plug 'godlygeek/tabular' " Tabular text alignment plugin
Plug 'sheerun/vim-polyglot' " Vim-Polyglot
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
" Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'scrooloose/nerdtree' " NERDTree Plugin
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'davidhalter/jedi-vim'  " Jedi-Vim
Plug 'https://github.com/vim-airline/vim-airline' " vim-airline Status bar
" Plug 'vim-airline/vim-airline-themes' " vim-airline-themes Status Bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'machakann/vim-highlightedyank' " vim-highlightedyank
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" system clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>

" resize faster
nnoremap <M-,> <C-W>5<
nnoremap <M-.> <C-W>5>
nnoremap <M--> <C-W>5-
nnoremap <M-=> <C-W>5+

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Neovide settings
let g:neovide_refresh_rate=60
" let g:neovide_transparency=0.95
let g:neovide_cursor_vfx_particle_density=12.0
let g:neovide_no_idle=v:true " force neovide to redraw all the time
let g:neovide_input_use_logo=v:true
let g:neovide_cursor_animation_length=0.1
let g:neovide_cursor_trail_length=0.55
let g:neovide_cursor_vfx_mode = "pixiedust"
set guifont=Hack\ Nerd\ Font:h09

" let g:transparent_enabled=v:true

let g:python3_host_prog="/opt/anaconda3/bin/python3.9"
let g:python_host_prog="/opt/anaconda3/bin/python"
