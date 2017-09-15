#!/bin/bash

OUTPUT=$(which vim)

if [ "$OUTPUT" == "" ]; then
    apt-get install vim
fi

curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh;

apt-vim init;
apt-vim install -y https://github.com/scrooloose/nerdtree.git;
apt-vim install -y https://github.com/vim-airline/vim-airline.git; 
apt-vim install -y https://github.com/tpope/vim-fugitive.git;

wget https://github.com/encody/vim-colors/archive/master.zip;
unzip master.zip; mv vim-colors-master/colors ~/.vim/;
rm -r vim-colors-master; rm master.zip;
