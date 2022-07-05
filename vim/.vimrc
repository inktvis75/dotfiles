" Plugins
" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'yegappan/mru'
Plug 'mhinz/vim-startify'
Plug 'lervag/vimtex'
Plug 'rhysd/vim-grammarous'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'f1se4/presenting_ivim.vim'
call plug#end()

" General Settings
filetype plugin indent on
syntax enable
set hlsearch
set cursorline
set path+=**
set number
set termguicolors
colorscheme desert

" Language and encoding
set encoding=utf-8
language en_US.UTF-8

" Wrap
set wrap linebreak nolist
set textwidth=79
set formatoptions+=l
set whichwrap+=<,>,h,l

" Persistent undo
set undodir=~/.vim/undodir
set undofile

" Trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

source ~/.vim/indent.vim
source ~/.vim/statusline.vim
source ~/.vim/netrw.vim
source ~/.vim/yaml.vim
