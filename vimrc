" required
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Let Vundle manage itself. 
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'indentpython.vim'
"Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline'
Plugin 'lervag/vimtex'

call vundle#end()

" required
filetype plugin indent on


" Split Layouts
" split areas
set splitbelow
set splitright
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code Folding
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" SimplyFold (https://github.com/tmhedberg/simpylfold)
" see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"Indentation
"PEP8 Standard
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=99 |
    \ set formatoptions=cq |
    \ set wrapmargin=0 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
" Indentpython (https://github.com/vim-scripts/indentpython.vim)
"Full stack developement Standard
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 | 
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
" Flagging unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" Auto-Complete
" YouCompleteMe (https://github.com/ycm-core/YouCompleteMe)
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Virtual Environments
" https://github.com/jmcantrell/vim-virtualenv

" Syntax Checking/Highlighting
" Syntastic (https://github.com/vim-syntastic/syntastic)
" Flake8 (https://github.com/nvie/vim-flake8)
let python_highlight_all=1
syntax on

" Color Schemes
" Awesome-vim-colorschemes (https://github.com/rafi/awesome-vim-colorschemes)

" File Browsing
" NERDTree (https://github.com/preservim/nerdtree) 
" Vim-nerdtree-tabs (https://github.com/jistr/vim-nerdtree-tabs)
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"type 'NERDTreeToggle' or 'NERDTreeTabsToggle' to manually open it 

" Super Searching
" ctrlp (https://github.com/ctrlpvim/ctrlp.vim)

" Line Numbering
set nu

" Enable Colorcolumn
set ruler
set colorcolumn=99

" Git Integration
" vim-fugitive (https://github.com/tpope/vim-fugitive)

" Powerline (https://github.com/powerline/powerline)

" System Clipboard
set clipboard=unnamed

" Mac OS backspace
set backspace=indent,eol,start

" VIMTEX (ihttps://github.com/lervag/vimtex)
