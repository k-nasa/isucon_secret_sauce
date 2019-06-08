# Install apl
echo -e 'e[32mInstall alp'
wget https://github.com/tkuchiki/alp/releases/download/v0.4.0/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp_linux_amd64 alp
sudo mv alp /usr/local/bin/alp

# パスの通っているディレクトリにalpをインストール
sudo chown root:root /usr/local/bin/alp
alp --version && echo "Success Install alp"

sudo touch /etc/nginx/conf.d/log_format.conf
sudo chmod 777 /etc/nginx/conf.d/log_format.conf
sudo echo 'log_format ltsv "time:$time_local"
                "\thost:$remote_addr"
                "\tforwardedfor:$http_x_forwarded_for"
                "\treq:$request"
                "\tstatus:$status"
                "\tmethod:$request_method"
                "\turi:$request_uri"
                "\tsize:$body_bytes_sent"
                "\treferer:$http_referer"
                "\tua:$http_user_agent"
                "\treqtime:$request_time"
                "\tcache:$upstream_http_x_cache"
                "\truntime:$upstream_http_x_runtime"
                "\tapptime:$upstream_response_time"
                "\tvhost:$host";
access_log /var/log/nginx/access.log ltsv;' > /etc/nginx/conf.d/log_format.conf
