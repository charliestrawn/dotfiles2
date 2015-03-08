hash git 2> /dev/null || {
  echo "Installing dotfiles requires git"
  exit
}

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
