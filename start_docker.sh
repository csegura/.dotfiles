# git submodules
git submodule init
git submodule update

SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname "$SCRIPT_PATH"`
echo "path: $SCRIPT_DIR"

# link zsh 
ln -sf $SCRIPT_DIR/zsh ~/.zsh
ln -sf $SCRIPT_DIR/zsh/zshrc ~/.zshrc
ln -sf $SCRIPT_DIR/zsh/zshenv ~/.zshenv
ln -sf $SCRIPT_DIR/zsh/zprofile ~/.zprofile

# link ssh 
ln -sf $SCRIPT_DIR/ssh/config ~/.ssh/config

# link vim 
ln -sf $SCRIPT_DIR/vim ~/.vim
ln -sf $SCRIPT_DIR/vim/vimrc ~/.vimrc
ln -sf $SCRIPT_DIR/vim/gvimrc ~/.gvimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# inside vim :BundleInstall

# link bash
ln -sf $SCRIPT_DIR/bash/bash_profile ~/.bash_profile
ln -sf $SCRIPT_DIR/bash/bashrc ~/.bashrc
ln -sf $SCRIPT_DIR/bash/bash_aliases ~/.bash_aliases
ln -sf $SCRIPT_DIR/bash/bash_history ~/.bash_history

# link git
ln -sf $SCRIPT_DIR/git/gitconfig ~/.gitconfig
ln -sf $SCRIPT_DIR/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# link tmux
ln -sf $SCRIPT_DIR/tmux/tmux.conf ~/.tmux.conf


