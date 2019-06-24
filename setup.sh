# Install pt-query-digest
echo "install pt-query-digest"
./pt_query_digest_setup.sh

echo "install alp"
./alp_setup.sh

# Install netdata
echo "install netdata"
bash <(curl -Ss https://my-netdata.io/kickstart.sh)

# この２つはapt-getを使ってる
echo 'install tools'
./setup_nvim.sh
./setup_zsh.sh
