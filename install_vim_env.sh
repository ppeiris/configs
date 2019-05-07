set e
umask 0027

# install vim pathegeni
VIM_DIR=~/.vim
VIMRC=~/.vimrc
VIMRC_BACKUP=~/.vimrc.backup
AUTOLOAD_DIR=$VIM_DIR/autoload
BUNDLE_DIR=$VIM_DIR/bundle
VIM_PATHEGON_DIR=$AUTOLOAD_DIR/vim-pathegon

if ! [[ -d "$AUTOLOAD_DIR"  ]]; then
    if ! mkdir -p "$AUTOLOAD_DIR"; then
        echo  "Failed to create $AUTOLOAD_DIR directory."
        exit 1
    fi
fi


if ! [[ -d "$BUNDLE_DIR"  ]]; then
    if ! mkdir -p "$BUNDLE_DIR"; then
        echo  "Failed to create $BUNDLE_DIR directory."
        exit 1
    fi
fi


if ! [[ -d "$VIM_PATHEGON_DIR"  ]]; then
    if ! mkdir -p "$VIM_PATHEGON_DIR"; then
        echo  "Failed to create $VIM_PATHEGON_DIR directory."
        exit 1
    fi
fi

# clone pathegen repository
echo "Clone pathegon repo"
echo "==============================================================="
rm -rf $VIM_PATHEGON_DIR
git clone https://github.com/tpope/vim-pathogen.git $VIM_PATHEGON_DIR


echo "Clone vim-airline"
VIM_AIRLINE_DIR=$BUNDLE_DIR/vim-airline
rm -rf $VIM_AIRLINE_DIR
git clone https://github.com/vim-airline/vim-airline $VIM_AIRLINE_DIR
rm -rf $BUNDLE_DIR/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes $BUNDLE_DIR/vim-airline-themes


# EasyMotion
rm -rf ~/.vim/bundle/vim-easymotion
git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion


# install my vimrc file
if [ -s $VIMRC ]; then
    echo "Backing up .vimrc file"
    cp $VIMRC $VIMRC_BACKUP
fi

# clone the repo to tmp
git clone https://github.com/ppeiris/configs.git /tmp/ppeiris_config
mv /tmp/ppeiris_config/.vimrc $VIMRC
rm -rf /tmp/ppeiris_config


