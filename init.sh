#!/bin/bash
set -e

bundle install
bundle exec rails webpacker:install
bundle exec rails webpacker:install:react
rake db:migrate
