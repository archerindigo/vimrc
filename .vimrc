""""""""""""""""""""""""""""""""""""""
" Author: archerindigo
" GitLab (Main): https://gitlab.com/archerindigo/vimrc
" GitHub (Mirror): https://github.com/archerindigo/vimrc
" License: MIT
"
" Last Update: 2021-11-04
""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" System
"""""""""""""""""""""""""""""
set nocompatible


""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""
set nu                  " Show line number
set wrap                " Wrap long lines
set showmatch           " Show matching brackets when closing it
set matchtime=2         " Matching brackets highlight duration (200ms)
set showcmd             " Show command status
set scrolloff=3         " Start to scroll when reaching lines before the edge
set mouse=a             " Enable mouse control in all modes
set ttymouse=xterm2     " Resolve mouse mode problem in tmux
set laststatus=2        " Show status line
set cursorline          " Highlight current line
if has("syntax")
  syntax on
endif

"""""""""""""""""""""""""""""
" Text Formatting
"""""""""""""""""""""""""""""
set shiftwidth=4            
set tabstop=4                   " A tab consumes 4 space
set expandtab                   " Tabs are spaces
set softtabstop=4               " Delete tabstop spaces when spaces are tab
set autoindent          
set smartindent
filetype plugin indent on       " Enable specific formatting rules support for certain filetypes

"""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""
set hlsearch                    " Highlight search results
set incsearch                   " Instantly search while typing
set ignorecase                  " Case-insensitive search
set smartcase                   " Switch to case-sensitive search when keywords contain uppercase
set wildmenu                    " Enable wildmenu while entering tab in command mode
set wildmode=list:longest,full  " Allow full list and auto-completion in wildmenu

"""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle', 'tag': '6.10.9' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive', { 'tag': 'v3.3' }
Plug 'majutsushi/tagbar', {'on':['TagbarToggle'], 'tag': 'v3.0.0' }
Plug 'nathanaelkane/vim-indent-guides', { 'tag': '1.6' }
Plug 'wlemuel/vim-tldr', { 'tag': 'v0.4' }
Plug 'junegunn/gv.vim'
Plug 'rakr/vim-one'
Plug 'sainnhe/sonokai'
call plug#end()

"""""""""""""""""""""""""""""
" Theme and specific settings 
" for vim and gvim
"""""""""""""""""""""""""""""
set background=dark

" sonokai specific configurations
let g:sonokai_style = 'maia'        " Style of sonokai color
let g:sonokai_enable_italic = 1     " Allow italic text (may not work on some terminals)
let g:sonokai_transparent_background = 1    " Use transparent background color
                                            " with respect to the terminal instead of
                                            " the original sonokai styled background

" One specific configurations
let g:one_allow_italics = 1

colorscheme sonokai             " Default color scheme for both vim and gvim

if !has('gui_running')
    set t_Co=256
else
    "set guifont=Source\ Code\ Pro\ 10		" Recommended font
    set guioptions-=r           " Remove right-hand scroll bar
    set guioptions-=L           " Remove left-hand scroll bar
    "set guioptions-=T          " Remove toolbar
    "set guioptions-=m          " Remove menu bar
    set guioptions+=a           " Enable copy-on-select
endif

" Set true color if supported
"" tmux is usually buggy in true color so keep this setting out
if (has("termguicolors") && empty($TMUX))
    set termguicolors
endif

" lightline specific settings
let g:lightline = { 'colorscheme': 'sonokai' }
set noshowmode

"""""""""""""""""""""""""""""
" Key remap
"""""""""""""""""""""""""""""
" Non-plugin related
"" Ctrl-h/l as tab switching
nnoremap <C-h> <Esc>gT
nnoremap <C-l> <Esc>gt

"" Ctrl-a as select all
nnoremap <C-a> <Esc>gg<S-v>G
inoremap <C-a> <C-c>gg<S-v>G
vnoremap <C-a> <Esc>gg<S-v>G

"" Ctrl-c/x as copy/cut in visual mode
vnoremap <C-c> "+y
vnoremap <C-x> "+d

"" Ctrl-p as paste in normal mode; Ctrl-v as paste in insert mode
nnoremap <C-p> "+p
inoremap <C-v> <C-r>+

"" Function keys
nnoremap <F2> :mks! ~/.vim/sessions/session_
nnoremap <F3> :source ~/.vim/sessions/session_
nnoremap <F7> :!ctags -R .


" Plugin related
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
"let g:indent_guides_enable_on_vim_startup=1  " Enable indent guides on vim startup. By default '<leader>ig' can also toggle the plugin
let g:indent_guides_guides_start_level=2      " Start indent guides at 2nd level
let g:indent_guides_guide_size=1              " Width of the guides
