#!/bin/bash


function linkit {
    echo $1 

    if [ -f ~/.$1 ] 

    then

        echo $1" Datei existiert bereits"
        echo "Breche ab."

    else

        echo "Installiere..."
        ln -s `pwd`/$1 ~/.$1

    fi

}  

# original path
origpwd=$(pwd)

linkit vimrc
#linkit zshrc
linkit tmux.conf

# install vim pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://codeberg.org/Mebus/vim-pathogen/raw/branch/master/autoload/pathogen.vim

echo "will install oh-my-zsh and configure it"

# Install oh-my-zsh
cd ~
sh -c "$(curl -fsSL https://codeberg.org/Mebus/oh-my-zsh/raw/branch/master/tools/install.sh)"


cd $origpwd
cp honukai.zsh-theme ~/.oh-my-zsh/themes/honukai.zsh-theme
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"honukai\"/g' ~/.zshrc
