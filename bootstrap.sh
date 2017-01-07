#!/usr/bin/env bash


for i in $(ls /vagrant/packages); do
  sudo rpm --nosignature -i "/vagrant/packages/$i";
done

cat >> /etc/hosts <<EOL
# vagrant environment nodes
11.0.0.11 mongo1
11.0.0.12 mongo2
11.0.0.13 mongo3
EOL