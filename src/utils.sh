removeVimConf() {
  if [[ -e $HOME/.vimrc ]]; then
    rm -f ~/.vimrc
    echo "[ removed $HOME/.vimrc ]"
  fi

  if [[ -d $HOME/.vim ]]; then
    rm -rf ~/.vim/
    echo "[ removed $HOME/.vim/ ]"
  fi
}

staffWork() {
  mkdir -p $HOME/.vim/pack/default/start/
  cp staff/* $HOME/.vim/
  echo "[ copied staff/vimrc in $HOME/.vim/vimrc ]"
}

checkVimStartuptime() {
  if [[ -e times/$1 ]]; then
    rm times/$1
  fi
  echo "[ default vim startuptime ]" > times/$1
  vim --startuptime times/$1 -c "q"
  echo "[ startuptime checked ]"
}


# plugin managment
installPlug() {
  cd $HOME/.vim/pack/default/start
  git clone --quiet "https://github.com/$1.git"
  echo "[ installed $1 ]"
}

removeFile() {
  if [[ -d $1 ]]; then
    rm -r /home/ssleert/.vim/pack/default/start/$1
  fi
}
