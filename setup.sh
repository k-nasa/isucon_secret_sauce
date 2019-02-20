# setup shell
./shell_nvim_setup.sh

# Install pt-query-digest
./pt_query_digest_setup.sh

# Install redis
sudo apt-get install redis-server

# Install netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
echo "sudo systemctl start netdata http://yourIP:19999"

./alp_setup.sh

