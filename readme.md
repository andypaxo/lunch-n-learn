# Lunch n learn 20 Nov 2012

## Pre-lunch:

* Install ruby 1.9
* Sign up for heroku, download toolbelt

## Lesson setup:

    $ heroku login
    $ gem install bundler

* Create repo on github with ruby ignore file & checkout

## Lesson body:

* Get RSpec through bundler (Gemfile, Gemfile.lock)
* Add some specs and a file to spec (scoreboard.rb, scoreboard_spec.rb)
* Run RSpec (or create script, remember to chmod u+x) use `$ bundle exec rspec spec/`
* TDD it out
* Add sinatra (web.rb, Gemfile, Procfile)
* Run with foreman
* Add query / view
* Introduce haml

## Lesson conclusion:

    $ heroku create
    $ git push heroku (lesson:master)
    $ heroku keys:add (if needed)

## Reference:

https://devcenter.heroku.com/articles/ruby