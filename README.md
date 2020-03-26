# EU4 legacy wiki
PukiWikiで作られてきたレガシーwikiのdockerです。

https://hub.docker.com/repository/docker/gnagaoka/eu4_legacy_wiki

## 環境変数
実行時に下記の環境変数を設定してください

 - SPAM_FILTER_RECAPTCHA_PUBLICKEY
 - SPAM_FILTER_RECAPTCHA_PRIVATEKEY
 - ADMIN_PASS
 
## マウント対象
下記のフォルダをvolumeでマウントしてください。ただしAmazon EFSは速度が出ないため使用しないでください。

 - attach
 - backup
 - cache
 - counter
 - diff
 - wiki

## 環境構築における注意点
 
 実環境はECS上で[nginx-proxy](https://github.com/ceefour/nginx-proxy)を使い、ドメインを振り分けしていますが、提供されているdockerは[こちら](https://github.com/nginx-proxy/nginx-proxy/issues/1004)の理由によりそのままでは失敗します。次を使ってください。
 
 https://hub.docker.com/r/hendy/nginx-proxy
