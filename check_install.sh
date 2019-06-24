echo -e '\e[33m
==============================
install checking!
==============================
'
which pt-query-digest > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m pt-query-digest ok'
else
  echo -e "\e[31m pt-query-digest notinstalled!"
fi

which alp > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m alp ok'
else
  echo -e "\e[31m alp notinstalled!"
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

which htop > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo -e '\e[32m htop ok'
else
  echo -e "\e[31m htop notinstalled!"
fi

echo 'finish'
