# Install zsh
sudo apt-get install zsh

# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# cent os version
# sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# sudo yum install -y neovim python{2,3}-neovim

# Setup dev tool
echo 'setup dev tool'
mkdir ~/.config/

ln -sf ~/isucon_secret_sauce/dotfile/nvim ~/.config/nvim
ln -sf ~/isucon_secret_sauce/dotfile/.zshrc ~/
ln -sf ~/isucon_secret_sauce/dotfile/.zprofile ~/

chsh -s $(which zsh)

source ~/.zprofile
