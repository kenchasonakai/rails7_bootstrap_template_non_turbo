# README
Topページ変えたり、新しいページ作って使用してください
Turboを使用せず`@rails/ujs`を使用しているのでRails6系以前と同じような感覚で使えると思います

<img width="1440" alt="eaef1887b90c8a445e3dff25f8d9c7d6" src="https://github.com/kenchasonakai/rails7_bootstrap_template/assets/67856090/f5ccf387-8225-4c66-87b5-f0b7fd7e6ed2">

## Ruby
3.2.2

## Node
19.9.0

## Turbo
false

## データベース
MySQL5.7

## JS
esbuild

## CSS
Sass & Bootstrap5

## Dockerでの環境構築方法

```
docker compose run --rm web bin/rails db:create
dc run --rm web yarn build
dc run --rm web yarn build:css
docker compose up
```

## ローカルでの環境構築方法
1. RubyとNodeのバージョンを合わせてください
2. config/database.ymlを自分の環境に合わせて修正してください
3. あとはいつもと同じように使えると思います

```
bin/rails db:create
yarn build
yarn build:css
bin/rails s
```
