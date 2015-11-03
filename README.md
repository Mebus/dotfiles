Mebus personal dotfiles
=======================

To use the files for your user, use the following commands:

zsh:

    # IMPORTANT: please note that you might override existing
    # configuration files in the current working directory!
    wget -O ~/.zshrc https://raw.githubusercontent.com/Mebus/dotfiles/master/.zshrc --no-check-certificate

vim A:
    
    run ./install.sh

vim B:

    git clone git://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

