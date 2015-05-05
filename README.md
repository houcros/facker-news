# Facker News

A simple ruby app inspired by *Haker News*.

## Developed By

+ Ignacio Lucero Ascencio
+ Marc Garnica Caparrós
+ Pol Verdaguer Grau
+ Zhouyang Xue

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ rake db:create db:migrate
$ foreman start web
```

Faker News should now be running on [localhost:5000](http://localhost:5000/).

## IMPORTANT NOTICE

To make GoogleAuth work (and probably not only that), please create/update your *config/secrets.yml* so that it looks like:

```
development:
  secret_key_base: 'your heroku development key'

test:
  secret_key_base: 'your heroky test key'

production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>

  GOOGLE_KEY = 'your google auth key'
  GOOGLE_SECRET = 'your google auth secret'
```

