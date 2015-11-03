#!/bin/bash


function linkit {
    echo $1 

    if [ -f ~/.$1 ] 

    then

        echo "vimrc Datei existiert bereits"
        echo "Breche ab."

    else

        echo "Installiere..."
        ln -s `pwd`/$1 ~/.$1

    fi

}  

linkit vimrc
linkit zshrc

