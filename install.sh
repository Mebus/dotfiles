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

linkit vimrc
linkit zshrc
linkit tmux.conf

# install vim pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install color scheme

git clone https://github.com/nanotech/jellybeans.vim ~/.vim/bundle/jellybeans.vim
