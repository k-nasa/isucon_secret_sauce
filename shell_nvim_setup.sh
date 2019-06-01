# Install zsh
sudo apt-get install zsh

# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Setup dev tool
echo 'setup dev tool'
mkdir ~/.config/

ln -sf ./dotfile/nvim ~/.config/nvim
ln -sf ./dotfile/.zshrc ~/
ln -sf ./dotfile/.zprofile ~/

chsh -s $(which zsh)

source ~/.zprofile
