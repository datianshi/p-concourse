#!/bin/sh

set -e -x

PRODUCT=$PWD/product

export GEM_HOME=$HOME/.gems
export PATH=$GEM_HOME/bin:$PATH

cd p-concourse

gem install bundler --no-rdoc --no-ri

bundle install

echo "Building product..."
bundle exec hangar \
  --product-name p-concourse \
  --product-version $(cat ../version/number) \
  --release-dir ../final-release \
  --release-dir ../garden-linux-release \
  --metadata-template metadata/metadata.yml.erb

file *.pivotal

mv *.pivotal $PRODUCT
