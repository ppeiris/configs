set e
umask 0027

# install vim pathegeni
VIM_DIR=~/.vim
VIMRC=~/.vimrc
TMUX=~/.tmux.conf
VIMRC_BACKUP=~/.vimrc.backup
AUTOLOAD_DIR=$VIM_DIR/autoload
BUNDLE_DIR=$VIM_DIR/bundle
COLORS=$VIM_DIR/colors
VIM_PATHEGON_DIR=$AUTOLOAD_DIR/vim-pathegon

sudo apt-get -y install ctags
# https://vi.stackexchange.com/questions/12827/how-to-install-vim-with-python-support-for-debian-strech
sudo apt -y install vim-nox


sudo apt-get -y install tmux


rm -rf $VIM_DIR
mkdir -p $VIM_DIR
mkdir -p $AUTOLOAD_DIR
mkdir -p $BUNDLE_DIR
mkdir -p $COLORS

# Install package manager
curl -LSso $AUTOLOAD_DIR/pathogen.vim https://tpo.pe/pathogen.vim


# vim-airline
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


# Colors
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

git clone https://github.com/sickill/vim-monokai.git /tmp/vim-monokai
cp /tmp/vim-monokai/colors/monokai.vim ~/.vim/colors/
rm -rf /tmp/vim-monokai

# git clone git://github.com/shawncplus/phpcomplete.vim.git ~/.vim/bundle/phpcomplete.vim

git clone https://github.com/terryma/vim-multiple-cursors.git ~/.vim/bundle/vim-multiple-cursors
vim -u NONE -c "helptags ~/.vim/bundle/vim-multiple-cursors/doc" -c q


#
git clone https://tpope.io/vim/surround.git ~/.vim/bundle/surround
vim -u NONE -c "helptags ~/.vim/bundle/surround/doc" -c q


git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
vim -u NONE -c "helptags ~/.vim/bundle/supertab/doc" -c q




git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
vim -u NONE -c "helptags ~/.vim/bundle/nerdcommenter/doc" -c q

git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
vim -u NONE -c "helptags ~/.vim/bundle/gruvbox/doc" -c q


git clone --recurse-submodules https://github.com/python-mode/python-mode.git ~/.vim/bundle/python-mode
vim -u NONE -c "helptags ~/.vim/bundle/python-mode/doc" -c q


git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
vim -u NONE -c "helptags ~/.vim/bundle/vim-markdown/doc" -c q


git clone git://github.com/mustache/vim-mustache-handlebars.git ~/.vim/bundle/mustache

#git clone --depth 1 https://github.com/zxqfl/tabnine-vim ~/.vim/bundle/tabnine-vim
#vim -u NONE -c "helptags ~/.vim/bundle/tabnine-vim/doc" -c q

#set rtp+=~/tabnine-vim


# install my vimrc file

if [ -s $VIMRC ]; then
    echo "Backing up .vimrc file"
    cp $VIMRC $VIMRC_BACKUP
fi

# clone the repo to tmp
git clone https://github.com/ppeiris/configs.git /tmp/ppeiris_config
mv /tmp/ppeiris_config/.vimrc $VIMRC
mv /tmp/ppeiris_config/.tmux.conf $TMUX
rm -rf /tmp/ppeiris_config


