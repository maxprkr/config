set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

"enable syntax highlighting
syntax enable
" show line numbers
set number
" set tab = 4 spaces
set ts=4
set expandtab
set autoindent
" >> or << commands shift lines by 4 spaces
set shiftwidth=4
set cursorline
" show matching pair of [] {} ()
set showmatch
" Python syntax hihglighting
let python_hightlight_all = 1


""nnoremap <C-J> <C-W><C-J>
""nnoremap <C-K> <C-W><C-K>
""nnoremap <C-L> <C-W><C-L>
""nnoremap <C-H> <C-W><C-H>
""set splitbelow
""set splitright
