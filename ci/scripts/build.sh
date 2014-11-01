#!/bin/sh

export GEM_HOME=$HOME/.gems
export PATH=$GEM_HOME/bin:$PATH

cd p-concourse

gem install bundler --no-rdoc --no-ri

bundle install
bundle exec hangar --help
