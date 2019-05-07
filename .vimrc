
execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim_runtime
set nu
set wildmenu
set showcmd


let g:ctrlp_match_window = 'bottom,order:ttb'

let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'






filetype indent on

set showmatch
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry