# git submodules
git submodule init
git submodule update

SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname "$SCRIPT_PATH"`
echo "path: $SCRIPT_DIR"

# link zsh 
ln -sf $SCRIPT_DIR/.dotfiles/zsh ~/.zsh
ln -sf $SCRIPT_DIR/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf $SCRIPT_DIR/.dotfiles/zsh/zshenv ~/.zshenv
ln -sf $SCRIPT_DIR/.dotfiles/zsh/zprofile ~/.zprofile

# link ssh 
ln -sf $SCRIPT_DIR/.dotfiles/ssh/config ~/.ssh/config

# link vim 
ln -sf $SCRIPT_DIR/.dotfiles/vim ~/.vim
ln -sf $SCRIPT_DIR/.dotfiles/vim/vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/.dotfiles/vim/gvimrc ~/.gvimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -sf $SCRIPT_DIR/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf $SCRIPT_DIR/.dotfiles/bash/bashrc ~/.bashrc
ln -sf $SCRIPT_DIR/.dotfiles/bash/bash_aliases ~/.bash_aliases
ln -sf $SCRIPT_DIR/.dotfiles/bash/bash_history ~/.bash_history

# link git
ln -sf $SCRIPT_DIR/.dotfiles/git/gitconfig ~/.gitconfig
ln -sf $SCRIPT_DIR/.dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# link tmux
ln -sf $SCRIPT_DIR/.dotfiles/tmux/tmux.conf ~/.tmux.conf


