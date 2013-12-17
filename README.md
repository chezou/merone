# Merone

Merone is a demo application for classification with ActiveRecord using [baby_face](https://github.com/yoshiori/baby_face).

# Requirements
- Ruby 2.0
- Rails 4

# Usage

```
$ git clone https://github.com/chezou/merone
$ cd merone
$ bundle install
$ bundle exec rake db:migrate
```

Get example data for [neconeco_gen](https://github.com/nagadomi/nekoneko_gen). These data are comments about several games talked on 2ch.

```
$ mkdir data
$ cd data
$ wget -i http://www.udp.jp/misc/2ch_data/
$ cd ..
```

Insert and learn data.

```
$ bundle exec bin/rails runner -e development Tasks::CreateBatch.execute
```

Then start application

```
$ bundle exec rails s
```

# License
[MIT](http://chezou.mit-license.org/) Lisence
