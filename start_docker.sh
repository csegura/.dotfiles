# git submodules
git submodule init
git submodule update

# link zsh 
ln -s $1/.dotfiles/zsh ~/.zsh
ln -s $1/.dotfiles/zsh/zshrc ~/.zshrc
ln -s $1/.dotfiles/zsh/zshenv ~/.zshenv
ln -s $1/.dotfiles/zsh/zprofile ~/.zprofile

# link ssh 
ln -s $1/.dotfiles/ssh/config ~/.ssh/config

# link vim 
ln -s $1/.dotfiles/vim ~/.vim
ln -s $1/.dotfiles/vim/vimrc ~/.vimrc
ln -s $1/.dotfiles/vim/gvimrc ~/.gvimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -s $1/.dotfiles/bash/bash_profile ~/.bash_profile
ln -s $1/.dotfiles/bash/bashrc ~/.bashrc
ln -s $1/.dotfiles/bash/bash_aliases ~/.bash_aliases
ln -s $1/.dotfiles/bash/bash_history ~/.bash_history

# link git
ln -s $1/.dotfiles/git/gitconfig ~/.gitconfig
ln -s $1/.dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# link tmux
ln -s $1/.dotfiles/tmux/tmux.conf ~/.tmux.conf


