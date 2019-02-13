# Install zsh
sudo apt-get install zsh

# Install apl
echo 'Install alp'
wget https://github.com/tkuchiki/alp/releases/download/v0.0.4/alp_linux_amd64.zip
sudo apt install unzip
unzip alp_linux_amd64.zip
sudo mv alp_linux_amd64 alp
sudo mv alp /usr/local/bin/alp
# パスの通っているディレクトリにalpをインストール
sudo chown root:root /usr/local/bin/alp

# Install neovim
echo 'Install neovim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install pt-query-digest
wget https://github.com/percona/percona-toolkit/archive/3.0.5-test.tar.gz
tar zxvf 3.0.5-test.tar.gz
./percona-toolkit-3.0.5-test/bin/pt-query-digest --version
