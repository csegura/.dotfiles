# git submodules
git submodule init
git submodule update

path = $(pwd)
echo "path: $path"

# link zsh 
ln -sf $path/.dotfiles/zsh ~/.zsh
ln -sf $path/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf $path/.dotfiles/zsh/zshenv ~/.zshenv
ln -sf $path/.dotfiles/zsh/zprofile ~/.zprofile

# link ssh 
ln -sf $path/.dotfiles/ssh/config ~/.ssh/config

# link vim 
ln -sf $path/.dotfiles/vim ~/.vim
ln -sf $path/.dotfiles/vim/vimrc ~/.vimrc
ln -sf $path/.dotfiles/vim/gvimrc ~/.gvimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -sf $path/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf $path/.dotfiles/bash/bashrc ~/.bashrc
ln -sf $path/.dotfiles/bash/bash_aliases ~/.bash_aliases
ln -sf $path/.dotfiles/bash/bash_history ~/.bash_history

# link git
ln -sf $path/.dotfiles/git/gitconfig ~/.gitconfig
ln -sf $path/.dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# link tmux
ln -sf $path/.dotfiles/tmux/tmux.conf ~/.tmux.conf


