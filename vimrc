set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Let Vundle manage itself. 
Plugin 'VundleVim/Vundle.vim'

" Plugins
"Plugin 'Valloric/YouCompleteMe' "DOES NOT WORK
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'

"LaTeX
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()

filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" Show line number
set ruler

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

"highlight all characters past 99 columns
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%99v.*/
"augroup END

" Enable Colorcolumn
set colorcolumn=99

"Full stack developement Standard
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 | 
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"Flagging unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"UTF8 Support
set encoding=utf-8

"Autocomplete customizations
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"prettier code
"let python_highlight_all=1 "Highlights with red the not needed spaces
syntax on
set nu "Line numbering

"NERDTree 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"type 'NERDTreeToggle' or 'NERDTreeTabsToggle' to manually open it 

"LATEX
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
