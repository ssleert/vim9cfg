installPlug() {
  cd $HOME/.vim/pack/default/start
  git clone "https://github.com/$1.git"

}

removeFile() {
  cd $HOME/.vim/pack/default/start
  rm -rfv $1
}

rm -rfv ~/.vim
mkdir -p ~/.vim/pack/default/start

cp staff/vimrc ~/.vim/vimrc

source conf/setup.sh
