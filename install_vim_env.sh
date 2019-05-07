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



if [ -s $VIMRC ]; then
    echo "Backing up .vimrc file"
    mv $VIMRC $VIMRC_BACKUP
fi





