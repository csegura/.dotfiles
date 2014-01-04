# link zsh 
ln -s ~/.dotfiles/zsh ~/.zsh
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/zshenv ~/.zshenv
ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile

# link ssh 
ln -s ~/.dotfiles/ssh/config ~/.ssh/config

# link vim 
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bash/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash/bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/bash/bash_history ~/.bash_history

# link git
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# link textmate
ln -s ~/.dotflles/textmate/tm_properties ~/.tm_properties

# link tmux
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf


