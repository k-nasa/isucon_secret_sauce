# setup shell
echo "setup dev tools"
./shell_nvim_setup.sh

# Install pt-query-digest
echo "install pt-query-digest"
./pt_query_digest_setup.sh

echo "install alp"
./alp_setup.sh

# Install redis
echo "install redis server"
sudo apt-get install redis-server

# Install netdata
echo "install netdata"
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
sudo systemctl restart netdata
