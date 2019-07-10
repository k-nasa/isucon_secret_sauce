printf "\e[33m
==============================
install checking!
==============================
"

checking() {
  which $1 > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    printf "\e[32m ok $1 \e[m\n"
  else
    printf "\e[31m notinstalled $1 \e[m \n"
  fi
}

checking pt-query-digest
checking alp
checking netdata
checking zsh
checking nvim
checking htop
