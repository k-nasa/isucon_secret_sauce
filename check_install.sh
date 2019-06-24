echo -e '\e[33m
==============================
install checking!
==============================
'
which pt-query-digest > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32mpt-query-digest ok'
else
  echo -e "\e[31mpt-query-digest notinstalled!"
fi

which alp > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32malp ok'
else
  echo -e "\e[31malp notinstalled!"
fi

which netdata > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m netdata ok'
else
  echo -e "\e[31m netdata notinstalled!"
fi

which zsh > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m zsh ok'
else
  echo -e "\e[31m zsh notinstalled!"
fi

which nvim > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m neovim ok'
else
  echo -e "\e[31m neovim notinstalled!"
fi
