# Setup dev tool
# Install zsh
sudo apt-get install zsh || echo 'failed install zsh'
# sudo yum install zsh || echo 'failed install zsh'

echo 'setup dev tool'
mkdir ~/.config/
cp ~/isucon_secret_sauce/dotfile/.zshrc ~/
cp ~/isucon_secret_sauce/dotfile/.zprofile ~/

chsh -s $(which zsh)

source ~/.zprofile
source ~/.zshrc
