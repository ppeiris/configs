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

" pymode quickfix window height.
let g:pymode_quickfix_minheight = 0
let g:pymode_quickfix_maxheight = 0
let g:pymode_warnings = 0




" highlight CursorLineNR ctermbg=red

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END


" NerdTree toggle 

nmap <F6> :NERDTreeToggle<CR>
