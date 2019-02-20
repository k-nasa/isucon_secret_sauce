# Install zsh
sudo apt-get install zsh

# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

mkdir ~/.config/

cd ~/
git clone https://github.com/k-nasa/dotfile.git

ln -sf ~/dotfile/nvim ~/.config/nvim
ln -sf ~/dotfile/.zprofile ~/

chsh /usr/bin/zsh

source ~/.zprofile
