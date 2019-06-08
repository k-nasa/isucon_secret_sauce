# Install pt-query-digest
wget https://github.com/percona/percona-toolkit/archive/3.0.5-test.tar.gz
tar zxvf 3.0.5-test.tar.gz
./percona-toolkit-3.0.5-test/bin/pt-query-digest --version

# パスの通っているディレクトリに移動
sudo mv ./percona-toolkit-3.0.5-test/bin/pt-query-digest /usr/local/bin/pt-query-digest

pt-query-digest --version && echo 'success install pt-query-digest'
