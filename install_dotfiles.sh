

git submodule update --recursive

sudo apt-get install vim -y

mkdir -p $HOME/tmp
mkdir -p $HOME/tmp/vim
mkdir -p $HOME/tmp/vim/swap
mkdir -p $HOME/tmp/vim/backup

files="aliases bashrc vimrc tmux.conf"

mkdir -p $HOME/dotfiles_bak

for file in $files; do
	echo "backing up $file"
	mv $HOME/.$file $HOME/dotfiles_bak
	echo "linking $(pwd) to $HOME/.$file"
	ln -s $(pwd)/$file $HOME/.$file
done

source $HOME/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "Installing vim plugins"
vim +PluginInstall +qall


# oh-my-zsh
if [ $(echo $SHELL) -eq /bin/bash ]
then
	sudo apt-get install zsh -y
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	chsh -s $(which zsh)
fi

source $(pwd)/antigen/antigen.zsh
