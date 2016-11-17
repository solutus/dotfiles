# dotfiles

## Setup
    git clone git://github.com/araslanov-e/dotfiles ~/.dotfiles
    sudo apt-get install ack-grep
    git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle

    mkdir -p ~/bin/

    ln -s ~/.dotfiles/.bashrc ~/.bashrc
    ln -s ~/.dotfiles/.vim ~/.vim
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ln -s ~/.dotfiles/.ackrc ~/.ackrc
    ln -s ~/.dotfiles/.gemrc ~/.gemrc
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/tmuxinator.bash ~/bin/tmuxinator.bash

    mv ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/

## Vim

Launch vim and make

    BundleInstall

Exit and copy solarized scheme to .vim/colors

    mv ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/

## Reload .bashrc

    . ~/.bashrc
