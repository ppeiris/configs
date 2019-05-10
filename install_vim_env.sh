set e
umask 0027

# install vim pathegeni
VIM_DIR=~/.vim
VIMRC=~/.vimrc
VIMRC_BACKUP=~/.vimrc.backup
AUTOLOAD_DIR=$VIM_DIR/autoload
BUNDLE_DIR=$VIM_DIR/bundle
VIM_PATHEGON_DIR=$AUTOLOAD_DIR/vim-pathegon
mkdir -rf $VIM_DIR
mkdir -p $VIM_DIR

rm -rf $AUTOLOAD_DIR
mkdir -p $AUTOLOAD_DIR

rm -rf $BUNDLE_DIR
mkdir -p $BUNDLE_DIR

curl -LSso $AUTOLOAD_DIR/pathogen.vim https://tpo.pe/pathogen.vim



echo "Clone vim-airline"
VIM_AIRLINE_DIR=$BUNDLE_DIR/vim-airline
rm -rf $VIM_AIRLINE_DIR
git clone https://github.com/vim-airline/vim-airline $VIM_AIRLINE_DIR
rm -rf $BUNDLE_DIR/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes $BUNDLE_DIR/vim-airline-themes


# EasyMotion
rm -rf ~/.vim/bundle/vim-easymotion
git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion


# CtlP 
git clone https://github.com/kien/ctrlp.vim.git $BUNDLE_DIR/ctrlp.vim

# NerdTree
git clone https://github.com/scrooloose/nerdtree.git $BUNDLE_DIR/nerdtree

# show buffer
git clone https://github.com/bling/vim-bufferline ~/.vim/bundle/vim-bufferline

# git stuff
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
vim -u NONE -c "helptags ~/.vim/bundle/vim-fugitive/doc" -c q


git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
 

# git clone git://github.com/shawncplus/phpcomplete.vim.git ~/.vim/bundle/phpcomplete.vim



https://github.com/terryma/vim-multiple-cursors.git ~/.vim/bundle/vim-multiple-cursors.



# install my vimrc file
if [ -s $VIMRC ]; then
    echo "Backing up .vimrc file"
    cp $VIMRC $VIMRC_BACKUP
fi

# clone the repo to tmp
git clone https://github.com/ppeiris/configs.git /tmp/ppeiris_config
mv /tmp/ppeiris_config/.vimrc $VIMRC
rm -rf /tmp/ppeiris_config


