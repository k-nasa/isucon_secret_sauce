# Install zsh
sudo apt-get install zsh

# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install pt-query-digest
wget https://github.com/percona/percona-toolkit/archive/3.0.5-test.tar.gz
tar zxvf 3.0.5-test.tar.gz
./percona-toolkit-3.0.5-test/bin/pt-query-digest --version
sudo mv ./percona-toolkit-3.0.5-test/bin/pt-query-digest /usr/local/bin/pt-query-digest
sudo chown root:root /usr/local/bin/pt-query-digest

./alp_setup.sh
