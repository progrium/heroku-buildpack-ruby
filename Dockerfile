from	ubuntu:12.10
run	apt-get update
run	apt-get install -y curl
run	apt-get install -y git
run	apt-get install -y ruby1.9.1-dev
run	apt-get install -y rubygems
run update-alternatives --set ruby /usr/bin/ruby1.9.1
run update-alternatives --set gem /usr/bin/gem1.9.1
run gem install bundler
add	.	/buildpack
run cd /buildpack && bundle install