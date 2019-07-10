# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# cent os version
# sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# sudo yum install -y neovim python{2,3}-neovim

sudo mkdir ~/.config
cp -r ~/isucon_secret_sauce/dotfiles/nvim ~/.config/nvim
