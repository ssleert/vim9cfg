installPlug() {
  cd $HOME/.vim/pack/default/start
  git clone --quiet "https://github.com/$1.git"
  echo "installed "$1
}

removeFile() {
  cd $HOME/.vim/pack/default/start
  rm -rf $1
}

rm -rf ~/.vim
mkdir -p ~/.vim/pack/default/start

cp staff/vimrc ~/.vim/vimrc

source conf/setup.sh
