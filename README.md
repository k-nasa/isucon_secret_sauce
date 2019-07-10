## Install

```
git clone https://github.com/k-nasa/isucon_secret_sauce.git
chmod -R +x  ./isucon_secret_sauce/
cd isucon_secret_sauce

# apt-getを使用してる箇所があるので適宜yumなどに変更する
./setup.sh
```

## Tools

何が install されるのか？

| tool            |                        |
| --------------- | ---------------------- |
| zsh             | お気に入りのシェル     |
| neovim          | エディタ入れとく       |
| alp             | web サーバーのログ集計 |
| pt-query-digest | slow query 解析        |
| htop            | グラフィカルな top     |

### alp

alp は web サーバーのログプロファイラーです。

https://github.com/tkuchiki/alp

こんな感じの設定を nginx.conf に記述してください

nginx 以外は公式 README を見る

```nginx.conf
Nginx
log_format ltsv "time:$time_local"
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

access_log /var/log/nginx/access.log ltsv;'
```

コマンド例です。
/user/:id のような path のときは aggregates "/user" or "/user\d+"とすると aggregates できます。
結果を除外したいときは excludes "/user"とすればいいです。

```
# avgでソートして出力してる
alp -f /var/log/nginx/access.log --aggregates "" --excludes "" --avg
```

### pt-query-digest

slow log profile

まずは mysql, mariadb のスローログ出力を ON にしよう

```my.conf
[mysqld]
slow_query_log = 1
slow_query_log_file = /var/log/mysql/slow.log
long_query_time = 0
```

確認はこれ
ON になってたら OK！

```
show variables like 'slow%';
```

あとは実行させるだけ！

```
sudo pt-query-digest /var/log/mysql/slow.log
```
