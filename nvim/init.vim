" Plug https://github.com/junegunn/vim-plug
source ~/.config/nvim/vim-plug.vim

" Language and Encoding
set encoding=utf-8
language en_US.UTF-8

" General Settings
filetype plugin on
filetype indent on
syntax on
set number
set showmatch
set backspace=indent,eol,start
set undofile
set undodir=~/.nvim/undodir
set clipboard+=unnamedplus
set cmdheight=1
set updatetime=300
set signcolumn=yes
set mouse=a
set cursorline
set path+=**

" Highlight Searching
set incsearch ignorecase smartcase hlsearch

" Wrap
set wrap linebreak nolist
set textwidth=79
set formatoptions+=l
set whichwrap+=<,>,h,l

" End of line, tabs etc.
set list
set listchars=tab:▶\ ,eol:★
set listchars+=trail:◥
set listchars+=extends:❯
set listchars+=precedes:❮
set fillchars+=vert:│

" Trailing Whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Folding
set foldmethod=indent

" Styling
set termguicolors
colorscheme lucius
set list listchars=trail:»,tab:»-
set fillchars+=vert:\

" Statusbar 
source ~/.config/nvim/airline.vim

" Indentation
source ~/.config/nvim/indent.vim

" NERDTree
source ~/.config/nvim/nerd.vim

" COC
source ~/.config/nvim/coc.vim

" Startify
source ~/.config/nvim/startify.vim

" Tex
source ~/.config/nvim/tex.vim
