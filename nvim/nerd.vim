" Plug https://github.com/junegunn/vim-plug
source ~/.config/nvim/vim-plug.vim

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

" Wrap
set wrap linebreak nolist
set textwidth=79
set formatoptions+=l
set whichwrap+=<,>,h,l

" Folding
set foldmethod=indent 

" Styling
set termguicolors
colorscheme lucius
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
source ~/.config/nvim/airline.vim

" Indentation
source ~/.config/nvim/indent.vim

" NERDTree
let loaded_netrwPlugin = 1
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" COC
source ~/.config/nvim/coc.vim

" Startify
source ~/.config/nvim/startify.vim
