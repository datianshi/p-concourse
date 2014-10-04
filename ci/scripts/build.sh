#!/bin/sh

export GEM_HOME=$HOME/.gems

cd p-concourse

bundle install
bundle exec hangar --help
