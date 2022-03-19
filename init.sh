#!/bin/bash
set -e

bundle install
bundle exec rails webpacker:install
rake db:migrate
