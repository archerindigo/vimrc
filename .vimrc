""""""""""""""""""""""""""""""""""""""
" Author: archerindigo
" GitLab (Main): https://gitlab.com/archerindigo/vimrc
" GitHub (Mirror): https://github.com/archerindigo/vimrc
" License: MIT
"
" Last Update: 2019-03-26
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
"set incsearch                  " Instantly search while typing
set ignorecase                  " Case-insensitive search
set smartcase                   " Switch to case-sensitive search when keywords contain uppercase
set wildmenu                    " Enable wildmenu while entering tab in command mode
set wildmode=list:longest,full  " Allow full list and auto-completion in wildmenu

"""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle', 'tag': '5.0.0' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.4' }
Plug 'gregsexton/gitv', {'on': ['Gitv'], 'tag': 'v1.3.1' }
Plug 'majutsushi/tagbar', {'on':['TagbarToggle'], 'tag': 'v2.7' }
Plug 'nathanaelkane/vim-indent-guides', { 'tag': '1.6' }
call plug#end()

"""""""""""""""""""""""""""""
" Theme and specific settings 
" for vim and gvim
"""""""""""""""""""""""""""""
set background=dark
if !has('gui_running')
    set t_Co=256
    colors wombat256i           " Default colorscheme for console vim
else
    colors wombat256            " Default colorscheme for gvim
    "set guifont=Source\ Code\ Pro\ 10		" Recommended font
    set guioptions-=r           " Remove right-hand scroll bar
    set guioptions-=L           " Remove left-hand scroll bar
    "set guioptions-=T          " Remove toolbar
    "set guioptions-=m          " Remove menu bar
    set guioptions+=a           " Enable copy-on-select
endif

" lightline specific settings
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set noshowmode

"""""""""""""""""""""""""""""
" Key remap
"""""""""""""""""""""""""""""
" Non-plugin related
nnoremap <C-Up> <Esc>gT
nnoremap <C-Down> <Esc>gt
nnoremap <F2> :mks! ~/.vim/sessions/session_
nnoremap <F3> :source ~/.vim/sessions/session_
nnoremap <F7> :!ctags -R .
vnoremap <C-c> "+y
vnoremap <C-x> "+d
nnoremap <C-p> "+p
inoremap <C-v> <C-r>+

" Plugin related
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
"let g:indent_guides_enable_on_vim_startup=1  " Enable indent guides on vim startup. By default '<leader>ig' can also toggle the plugin
let g:indent_guides_guides_start_level=2      " Start indent guides at 2nd level
let g:indent_guides_guide_size=1              " Width of the guides
