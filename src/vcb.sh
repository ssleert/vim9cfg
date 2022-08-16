installPlug() {
  cd $HOME/.vim/pack/default/start
  /usr/bin/git clone --quiet "https://github.com/$1.git"
  /usr/bin/echo "installed "$1
}

removeFile() {
  cd $HOME/.vim/pack/default/start
  /usr/bin/rm -rf $1
}

/usr/bin/rm -rf ~/.vim
/usr/bin/mkdir -p ~/.vim/pack/default/start

/usr/bin/cp staff/vimrc ~/.vim/vimrc

source conf/setup.sh
