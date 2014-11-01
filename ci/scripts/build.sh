#!/bin/sh

export GEM_HOME=$HOME/.gems
export PATH=$GEM_HOME/bin:$PATH

cd p-concourse

gem install bundler --no-rdoc --no-ri

ls -la ../vsphere-stemcell
ls -la ../final-release

bundle install
bundle exec hangar \
  --product-name p-concourse \
  --product-version 0.1 \
  --stemcell-dir ../vsphere-stemcell \
  --release-dir ../final-release \
  --metadata-template metadata/metadata.yml.erb
