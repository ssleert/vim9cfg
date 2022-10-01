source src/utils.sh

main() {
  # remove vim conf
  removeVimConf
  
  # check vim startup time
  checkVimStartuptime defaulttime.log
  
  # install config
  staffWork
  
  # start user plugins installation
  source conf/setup.sh
}

main $@
