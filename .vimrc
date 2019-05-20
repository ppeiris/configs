filetype indent on
filetype plugin on
syntax on
set nu
set wildmenu
set showcmd
set showmatch
set rnu
set t_Co=256
execute pathogen#infect()
set laststatus=2
set hlsearch
set colorcolumn=79
set tags=tags
set cursorline
autocmd InsertEnter,InsertLeave * set cul!
" Colors theme

let g:solarized_termcolors=256
"set background=light 
set background=dark 
"colorscheme solarized
colorscheme monokai

