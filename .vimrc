set nocompatible
filetype off
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
""Plugin 'gmarik/vundle'
Plugin 'Buffergator'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
call vundle#end()

let mapleader=","
set mouse=a
set timeout timeoutlen=1500
set encoding=utf-8
filetype plugin on
filetype plugin indent on

let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
syntax on

" Now we can turn our filetype functionality back on

"enable syntax highlighting
syntax enable

set number
set wildmenu

"au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix


" >> or << commands shift lines by 4 spaces
set shiftwidth=4
""set cursorline
" show matching pair of [] {} ()
set showmatch
" Python syntax hihglighting
let python_hightlight_all = 1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>i

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"      execfile(activate_this, dict(__file__=activate_this))
"      EOF

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
""set foldlevel=1
set clipboard=unnamendplus
set paste

" Enable folding with the spacebar
nnoremap <space> za
map <F2> : echo 'Time is:' . strftime('%c')<CR>
map <F3> : help <CR>


" Make shift-insert work like in Xterm
""map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


