# git submodules
git submodule init
git submodule update

# link zsh 
ln -sf $1/.dotfiles/zsh ~/.zsh
ln -sf $1/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf $1/.dotfiles/zsh/zshenv ~/.zshenv
ln -sf $1/.dotfiles/zsh/zprofile ~/.zprofile

# link ssh 
ln -sf $1/.dotfiles/ssh/config ~/.ssh/config

# link vim 
ln -sf $1/.dotfiles/vim ~/.vim
ln -sf $1/.dotfiles/vim/vimrc ~/.vimrc
ln -sf $1/.dotfiles/vim/gvimrc ~/.gvimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -sf $1/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf $1/.dotfiles/bash/bashrc ~/.bashrc
ln -sf $1/.dotfiles/bash/bash_aliases ~/.bash_aliases
ln -sf $1/.dotfiles/bash/bash_history ~/.bash_history

# link git
ln -sf $1/.dotfiles/git/gitconfig ~/.gitconfig
ln -sf $1/.dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# link tmux
ln -sf $1/.dotfiles/tmux/tmux.conf ~/.tmux.conf


