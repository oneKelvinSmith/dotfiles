if test ! $(which nvim); then
    echo "Please install neovim."
    exit 1
fi

if test ! -e $HOME/.config/nvim/autoload/plug.vim; then
    curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

