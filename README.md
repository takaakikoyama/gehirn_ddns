# Gehirn DDNS
Gehirn DNS Records Updater

[Gehirn DNS](https://www.gehirn.jp/gis/dns.html)のAPIを利用して動的IP環境下のサーバのDDNSとして運用するための個人プログラム

## できること(現時点)
・既存ゾーンのレコードの編集
・既存ゾーンのレコードの追加

## setup
```
$ git clone https://github.com/takaakikoyama/gehirn_ddns
$ cd gehirn_ddns
$ rbenv install 2.4.0
$ rbenv local 2.4.0
$ rbenv exec gem install bundle
$ bundle install --path=vendor/bundle
$ cp config/config.yml.defaul config/config.yml
```

DNSレコードの設定
```
$ vim config/config.yml
```

実行
```
$ ruby bin/gehirn_ddns
```


wheneverの設定
```
$ vim config/shedule.yml
$ bundle exec whenever --update-crontab
```

## Gehirn DNS API DOC
https://support.gehirn.jp/apidocs/gis/dns/index.html