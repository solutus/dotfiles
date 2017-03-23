# dotfiles

## zsh

    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## ack

    sudo apt-get install ack-grep

## configs

    git clone git://github.com/solutus/dotfiles ~/.dotfiles
    git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle

    mkdir -p ~/bin/

    ln -s ~/.dotfiles/.bashrc ~/.bashrc
    ln -s ~/.dotfiles/.vim ~/.vim
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ln -s ~/.dotfiles/.ackrc ~/.ackrc
    ln -s ~/.dotfiles/.gemrc ~/.gemrc
    ln -s ~/.dotfiles/.gitignore ~/.gitignore
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/tmuxinator.bash ~/bin/tmuxinator.bash

## vim

Launch vim and make

    BundleInstall

Exit and create link to solarized scheme to .vim/colors

    ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/solarized.vim

## reload .bashrc

    . ~/.bashrc

## setup global .gitignore

git config --global core.excludesfile ~/.gitignore
