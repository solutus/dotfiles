# dotfiles

## Zsh

    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Ack

    sudo apt-get install ack-grep

## configs

    git clone git://github.com/araslanov-e/dotfiles ~/.dotfiles
    git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle

    mkdir -p ~/bin/

    ln -s ~/.dotfiles/.bashrc ~/.bashrc
    ln -s ~/.dotfiles/.vim ~/.vim
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ln -s ~/.dotfiles/.ackrc ~/.ackrc
    ln -s ~/.dotfiles/.gemrc ~/.gemrc
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/tmuxinator.bash ~/bin/tmuxinator.bash

## Vim

Launch vim and make

    BundleInstall

Exit and copy solarized scheme to .vim/colors

    cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/

## Reload .bashrc

    . ~/.bashrc
